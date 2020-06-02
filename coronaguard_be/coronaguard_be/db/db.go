package db

import (
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/sqlite"
)

var db *gorm.DB

func Init () {
	db, err := gorm.Open("sqlite3", "corona.db")
	if err != nil {
		panic("failed to connect database")
	}

	// Migrate the schema
	db.AutoMigrate(&User{}, &Contact{}, &Risk{})
//	db.CreateTable(&User{}, &Contact{}, &Risk{})
}

func Close() {
	db.Close()
}

func GetUser(uid string) User {
	var user User
	db.Find(&user, "Uid = ?", uid)
	return user
}

func GetRisk(uid string) Risk {
	var risk Risk
	db.Find(&risk, "Uid = ?", uid)
	return risk
}

func SetUser(user User) {
	if !db.NewRecord(user) {
		db.Save(&user)
	}
}

func SetRisk(risk Risk) {
	if !db.NewRecord(risk) {
		db.Save(&risk)
	}
}

func GetDirects(peer string) []Contact {
	var contacts []Contact
	db.Find(&contacts, "peer = ?", peer)
	return contacts
}