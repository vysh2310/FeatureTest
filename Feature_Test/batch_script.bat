 echo "Polyspace analysis for any defects, do not commit or merge"
 cd C:\Program Files\Polyspace\R2023a\polyspace\bin
 polyspace-bug-finder -sources C:\DebugGit\DebugMethod\Debugging.c -results-dir C:\DebugGit\DebugMethod\temp1_analysis_result
 polyspace-results-export -format csv ^
    -results-dir C:\DebugGit\DebugMethod\temp1_analysis_result ^
    -output-name C:\DebugGit\DebugMethod\temp1_analysis_result.csv
 


