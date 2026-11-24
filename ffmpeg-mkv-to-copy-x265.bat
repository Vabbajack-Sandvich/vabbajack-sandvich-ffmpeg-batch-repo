rem 2026-11-24-08-45-25-AM
rem changing to just copy whatever mkv scale etc
rem to reencode with x265 for compression
rem 2026-11-24-08-43-15-AM
rem changing to 406 720
rem 2026-11-20-19-42-46-PM
rem making mkv only version
rem 2026-11-20-19-41-37-PM
rem changing to mkv to mp4
rem 2026-11-20-07-15-44-AM
rem changing to x265
rem 2026-11-20-06-47-10-AM
rem changing to 960 400
rem 2026-11-20-06-41-39-AM
rem changing to 1280 720
rem 2026-11-20-06-32-12-AM
rem changing to 24 fps
rem ading 2 mb flag
rem 3-7-2025
rem this reencodes all mp4s in the directory
rem 960 540

rem chdir /D d:
cd C:\vc

md c:\vc\t

md c:\vc\d

for %%f in (*.mkv) do (
rem ffmpeg -i "%%f" -b:v 2M -c:a copy -c:v libx264 -crf 20 -preset ultrafast -r 24 -vf "scale=960:400" "%%~nf-re-960-400.mp4"
rem ffmpeg -i "%%f" -b:v 2M -c:a copy -c:v libx265 -preset ultrafast -r 24 -vf "scale=960:400" "%%~nf-re-960-400.mp4"
rem ffmpeg -i "%%f" -c:a copy -c:v libx265 -preset ultrafast -r 24 -vf "scale=720:406" "%%~nf-re-406-720-x265-23-98-fps.mkv"
ffmpeg -i "%%f" -c:v copy -c:a copy -c:v libx265 -preset ultrafast "%%~nf-re-x265-copy.mkv"

timeout /t 4 /nobreak

rem move re encoded to temp folder
move /y "%%~nf-re-x265-copy.mkv" "C:\vc\t"

timeout /t 4 /nobreak

rem move original to done folder
move /y "%%f" "C:\vc\d"

timeout /t 4 /nobreak

)

