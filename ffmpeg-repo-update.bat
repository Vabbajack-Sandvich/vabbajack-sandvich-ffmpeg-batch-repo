rem 2026-06-10-10-37-45-AM
rem updates ffmpeg repos from c:\
rem source:
rem C:\
rem destination:
rem C:\zonide\zip\CODE\vabbajacksandvich-vs-code-bk\vabbajacksandvich-vs-code-bk\batch-bk
rem C:\zonide\zip\CODE\git\vabbajack-sandvich-ffmpeg-batch\repo\vabbajack-sandvich-ffmpeg-batch-repo

rem 2026-06-10-11-44-47-AM
rem xcopy gets cyclial error
rem trying robocopy

rem xcopy "C:\" %finalpath4% /f /h /r /y /j /d /e

rem xcopy "C:\*.bat" "C:\zonide\zip\CODE\git\vabbajack-sandvich-ffmpeg-batch\repo\vabbajack-sandvich-ffmpeg-batch-repo\" /f /h /r /y /j /d /e

rem xcopy "C:\*.bat" "C:\zonide\zip\CODE\vabbajacksandvich-vs-code-bk\vabbajacksandvich-vs-code-bk\batch-bk\" /f /h /r /y /j /d /e

rem robocopy /s /e /copyall /xo "C:\*.bat" ""

cd c:\

robocopy "C:" "C:\zonide\zip\CODE\git\vabbajack-sandvich-ffmpeg-batch\repo\vabbajack-sandvich-ffmpeg-batch-repo" "*.bat" /xn /xd /mir

pause

robocopy "C:" "C:\zonide\zip\CODE\git\vabbajack-sandvich-ffmpeg-batch\repo\vabbajack-sandvich-ffmpeg-batch-repo" "*.bat" /xn /xd /mir

pause

rem copy test
