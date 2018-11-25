######################### Descriptive activity names #############################

# Activities are coded as numbers [1-6] in the raw data. Converting these to 
# corresponding activity labels given in column 2 of "activity_labels.txt" in 
# the data. The labels are: 
# [WALKING, WALKING_UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING]

row.names(activity_labels) <- as.character(activity_labels$V1)
meanstd_data$Activity <- activity_labels[as.character(meanstd_data$Activity),2]


######################### Descriptive variable names #############################
# Replacing the variable names which are of the format V<X_column_number> with
# the corresponding descriptive names given in "features.txt"
desc_varnames_meanstd <- features$V2[indicesof_meanstd]

# Replace the abridged names with clearer descriptions
find_patterns <- c("BodyBody","Gyro","Acc","Mag","^t","^f","mean\\(\\)","std\\(\\)","-")
replace_patterns <- c("Body","Gyroscope","Accelerometer","Magnitude","Time","Frequency","Mean","STD","")

for(i in 1:length(find_patterns)) {
    desc_varnames_meanstd <- gsub(find_patterns[i],replace_patterns[i], desc_varnames_meanstd)
}

tidy_varnames_meanstd <- desc_varnames_meanstd

# Assigning descriptive variable names to the dataset
names(meanstd_data) <- c("subjectID", tidy_varnames_meanstd, "Activity", "meas_source")