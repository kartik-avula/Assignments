######################### Read in files #############################

# Reads in train and test data as well as associated metadata into separate 
# variables. There is no processing on the data at this stage.

train_path <- file.path(dataDirName, "train")
test_path <- file.path(dataDirName, "test")

train_subject <- read.table(file.path(train_path, "subject_train.txt"))
train_y <- read.table(file.path(train_path, "y_train.txt"))
train_x <- read.table(file.path(train_path, "x_train.txt"))

test_subject <- read.table(file.path(test_path, "subject_test.txt"))
test_y <- read.table(file.path(test_path, "y_test.txt"))
test_x <- read.table(file.path(test_path, "x_test.txt"))

activity_labels <- read.table(file.path(dataDirName, "activity_labels.txt"))
features <- read.table(file.path(dataDirName, "features.txt"))

