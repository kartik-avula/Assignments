# JHU Data Science - Course 03 - Getting and Cleaning Data - Assignment


# Problem statement
# -----------------
# This R script was designed to process the UCI wearable dataset downloaded 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Specifically the script is required to do the following processing: 
# 1. Merges the training and test sets to create one data set 
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# 3. Used descriptive activity names to name the activities in the data set 
# 4. Appropriately labels the data with descriptive variable names 
# 5. From the dataset in step 4 create a second, independent dataset with average
# of each variable for each activity and each subject 

# Structure of the code
# ----------------------
# This file sources other scripts to do different tasks in the required 
# sequence. Note that the other scripts are not "functions". Rather they are 
# separated out for readability. 

library(dplyr)

############################## PREPROCESSING ##################################
# Path to folder (from working directory) in which data is downloaded. If such a
# folder is not found, the data is downloaded again.
dataDirName <- "UCI HAR Dataset"

# Download data if the dataDirName folder does not exist AND the zipped data 
# file - "UCIWearableData.zip" - do not exist   
source("01_download_data.R") 

# Read data (including metadata) from the dataset in workspace variables 
source("02_read_data.R")

################################## STEP1 ######################################
# Combine X, Y, Subject data as well as train & test data into 1 unified dataset
source("03_create_unified_dataset.R")

################################## STEP2 ######################################
# Extract only measurements on the mean and standard deviation
source("04_extract_mean_and_std.R")

################################# STEP3/4 #####################################
# Make activity labels and variable names descriptive 
source("05_descriptive_labels_names.R")

################################## STEP5 ######################################
# From the dataset in step 4 create a second, independent dataset with average
# of each variable for each activity and each subject
source("06_tidy_output.R")

############################### VERIFY DATA ###################################
# THIS IS A STRICTLY OPTIONAL STEP
# Verify by comparing a subset of tidy output obtained with the same output
# obtained through a different method  
source("07_verify_output.R")

############################### WRITE DATA ####################################
# Write tidy data to file 
write.table(tidy_output, file = "Tidy_wearable_data.txt", row.names = FALSE)
print("Output written to \"Tidy_wearable_data.txt\"", quote=FALSE)

# THANK YOU - THE END 