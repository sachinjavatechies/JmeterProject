@echo off

for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set DateTime=%%a

set Yr=%DateTime:~0,4%
set Mon=%DateTime:~4,2%
set Day=%DateTime:~6,2%
set Hr=%DateTime:~8,2%
set Min=%DateTime:~10,2%
set Sec=%DateTime:~12,2%

set BackupName=BackupASRIInventoryTestReport_%Yr%-%Mon%-%Day%_(%Hr%-%Min%-%Sec%)

:--copy C:\Sachin\Project\SASI\Documents\Jmeter\TestCases\ASRI\Reports "C:\Sachin\Project\SASI\Documents\Jmeter\TestCases\ASRI\BackupReports\%ASRIInventoryReports%"
xcopy "C:\Sachin\Project\SASI\Documents\Jmeter\TestCases\ASRI\Reports." /s /e "C:\Sachin\Project\SASI\Documents\Jmeter\TestCases\ASRI\BackupReports\%BackupName%\"

:--pause