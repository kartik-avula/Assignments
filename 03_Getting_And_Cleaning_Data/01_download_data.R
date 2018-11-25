# JHU Data Science - Course 03 - Getting and Cleaning Data - Assignment - Download Data
 
################################# Download data ###############################

# Checks if the data directory (given by dataDirName variable set in run_analysis)
# and the required data file exist. Data is downloaded from th internet if it 
# cannot be found in the directory pointed to by the object - datDirName

UCIWearableDataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!dir.exists(dataDirName)) {
    if(!file.exists("UCIWearableData.zip")) {
        download.file(UCIWearableDataURL,destfile = "UCIWearableData.zip",method = "curl")
    }
    unzip("UCIWearableData.zip")
}