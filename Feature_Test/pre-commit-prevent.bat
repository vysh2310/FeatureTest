
 
setlocal enableextensions
set "prohibited_words=Defect"

for %%f in (%*) do (
    if /i "%%~xf"==".csv" (
        for /f "usebackq delims=" %%i in ("%%f") do (
            for %%j in (%prohibited_words%) do (
                echo %%i | find /i "%%j" > nul && (
                    echo Commit contains prohibited words: %%j
                    exit /b 1
                )
            )
        )
    )
)
echo "Detected Polyspace violations, do not commit"
exit /b 0
