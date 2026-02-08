@echo off
echo ==========================================
echo   MOLTBOT - Iniciador Manual
echo ==========================================
echo.
echo Este script inicia o Moltbot manualmente.
echo DEIXE A JANELA ABERTA apos iniciar!
echo.
pause

echo.
echo Parando processos antigos...
taskkill /F /IM node.exe 2>nul
timeout /t 3 /nobreak >nul

echo.
echo Iniciando Moltbot...
echo (Aguarde, a janela ficara aberta)
echo.

openclaw gateway run

echo.
echo ==========================================
echo Gateway foi fechado!
echo Pressione qualquer tecla para sair...
pause >nul
