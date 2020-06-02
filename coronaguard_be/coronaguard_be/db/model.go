package db

import "github.com/jinzhu/gorm"

type User struct {
	gorm.Model
	Uid string `gorm:"type:varchar(100);unique_index"`
	Infected bool
}

type Risk struct {
	gorm.Model
	Uid string `gorm:"type:varchar(100);unique_index" json:"uid" bson:"uid"`
	Direct uint32
	Indirect uint32
	Distant uint32
	Risk uint32
}

type Contact struct {
	gorm.Model
	Time uint64
	Uid string
	Peer string
}

// `gorm:"primary_key"`