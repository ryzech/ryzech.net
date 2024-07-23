package handler

import (
	"github.com/labstack/echo/v4"
	"ryzech.net/view/home"
)

func ShowHome(ctx echo.Context) error {
	return render(ctx, home.Home())
}
