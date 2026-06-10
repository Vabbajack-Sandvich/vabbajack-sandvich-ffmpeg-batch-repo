
rem 2026-06-10-04-19-31-AM
rem version 2
rem just adding everything to just the one
rem this means that it will not do the same copies of the same conversion files
rem it also means it will easily do 1 copy and paste of multiple gifs to vc all at once

cd c:\vc

for %%f in (*.gif) do (
ffmpeg -i "%%f" -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "%%~nf_conv.mp4"
timeout /t 2 /nobreak
ffmpeg -y -i "%%~nf_conv.mp4" -c:v libx264 -b:v 500k -crf 24 -preset fast -vf scale=290:742 -r 24 "%%~nf_shrunk.mp4"
timeout /t 2 /nobreak
ffmpeg -i "%%~nf_shrunk.mp4" "%%~nf_conv.gif"
timeout /t 2 /nobreak
)
