@echo off
echo ==========================================
echo   MOLTBOT - OpenClaw Gateway Starter
echo ==========================================
echo.

echo Parando processos antigos...
taskkill /F /IM node.exe 2>nul
timeout /t 2 /nobreak >nul

echo Iniciando OpenClaw Gateway...
start "Moltbot Gateway" cmd /k "openclaw gateway run"

echo.
echo Gateway iniciado em nova janela!
echo Pressione qualquer tecla para verificar status...
pause >nul

openclaw gateway probe

echo.
echo Se o status mostrar "Reachable: no", aguarde mais 10 segundos e tente novamente.
echo.
pause
