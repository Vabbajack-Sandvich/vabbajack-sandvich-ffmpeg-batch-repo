rem 2026-06-19-11-38-49-AM
rem all files
rem space to underscore
cd c:\vc
rem cd c:\vc\t

rem !variable:search=replace!
setlocal enabledelayedexpansion

for %%f in ("*.*") do (
set filename=%%f
echo !filename!
set filename2=!filename: =_!
echo !filename2!
ren "%%f" "!filename2!"

)
