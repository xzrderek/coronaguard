package server

import (
	"github.com/gin-gonic/gin"
	"github.com/xzrderek/coronaguard_be/db"
	"net/http"
)

type CoronaController struct {}

// url: /user?uid=1234
// return User struct
func (ctl CoronaController) GetUser(c *gin.Context) {
	uid := c.Query("uid")
	user := db.GetUser(uid)
	c.JSON(http.StatusOK, gin.H{
		"uid" : user.Uid,
		"infected" : user.Infected,
	})
}

// url: /risk?uid=1234
// return User struct
func (ctl CoronaController) GetRisk(c *gin.Context) {
	uid := c.Query("uid")
	user := db.GetRisk(uid)
	c.JSON(http.StatusOK, gin.H{
		"uid" : user.Uid,
		"risk" : user.Risk,
		"direct" : user.Direct,
		"indirect" : user.Indirect,
		"distant" : user.Distant,
	})
}

// url: /user?uid=1234&infected=0
// return User struct
func (ctl CoronaController) SetUser(c *gin.Context) {
	uid := c.Query("uid")
	infected := c.DefaultQuery("infected", "0")
	var user = db.User{Uid:uid, Infected:infected == "0"}
	db.SetUser(user)

	// estimate risk
	if infected != "0" {
		go estimateRisk(uid);
	}
}

func estimateRisk(patient string) {
	directs := db.GetDirects(patient)
	for _, direct := range directs {
		// update direct
		risk := db.GetRisk(direct.Uid)
		risk.Direct += 1
		if risk.Risk < 100 {
			risk.Risk += 10
		}
		db.SetRisk(risk)

		// update indirect
		indirects := db.GetDirects(direct.Uid)
		for _, indirect := range indirects {
			risk := db.GetRisk(indirect.Uid)
			risk.Indirect += 1
			if risk.Risk < 100 {
				risk.Risk += 5
			}
			db.SetRisk(risk)
		}

		// update distant, TODO
	}
}