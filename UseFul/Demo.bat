@echo off


set d= %Date%
set a1=%d:~4,2%

SET Monnum=%DATE:~3,2%

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
echo %Monnum%
set MonthShortName=%month:~0,4%
echo %Date%
set date1=%DATE:~0,2%_%DATE:~3,2%_%DATE:~6,4% 
echo %MonthShortName%
call SET date=%%d:%a1%=%MonthShortName%%%


echo %date1%
echo Date=%date%

echo %time%

set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
rem echo hour=%hour%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
rem echo min=%min%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
rem echo secs=%secs%
if %Hour% LSS 12 (
  set ampm=AM
  if %Hour%==0 set Hour=12
) else (
  set ampm=PM
  set /a Hour-=12
)

echo Time=%hour%_%min%_%secs%%ampm%
set BackupFile= %date1%_%hour%_%min%_%secs%%ampm%.backup
echo %BackupFile%


SET string=bath Abath Bbath XYZbathABC
SET modified=%string:bath=hello%
ECHO %string%
ECHO %modified%


set a=AAA BBB CCC DDD EEE FFF
set a=%a:~4,3%
echo %a%
pause