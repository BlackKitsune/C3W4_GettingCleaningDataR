### C3W4 - Getting and Cleaning data
# I. Fernandez

# run_analysis.R will perform an analysis over the data from Sansung Galaxy S
# Smartphone accelerometers.

# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# It will do the following:

# 1. Merges the training and test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#    measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.

# Libraries

library(dplyr)


# Clean list of variables and data

rm(list = ls())

# Change work dir to the data directory

workdir <- "D:/R_std/C3W4/R/data/UCI HAR Dataset"
setwd(workdir)

# Extract information according to README.txt file

features = read.table("./features.txt")  # List of all features
var_names = features[,2]

activity_labels = read.table("./activity_labels.txt") # Links labels/activity name
colnames(activity_labels) <- c("activity_ID", "activity")

# 1. Merges the training and test sets to create one data set

# Extract the data from train/test folders (x set and y labels) 

x_train = read.table("./train/X_train.txt")
y_train = read.table("./train/Y_train.txt")
subject_train = read.table("./train/subject_train.txt")

x_test = read.table("./test/X_test.txt")
y_test = read.table("./test/Y_test.txt")
subject_test = read.table("./test/subject_test.txt")

# Merge the train and test with activity_ID, subject_ID activity data

x_data <- rbind(x_train, x_test)
colnames(x_data) <- var_names

y_data <- rbind(y_train, y_test)
colnames(y_data) <- "activity_ID"
y_data <- merge(y_data, activity_labels, by = "activity_ID")

subject_data <- rbind(subject_train, subject_test)
colnames(subject_data) <- "subject_ID"

data <- cbind(y_data, subject_data, x_data)


# 2. Extract measurements on the mean and standard deviation for each measurement

column_names = names(data)

# From the variables extract which contains mean() or std() in the name

mean_std_variables = grep("mean\\(\\)|std\\(\\)", column_names)

# Select them in the data

sub_data <- data[,mean_std_variables]

# Add again the activity_ID and subject_ID

sub_data <- cbind(data[1:3], sub_data)


# 3. Uses descriptive activity names to name the activities in the data set
# Added at step 1  (line 60)


# 4. Appropriately labels the data set with descriptive variable names

column_names = names(sub_data)

# Clean the variables names

column_names = gsub("\\()","",column_names)
column_names <- gsub("^t", "Time", column_names)
column_names <- gsub("^f", "Frequency", column_names)
column_names <- gsub("Freq", "Frequency", column_names)
column_names <- gsub("Acc", "Acceleration", column_names)
column_names <- gsub("BodyBody", "Body", column_names)
column_names <- gsub("mean", "Mean", column_names)
column_names <- gsub("std", "Std_Deviation", column_names)
column_names <- gsub("Mag", "Magnitude", column_names)

colnames(sub_data) <- column_names

# 5. Creates a second data set with the average of each variable for each activity 
# and each subject.

# For each subset of data frame apply mean and combine results into data frame = ddply
avg_data <- ddply(sub_data, c("activity_ID", "activity","subject_ID"), numcolwise(mean))
View(avg_data)


# Write the data into a file
write.table(avg_data ,file = "tidydata.txt")
