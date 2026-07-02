@echo off
setlocal
set BASE_DIR=%~dp0
set MVN_VERSION=3.9.9
set MVN_BIN=%BASE_DIR%\.mvn\apache-maven-%MVN_VERSION%\bin\mvn.cmd
set ARCHIVE=%BASE_DIR%\.mvn\apache-maven-%MVN_VERSION%-bin.zip
set DIST_URL=https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/%MVN_VERSION%/apache-maven-%MVN_VERSION%-bin.zip

if not exist "%MVN_BIN%" (
  if not exist "%ARCHIVE%" (
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri '%DIST_URL%' -OutFile '%ARCHIVE%'"
  )
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Path '%ARCHIVE%' -DestinationPath '%BASE_DIR%\.mvn' -Force"
)

call "%MVN_BIN%" %*
