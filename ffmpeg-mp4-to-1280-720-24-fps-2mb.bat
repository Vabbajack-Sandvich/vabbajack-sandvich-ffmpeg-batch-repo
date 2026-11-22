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

for %%f in (*.mp4) do (
ffmpeg -i "%%f" -b:v 2M -c:a copy -c:v libx264 -crf 20 -preset ultrafast -r 24 -vf "scale=1280:720" "%%~nf-re-1280-720-2mb-24-fps.mp4"
)

