@echo off
netstat -ano | findstr ":5183" | findstr "LISTENING" >nul
if errorlevel 1 (
  cd /d "C:\Users\windows\Document\project-daesun\work-log-daesun"
  start "work-log-server" /min cmd /c "python app.py >> flask.log 2>&1"
  timeout /t 3 /nobreak >nul
)
start "" "C:\Users\windows\Document\project-daesun\work-gallery-daesun\index.html"
