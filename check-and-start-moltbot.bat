@echo off
chcp 1252 >nul
echo ==========================================
echo   MOLTBOT - Verificador de Status
echo ==========================================
echo.

echo Verificando se o gateway esta online...
curl -s -o nul -w "%%{http_code}" http://127.0.0.1:18789/ > temp_status.txt 2>nul
set /p STATUS=<temp_status.txt
del temp_status.txt 2>nul

if "%STATUS%"=="200" (
    echo [OK] Gateway ja esta rodando!
    echo.
    openclaw gateway probe
    echo.
    echo Bot esta pronto para uso!
) else (
    echo [AVISO] Gateway nao esta respondendo
    echo.
    echo Iniciando Moltbot...
    echo.
    
    echo Limpando processos antigos...
    taskkill /F /IM node.exe 2>nul
    timeout /t 3 /nobreak >nul
    
    echo Iniciando gateway...
    start "Moltbot Gateway" cmd /k "openclaw gateway run"
    
    echo.
    echo Aguardando inicializacao (10 segundos)...
    timeout /t 10 /nobreak >nul
    
    echo.
    echo Verificando status...
    openclaw gateway probe
    
    echo.
    echo [OK] Gateway iniciado!
    echo Deixe a janela 'Moltbot Gateway' aberta
    echo.
    echo Dica: Minimize a janela do gateway
)

echo.
echo ==========================================
echo Pressione qualquer tecla para sair...
pause >nul
