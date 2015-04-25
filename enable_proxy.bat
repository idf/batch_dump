@echo off
taskkill /f /IM iexplore.exe
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d localhost:3128 /f
start iexplore.exe
timeout 3
taskkill /f /IM iexplore.exe