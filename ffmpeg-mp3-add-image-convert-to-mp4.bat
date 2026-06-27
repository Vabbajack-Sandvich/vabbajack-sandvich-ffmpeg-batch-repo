rem 2026-06-26-20-06-35-PM
rem this adds a picture to an mp3
rem and converts it to an mp4
rem base wip command
rem ffmpeg -loop 1 -i image.jpg -i input.mp3 -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest output.mp4

rem this adds the same image to every mp3
rem in c:\vc\

@echo off

setlocal enabledelayedexpansion

rem default
rem set "pic=C:\vc\image.png"
set "pic=C:\vc\music-remix-zonide-quake-ii-soundtrack-0.png"

cd C:\vc

for %%f in (*.mp3) do (
rem siv
rem single image video
ffmpeg -loop 1 -i "!pic!" -i "%%f" -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest "%%~nf_siv.mp4"
)
