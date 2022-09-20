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
    set fileName= %%~nxI
    set fullPath= %%I
    set newDir= !filename:~0,5!
    set newPath= 
    echo found !fullPath!
    echo filename is !filename!
    echo folder to make is !newDir!
    mkdir !newDir!
) 
cmd /k