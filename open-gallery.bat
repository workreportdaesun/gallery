@echo off
rem 2026-08-13: python -> pythonw(콘솔 없는 파이썬). 예전엔 "work-log-server" 창이 따로 떴다.
rem 로그는 app.py가 직접 flask.log에 쓰므로 여기서 리다이렉트하지 않는다.
netstat -ano | findstr ":5183" | findstr "LISTENING" >nul
if errorlevel 1 (
  cd /d "C:\Users\windows\Document\project-daesun\work-log-daesun"
  start "" /b pythonw.exe app.py
  timeout /t 3 /nobreak >nul
)
start "" "C:\Users\windows\Document\project-daesun\work-gallery-daesun\index.html"
