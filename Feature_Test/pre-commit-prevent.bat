
 
setlocal enableextensions
set "prohibited_words=Red"

for %%f in (%*) do (
    if /i "%%~xf"==".csv" (
        for /f "usebackq delims=" %%i in ("%%f") do (
            for %%j in (%prohibited_words%) do (
                echo %%i | find /i "%%j" > nul && (
                    echo Commit contains prohibited words: %%j
                    echo "Detected Run-Time Error, do not commit"
                    exit /b 1
                )
            )
        )
    )
)

exit /b 0
