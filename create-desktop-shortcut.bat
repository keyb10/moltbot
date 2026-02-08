@echo off
echo Criando atalho do Moltbot na Area de Trabalho...
echo.

set "SOURCE=C:\Users\User\.gemini\antigravity\scratch\moltbot-setup\check-and-start-moltbot.bat"
set "DEST=%USERPROFILE%\Desktop\Iniciar Moltbot.bat"

copy "%SOURCE%" "%DEST%"

echo.
echo ✅ Atalho criado na Area de Trabalho!
echo.
echo Local: %DEST%
echo.
pause
