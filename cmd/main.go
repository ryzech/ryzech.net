package main

import (
	"os"

	"github.com/labstack/echo/v4"
	"github.com/ryzech/ryzech.net/handler"
)

func main() {
	app := echo.New()
	app.Static("/static", "static")

	app.GET("/", handler.ShowHome)

	port := os.Getenv("PORT")
	if port == "" {
		port = ":3000"
	}

	app.Start(port)
}
