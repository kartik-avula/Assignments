######################### Verifying output ##################################
# Output is verified for the following conditions using an independent approach
# i.e. by calculating a subset of the expected tidy output matrix through a 
# completetely different operation and comparing with corresponding subset of 
# tidy data

# The subset considered (this is arbitrary) for testing is 
## 2 variables - (a)TimeBodyAccelerometerMean-X (V1) (b) FrequencyBodyGyroscopeJerkMagnitudeMean (V542)
## subjectID = 1, Y = LAYING(6) 

verification_data <- tbl_df(master_data) %>% 
    select(c(subjectID, V1, V542, Activity)) %>%
    filter(subjectID == "1" & Activity == 6) %>%
    summarize(TimeBodyAccelerometerMeanX = mean(V1),FrequencyBodyGyroscopeJerkMagnitudeMean = mean(V542))

tidy_output_subset_for_verification <- tbl_df(tidy_output) %>% 
    filter(subjectID == "1" & Activity == "LAYING" ) %>%
    select(TimeBodyAccelerometerMeanX, FrequencyBodyGyroscopeJerkMagnitudeMean)
if(identical(verification_data,tidy_output_subset_for_verification)) {
    print("Output verification is successful!")
}                  