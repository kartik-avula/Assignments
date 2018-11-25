######################### Create unified dataset #############################

# Creates a single dataset combining subject ID, X (features from the data) and
# Y (activity labels) for training and test data. This is done in 2 stages:
# 1. Combining SubjectID, X and Y by binding columns for test and train data separately 
# 2. Combining training and test data by binding rows 

## Data summarizing shows that subject,x,y have an overlapping column name V1  

## Creating unified training data 
### Remove overlap of column names
names(train_subject) <- "subjectID"
names(train_y) <- "Activity"

## SubjectID and Y (activity) form the first and last columns respectively
train_integrated <- bind_cols(train_subject, train_x, train_y)
 
## Creating unified test data 
### Remove overlap of column names 
names(test_subject) <- "subjectID"
names(test_y) <- "Activity"

## SubjectID and Y (activity) form the first and last columns respectively
test_integrated <- bind_cols(test_subject, test_x, test_y)


## Combining train and test data

### Add another variable to indicate whether the row was from train or test data
train_integrated$meas_source <- "train"
test_integrated$meas_source <- "test"
master_data <- bind_rows(train_integrated, test_integrated)

### Set correct Col classi.e. convert subjectID to a factor variable 
master_data <- mutate(master_data, subjectID = as.factor(as.character(subjectID)))
