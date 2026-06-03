rem 2026-05-15-03-20-25-AM
rem strips metadata from mp4
rem ffmpeg -i in.mov -map_metadata -1 -c copy out.mov
rem changes all mp4 to mp3 in directory
cd C:\vc
for %%f in (*.mp4) do ffmpeg -y -i "%%f" -map_metadata -1 -c copy "%%~nf_md.mp4"
cd c:\
