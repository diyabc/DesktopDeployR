@echo off

:: generate Renviron file
dist\\R-Portable\\App\\R-Portable\\bin\\Rscript.exe generate_Renviron.R

:: log directory
set timestamp=%date:~6,8%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%

set "LOGDIR=%TEMP%\DIYABC-RF_GUI_%timestamp%_%RANDOM%%RANDOM%"
IF not exist %LOGDIR% (mkdir %LOGDIR%)

:: log file
set "LOGFILE=%LOGDIR%\DIYABC-RF_GUI.log"

:: run app
dist\\R-Portable\\App\\R-Portable\\bin\\Rscript.exe dist\\script\\R\\run.R > %LOGFILE% 2>&1