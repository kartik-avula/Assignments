######################### Tidy data output ##################################
# Groups the meanstd_data file by subject ID and Activity and takes the average
tidy_output <- 
    meanstd_data %>% 
        select(-meas_source) %>% # Remove measure  
            group_by(subjectID, Activity) %>%  
                summarize_all(mean) 


