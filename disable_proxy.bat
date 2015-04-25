@echo off
taskkill /f /IM iexplore.exe
echo Yes | reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
start iexplore.exe
timeout 3
taskkill /f /IM iexplore.exe