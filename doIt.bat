@echo off
set /p "dir=Enter Dirctory: "
set /p "count=Enter count of chars to build new directories: "
set count = %count%
setlocal enabledelayedexpansion
echo Dirctory is: %dir%
set /A Num=!count!
echo Count is: !Num!
cd %dir%
@REM i is full path
for /r %%I in (*) do (
    @echo off
    set fileName=%%~nxI
    set fullPath=%%I
    set newDir=!filename:~0,4!
    echo found !fullPath!
    echo filename is !filename!
    echo folder to make is !newDir!
    set newFullPath= %dir%\!newDir!
    if not exist newFullPath mkdir !newDir!
    echo new full path is:  !newFullPath!
    set source= !fullPath!
    set destin= !newFullPath!/!fileName!
    echo source is !source!
    echo destin is !destin!
    robocopy !source! !destin!
) 
echo _
echo DONE SUCCESSFULLY...
cmd /k