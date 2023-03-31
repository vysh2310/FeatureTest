




set "search_string=Red"

set "filename=%1"

if not exist "%filename%" (
  echo File not found: %filename%
  exit /b 1
)

set "match_found=false"

for /f "usebackq tokens=*" %%a in ("%filename%") do (
  set "line=%%a"
  if "!line:%search_string%=!" neq "!line!" (
    set "match_found=true"
    echo String found: %search_string%
    echo Do not commit, there is a Bug in the code!
    exit /b 1
  )
)
if "%match_found%"=="false" (
  echo String not found: %search_string%
  exit /b 0
)

