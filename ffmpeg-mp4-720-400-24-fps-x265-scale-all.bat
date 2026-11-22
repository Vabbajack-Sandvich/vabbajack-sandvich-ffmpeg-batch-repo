rem 2026-11-22-00-03-22-AM
rem 400 720, largest resolution in the dbz folder
rem changing to scale all resolutions
rem to output resolution
rem with black bars and no stretching
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

for %%f in (*.mp4) do (

rem old working command for 1 resolution
rem from 1 consistant resolution
rem ffmpeg -i "%%f" -c:a copy -c:v libx265 -preset ultrafast -r 24 -vf "scale=960:400" "%%~nf-re-960-400-x265.mp4"

rem new command for black bar
rem and multi resolution
rem base command to work from
rem ffmpeg -i input.mp4 -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2:black,setsar=1" -c:a copy output.mp4

ffmpeg -i "%%f" -c:a copy -c:v libx265 -preset ultrafast -r 24 -vf "scale=720:400:force_original_aspect_ratio=decrease,pad=720:400:(ow-iw)/2:(oh-ih)/2:black,setsar=1" "%%~nf-re-400-720-x265-scale-all-24-fps.mp4"

timeout /t 4 /nobreak

rem move re encoded to temp folder
move /y "%%~nf-re-400-720-x265-scale-all-24-fps.mp4" "C:\vc\t"

timeout /t 4 /nobreak

rem move original to done folder
move /y "%%f" "C:\vc\d"

timeout /t 4 /nobreak


)

