@echo off
title sampctl (BL) - 1.0: by DEntisT
	setlocal enabledelayedexpansion
	mode con cols=90 lines=50
goto entry
:entry
	cls
	echo.
	echo  sampctl (BL)
	echo  -------------
	echo.
	echo 1 - Go to terminal
	echo 2 - Exit
	set /p entrydec="sampctl@entry:"
	if %entrydec% == 1 goto cmd
	exit

:cmd
	set /p sampctl_cmd="sampctl@cmd:"
	if %sampctl_cmd% == sampctl_return goto entry
	call commands\%sampctl_cmd%
goto cmd