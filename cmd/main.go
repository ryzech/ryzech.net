package main

import (
	"github.com/labstack/echo/v4"
	"os"
	"ryzech.net/handler"
)

func main() {
	app := echo.New()
	app.Static("/static", "static")

	app.GET("/", handler.ShowHome)

	port := os.Getenv("PORT")
	if port == "" {
		port = ":3000"
	}

	app.Logger.Fatal(app.Start(port))
}
