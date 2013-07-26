@echo off
set pathname="D:\Postgres\bin"

set d= %Date%
set a1=%d:~4,2%
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
SET Monnum=%DATE:~3,2%
echo %MOnth%
if "%Monnum%" == "01" set month=January
if "%Monnum%" == "02" set month=February
if "%Monnum%" == "03" set month=March
if "%Monnum%" == "04" set month=April
if "%Monnum%" == "05" set month=May
if "%Monnum%" == "06" set month=June
if "%Monnum%" == "07" set month=July
if "%Monnum%" == "08" set month=August
if "%Monnum%" == "09" set month=September
if "%Monnum%" == "10" set month=October
if "%Monnum%" == "11" set month=November
if "%Monnum%" == "12" set month=December
set MonthShortName=%month:~0,4%
set date1=%DATE:~0,2%_%DATE:~3,2%_%DATE:~6,4%
set date2=%DATE:~0,2%-%DATE:~3,2%-%DATE:~6,4%
call SET date1=%%date1:%a1%=%MonthShortName%%%
call SET date2=%%date2:%a1%=%MonthShortName%%%
echo %date2%
mkdir "C:\backup\%month%\%date2%"
SET username=si
SET password=si
net use \\192.168.0.24 %password% /USER:%username%
rem FOR /F  %%I IN ('DIR "\\Si-pc2\e\backup\%month%\%date2%\*.backup" /B /O:D') DO  SET   backupFile=%%I 
Xcopy /s \\192.168.0.24\e\backup\%month%\%date2%  "C:\backup\%month%\%date2%"
pause