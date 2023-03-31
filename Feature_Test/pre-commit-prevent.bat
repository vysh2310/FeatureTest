


set "search_dir=C:\Feature_Test_Git\FeatureTest\Feature_Test"
set "search_word=Red"

for /r "%search_dir%" %%f in (*.csv) do (
  findstr /C:"%search_word%" "%%f" > nul
  if %errorlevel% equ 0 (
    echo The word was found in the CSV file,no to commit %%~nxf.
  ) else (
    echo The word was not found in the CSV file %%~nxf.
  )
)
