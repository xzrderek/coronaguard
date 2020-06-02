package server

import (
	"github.com/gin-gonic/gin"
	"github.com/xzrderek/coronaguard_be/db"
)

func Init() {
	// db
	db.Init()

	r := NewRouter()
	// r.Run(":6969")
	r.Run(":80")
}

func NewRouter() *gin.Engine {
	router := gin.Default()

	// endpoints
	cc := CoronaController{}

	router.GET("/user", cc.GetUser)
	router.GET("/risk", cc.GetRisk)
	router.POST("/user", cc.SetUser)

	return router
}

//func NewRouter() *gin.Engine {
//	router := gin.New()
//
//	// middlewares
//	router.Use(gin.Recovery())
//	router.Use(gin.Logger())
//	router.Use(cors.Default())
//
//	// static files serving
//	//router.Static("/images", "./images")
//
//	// endpoints
//	corona := router.Group("corona")
//	{
//		cc := CoronaController{}
//
//		corona.GET("/user", cc.GetUser)
//		corona.GET("/risk", cc.GetRisk)
//		corona.POST("/user", cc.SetUser)
//	}
//
//	return router
//}