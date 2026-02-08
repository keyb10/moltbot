Set WshShell = CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop")
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\🤖 Moltbot.lnk")
oShellLink.TargetPath = "C:\Users\User\.gemini\antigravity\scratch\moltbot-setup\check-and-start-moltbot.bat"
oShellLink.WorkingDirectory = "C:\Users\User\.gemini\antigravity\scratch\moltbot-setup"
oShellLink.IconLocation = "%SystemRoot%\System32\shell32.dll,14"
oShellLink.Description = "Verifica e inicia o Moltbot"
oShellLink.Save
WScript.Echo "Atalho criado com sucesso!"
