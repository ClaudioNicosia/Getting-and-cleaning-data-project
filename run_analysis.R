
# Course 3 - Getting and Cleaning Data Final Project
#----------------------------------------------------

# STEPS:

#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each 
#   measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with 
#   the average of each variable for each activity and each subject.

################################################################################################################################################
## Unzip file manually and place the folder under the work dir
## From:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Read files

## Create Tables using data.table  Enhanced data.frame 
#install.packages("data.table")
library(data.table)

### Read Common Files references / Metadata
#
# Feature file ref
f_feat <- file.path(getwd(), "UCI HAR Dataset/features.txt") 
# Activity file ref
f_act <- file.path(getwd(), "UCI HAR Dataset/activity_labels.txt") 

# Features List
features <- read.table(f_feat ,sep = " ")
setnames(features,c("V1","V2"),c("f_id","f_name"))

# Create a list of mean and std variables only
Mean_std_features <- grepl("mean|std", features$f_name)

# Activity labels
activity <- read.table(f_act, sep = " ")
setnames(activity,c("V1","V2"),c("act_id","act_name"))

##########################################
# Read Data - Test

xtst_sdir <- "UCI HAR Dataset/test/X_test.txt"
ytst_sdir <- "UCI HAR Dataset/test/y_test.txt"
stst_sdir <- "UCI HAR Dataset/test/subject_test.txt"

xftest  <- file.path(getwd(), xtst_sdir) 
yftest  <- file.path(getwd(), ytst_sdir) 
sftest  <- file.path(getwd(), stst_sdir) 

X_test  <- read.table(xftest)
y_test  <- read.table(yftest)
s_test  <- read.table(sftest)
names(s_test) <- "subject"

names(X_test)  <- features$f_name
X_test = X_test[,Mean_std_features]

# Read Data - Train

xtrn_sdir <- "UCI HAR Dataset/train/X_train.txt"
ytrn_sdir <- "UCI HAR Dataset/train/y_train.txt"
strn_sdir <- "UCI HAR Dataset/train/subject_train.txt"

xftrain <- file.path(getwd(), xtrn_sdir) 
yftrain <- file.path(getwd(), ytrn_sdir) 
sftrain <- file.path(getwd(), strn_sdir) 

X_train <- read.table(xftrain)
y_train <- read.table(yftrain)
s_train <- read.table(sftrain)
names(s_train) <- "subject"

names(X_train) <- features$f_name
X_train = X_train[,Mean_std_features]


# Load activity labels
y_test[,2] = activity$act_name[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
dt_test <- cbind(as.data.table(s_test), y_test, X_test)


y_train[,2] = activity$act_name[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
dt_train <- cbind(as.data.table(s_train), y_train, X_train)


# Merge test and train data
data = rbind(dt_test, dt_train)

# Prepare dataset using the melt function - Transpose cols. into rows
long_data <- melt(data, id=c("subject", "Activity_ID", "Activity_Label"))

# Apply mean function to dataset using dcast function
tidy_data   = dcast(long_data, subject + Activity_Label ~ variable, mean)

# output tidy dataset 
# Tab delimited txt file including col header 
write.table(tidy_data, file = "./tidy.txt", sep="\t",  row.names = F, quote = F)


##################################################  
# End Script  

    
  