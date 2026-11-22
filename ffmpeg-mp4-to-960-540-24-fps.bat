rem 2026-11-20-06-32-12-AM
rem changing to 24 fps
rem 3-7-2025
rem this reencodes all mp4s in the directory
rem 960 540

rem chdir /D d:
cd C:\vc

for %%f in (*.mp4) do (
rem ffmpeg -i "%%f" -c:a copy -c:v libx264 -crf 20 -preset ultrafast -r 24 -vf "scale=960:540" "%%~nf_re%%~xf"
ffmpeg -i "%%f" -c:a copy -c:v libx264 -crf 20 -preset ultrafast -r 24 -vf "scale=960:540" "%%~nf_re-960-540-24-fps.mp4"
)

