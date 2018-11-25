# JHU_Data_Science - Course 3 - Getting And Cleaning Data - Assignment README

## Problem statement
This project (assignment) was designed to process the UCI wearable dataset downloaded from [link provided in the assignment.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Specifically the script is required to do the following processing: 
1. Merges the training and test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Used descriptive activity names to name the activities in the data set
4. Appropriately labels the data with descriptive variable names
5. From the dataset in step 4 create a second, independent dataset with average of each variable for each activity and each subject

## Raw Dataset
The raw dataset consists of multiple features (variables) derived from time series triaxial accelerometer and gyroscope data collected for 30 subjects across 6 different activities. The data has been pre-processed e.g. filtering, fourier transforms etc. to derive (a) number of additional variables (e.g., Jerk, Magnitude) and (b) various measurements on those variables (e.g., mean, standard deviation, kurtosis). Further information on the raw data can be found in the following files:
* ./RawDataCodebook/README.txt - Overview of background of data 
* ./RawDataCodebook/features_info.txt - Description of how the various features are derived 
* ./RawDataCodebook/features.txt - List of features 

## Output 
The run_analysis.R in this folder takes this raw data and converts it into a tidy data table with the average of the means of various measurements, for each subject and each activity. Specifically the key columns of the output are: 
1. One subjectID column with values 1-30 denoting the specific subject the data corresponds to 
2. One Activity column which lists the specific activity (from WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, STANDING, SITTING, LAYING)
3. 66 variables (corresponding to mean,std) which are summarized for different combinations of previous 2 factors. Variable names are descriptive.

## List of files 
The list of files in this folder includes 8 R scripts to do the required processing from the raw data to the output. The key analysis script is "run_analysis.R" script, which in turn sources the other 7 R scripts to carry out different steps in the processing. 

### R scripts
* **run_analysis.R**: The core file which carries out the end-end processing by sourcing each of the subsequent files in sequence and writes the output to a file 
* **01_download_data.R**: Downloads the UCI dataset 
* **02_read_data.R**: Reads the data into workspace variables 
* **03_create_unified_dataset.R**: Combine X, Y, Subject data as well as train & test data into 1 unified dataset
* **04_extract_mean_and_std.R**: Extracts only the measurements on the mean and standard deviation for each measurement
* **05_descriptive_labels_names.R**: Make activity labels and variable names descriptive
* **06_tidy_output.R**: From the dataset in step 4 create a second, independent dataset with average of each variable for each activity and each subject
* **07_verify_output.R**: Verify by comparing a subset of tidy output obtained with the same output obtained through a different method

### Other files 
* **README.md**: This file - guide to the approach taken for the project 
* **Codebook.md**: The list of variables in the tidy output with additional details 
* **Tidy_wearable_Data.txt**: The output of the project - tidy data file  