 echo "Polyspace analysis for any defects, do not commit or merge"
 cd C:\Program Files\Polyspace\R2023a\polyspace\bin
 polyspace-code-prover -sources C:\Feature_Test_Git\FeatureTest\Feature_Test\Feature_Test.c -results-dir C:\Feature_Test_Git\FeatureTest\Feature_Test\temp2_analysis_result
 polyspace-results-export -format csv ^
    -results-dir C:\Feature_Test_Git\FeatureTest\Feature_Test\temp2_analysis_result ^
    -output-name C:\Feature_Test_Git\FeatureTest\Feature_Test\temp2_analysis_result.csv
 


