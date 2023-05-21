@echo off
setlocal enabledelayedexpansion

set "current_dir=%cd%"

mkdir "NowBetter" 2>nul

for %%F in (*) do (
	set "ext=%%~xF"
	if not "!ext!"=="" (
		if not "!ext!"==".bat" (
			set "ext=!ext:~1!"
			mkdir "NowBetter\!ext!" 2>nul
			move "%%F" "NowBetter\!ext!"
		)
	)
)

cd "%current_dir%"

echo "Done."

pause
