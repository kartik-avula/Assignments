######################### Extract mean and std #############################

# Extracts only the measurements on the mean and standard deviation for 
# each measurement. These variables will be used for further processes

## Looking at the variable names given in "features.txt" (provided along with
## the dataset), we can see that "measurements on mean and standard deviation"
## have the strings "mean()" and "std()" respectively in feature names. These 
## feature names can be found in features$V2  

## Using the above property to identify indices corresponding to variables which
## are "measurements on mean and standard deviation"

indicesof_meanstd <- grep("mean\\(\\)|std\\(\\)", features$V2)

### Converting indices to corresponding names in the unified dataset
varnames_meanstd <- paste0("V", features$V1[indicesof_meanstd])

### Note that matching the "()" is critical, as there are variables with the 
### string "meanFreq" which should not be extracted 

## Extracting only columns which we need 
meanstd_data <- select(master_data, c("subjectID", varnames_meanstd, "Activity", "meas_source"))

