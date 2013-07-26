@echo off
cd "C:\Users\systemin\Documents\Downloads\PSTools"
 psexec \\192.168.0.24 -u systemin  "C:\Users\systemin\Desktop\Backup.bat"
rem psexec \\systemin-PC1  "D:\Backup.bat"
pause