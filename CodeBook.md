# C3W4 Getting and Cleaning data project

## run_analysis.R will follow the next steps

### 1. Merges the training and test sets to create one data set
Creates a "data" data set with the combined data from train.txt and test.txt files

### 2. Extract measurements on the mean and standard deviation for each measurement
Produces a "sub_data" data set with only the variables that calculates mean or standard deviation

### 3. Uses descriptive activity names to name the activities in the data set
Adds the information from features, activity_labels and subject to the sub_data data set

### 4. Appropriately labels the data set with descriptive variable names
Cleans the variables names to descriptive variables names in sub_data data set

### 5. Creates a second data set with the average of each variable for each activity and each subject.
Generates a subset "avg_data" of sub_data with the average values of each varaible as a function of activity and subject.

# Output (avg_data)
The script run_analysis.R will produce a data frame called "avg_data" that will contain tidy data.
Each row of "avg_data" contains averaged data from each subject and each activity from features that contain:
1. Mean value (mean)
2. Standard deviation (std)

# Variables (columns in avg_data)
 [1] "activity_ID".
 [2] "activity" (related to activity_ID: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING).
 [3] "subject_ID".
 [4] "TimeBodyAcceleration-Mean-X"                              
 [5] "TimeBodyAcceleration-Mean-Y"                              
 [6] "TimeBodyAcceleration-Mean-Z"                              
 [7] "TimeBodyAcceleration-Std_Deviation-X"                     
 [8] "TimeBodyAcceleration-Std_Deviation-Y"                     
 [9] "TimeBodyAcceleration-Std_Deviation-Z"                     
[10] "TimeGravityAcceleration-Mean-X"                           
[11] "TimeGravityAcceleration-Mean-Y"                           
[12] "TimeGravityAcceleration-Mean-Z"                           
[13] "TimeGravityAcceleration-Std_Deviation-X"                  
[14] "TimeGravityAcceleration-Std_Deviation-Y"                  
[15] "TimeGravityAcceleration-Std_Deviation-Z"                  
[16] "TimeBodyAccelerationJerk-Mean-X"                          
[17] "TimeBodyAccelerationJerk-Mean-Y"                          
[18] "TimeBodyAccelerationJerk-Mean-Z"                          
[19] "TimeBodyAccelerationJerk-Std_Deviation-X"                 
[20] "TimeBodyAccelerationJerk-Std_Deviation-Y"                 
[21] "TimeBodyAccelerationJerk-Std_Deviation-Z"                 
[22] "TimeBodyGyro-Mean-X"                                      
[23] "TimeBodyGyro-Mean-Y"                                      
[24] "TimeBodyGyro-Mean-Z"                                      
[25] "TimeBodyGyro-Std_Deviation-X"                             
[26] "TimeBodyGyro-Std_Deviation-Y"                             
[27] "TimeBodyGyro-Std_Deviation-Z"                             
[28] "TimeBodyGyroJerk-Mean-X"                                  
[29] "TimeBodyGyroJerk-Mean-Y"                                  
[30] "TimeBodyGyroJerk-Mean-Z"                                  
[31] "TimeBodyGyroJerk-Std_Deviation-X"                         
[32] "TimeBodyGyroJerk-Std_Deviation-Y"                         
[33] "TimeBodyGyroJerk-Std_Deviation-Z"                         
[34] "TimeBodyAccelerationMagnitude-Mean"                       
[35] "TimeBodyAccelerationMagnitude-Std_Deviation"              
[36] "TimeGravityAccelerationMagnitude-Mean"                    
[37] "TimeGravityAccelerationMagnitude-Std_Deviation"           
[38] "TimeBodyAccelerationJerkMagnitude-Mean"                   
[39] "TimeBodyAccelerationJerkMagnitude-Std_Deviation"          
[40] "TimeBodyGyroMagnitude-Mean"                               
[41] "TimeBodyGyroMagnitude-Std_Deviation"                      
[42] "TimeBodyGyroJerkMagnitude-Mean"                           
[43] "TimeBodyGyroJerkMagnitude-Std_Deviation"                  
[44] "FrequencyuencyBodyAcceleration-Mean-X"                    
[45] "FrequencyuencyBodyAcceleration-Mean-Y"                    
[46] "FrequencyuencyBodyAcceleration-Mean-Z"                    
[47] "FrequencyuencyBodyAcceleration-Std_Deviation-X"           
[48] "FrequencyuencyBodyAcceleration-Std_Deviation-Y"           
[49] "FrequencyuencyBodyAcceleration-Std_Deviation-Z"           
[50] "FrequencyuencyBodyAccelerationJerk-Mean-X"                
[51] "FrequencyuencyBodyAccelerationJerk-Mean-Y"                
[52] "FrequencyuencyBodyAccelerationJerk-Mean-Z"                
[53] "FrequencyuencyBodyAccelerationJerk-Std_Deviation-X"       
[54] "FrequencyuencyBodyAccelerationJerk-Std_Deviation-Y"       
[55] "FrequencyuencyBodyAccelerationJerk-Std_Deviation-Z"       
[56] "FrequencyuencyBodyGyro-Mean-X"                            
[57] "FrequencyuencyBodyGyro-Mean-Y"                            
[58] "FrequencyuencyBodyGyro-Mean-Z"                            
[59] "FrequencyuencyBodyGyro-Std_Deviation-X"                   
[60] "FrequencyuencyBodyGyro-Std_Deviation-Y"                   
[61] "FrequencyuencyBodyGyro-Std_Deviation-Z"                   
[62] "FrequencyuencyBodyAccelerationMagnitude-Mean"             
[63] "FrequencyuencyBodyAccelerationMagnitude-Std_Deviation"    
[64] "FrequencyuencyBodyAccelerationJerkMagnitude-Mean"         
[65] "FrequencyuencyBodyAccelerationJerkMagnitude-Std_Deviation"
[66] "FrequencyuencyBodyGyroMagnitude-Mean"                     
[67] "FrequencyuencyBodyGyroMagnitude-Std_Deviation"            
[68] "FrequencyuencyBodyGyroJerkMagnitude-Mean"                 
[69] "FrequencyuencyBodyGyroJerkMagnitude-Std_Deviation" 
