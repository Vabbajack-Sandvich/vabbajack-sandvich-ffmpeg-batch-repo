
rem 2026-06-03-01-58-23-AM
rem cleared the junk out of the start of the file

rem 2026-06-03-02-32-02-AM
rem updating to convert back to gif

cd c:\vc

for %%f in (*.gif) do ffmpeg -i "%%f" -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "%%~nf_conv.mp4"

rem for %%f in (*.mp4) do ffmpeg -y -i "%%f" -c:v libx264 -b:v 500k -crf 30 -preset fast -vf scale=960:540 -r 30 "%%~nf_shrunk%%~xf"

for %%f in (*.mp4) do ffmpeg -y -i "%%f" -c:v libx264 -b:v 500k -crf 30 -preset fast -vf scale=480:270 -r 30 "%%~nf_shrunk%%~xf"

rem ffmpeg -i input.mp4 output.gif

for %%f in (*.mp4) do ffmpeg -i "%%f" "%%~nf_conv.gif"

