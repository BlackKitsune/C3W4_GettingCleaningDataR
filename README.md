# C3W4_GettingCleaningDataR
C3W4 "Getting and Cleaning data in R" Coursera Project

## Aim of the project
Collect, work and clean a data set. And prepare tidy data that can be used for later analysis. 

## Description of the data set
Data collected from the accelerometers from the Samsung Galaxy S smartphone
Download the data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Before run (run_analysis.R)
The variable "workdir" sets the path for the working directory
It will be necessary to change this variable before running the script

## Description of the code
The code will follow the next steps:
1. Merges the trainig and test sets to create one data set
2. Extracts only measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to names the activities in the data set
4. Labels the data set with descriptive variables names
5. Creates a second tidy data set with the average of each variable for each activity and each subject
