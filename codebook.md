Data Source

Download file and unzip 1.1. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Cleaning

Read in everthing and set column names

Merge train and test sets

Extract columns with mean and standard deviations

Change activity ID to name and assign descriptive column names

Make the independent tidy data set by using the activity and subject to get a mean of each variable

Variable Names
"subject" "activity" "TimeBodyAcceleration-mean()-X" "TimeBodyAcceleration-mean()-Y" "TimeBodyAcceleration-mean()-Z" "TimeGravityAcceleration-mean()-X" "TimeGravityAcceleration-mean()-Y" "TimeGravityAcceleration-mean()-Z" "TimeBodyAccelerationJerk-mean()-X" "TimeBodyAccelerationJerk-mean()-Y" "TimeBodyAccelerationJerk-mean()-Z" "TimeBodyGyroscope-mean()-X" "TimeBodyGyroscope-mean()-Y" "TimeBodyGyroscope-mean()-Z" "TimeBodyGyroscopeJerk-mean()-X" "TimeBodyGyroscopeJerk-mean()-Y" "TimeBodyGyroscopeJerk-mean()-Z" "TimeBodyAccelerationMagnitude-mean()" "TimeGravityAccelerationMagnitude-mean()" "TimeBodyAccelerationJerkMagnitude-mean()" "TimeBodyGyroscopeMagnitude-mean()" "TimeBodyGyroscopeJerkMagnitude-mean()" "FrequencyBodyAcceleration-mean()-X" "FrequencyBodyAcceleration-mean()-Y" "FrequencyBodyAcceleration-mean()-Z" "FrequencyBodyAcceleration-meanFreq()-X" "FrequencyBodyAcceleration-meanFreq()-Y" "FrequencyBodyAcceleration-meanFreq()-Z" "FrequencyBodyAccelerationJerk-mean()-X" "FrequencyBodyAccelerationJerk-mean()-Y" "FrequencyBodyAccelerationJerk-mean()-Z" "FrequencyBodyAccelerationJerk-meanFreq()-X" "FrequencyBodyAccelerationJerk-meanFreq()-Y" "FrequencyBodyAccelerationJerk-meanFreq()-Z" "FrequencyBodyGyroscope-mean()-X" "FrequencyBodyGyroscope-mean()-Y" "FrequencyBodyGyroscope-mean()-Z" "FrequencyBodyGyroscope-meanFreq()-X" "FrequencyBodyGyroscope-meanFreq()-Y" "FrequencyBodyGyroscope-meanFreq()-Z" "FrequencyBodyAccelerationMagnitude-mean()" "FrequencyBodyAccelerationMagnitude-meanFreq()" "FrequencyBodyBodyAccelerationJerkMagnitude-mean()" "FrequencyBodyBodyAccelerationJerkMagnitude-meanFreq()" "FrequencyBodyBodyGyroscopeMagnitude-mean()" "FrequencyBodyBodyGyroscopeMagnitude-meanFreq()" "FrequencyBodyBodyGyroscopeJerkMagnitude-mean()" "FrequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()" "TimeBodyAcceleration-std()-X" "TimeBodyAcceleration-std()-Y" "TimeBodyAcceleration-std()-Z" "TimeGravityAcceleration-std()-X" "TimeGravityAcceleration-std()-Y" "TimeGravityAcceleration-std()-Z" "TimeBodyAccelerationJerk-std()-X" "TimeBodyAccelerationJerk-std()-Y" "TimeBodyAccelerationJerk-std()-Z" "TimeBodyGyroscope-std()-X" "TimeBodyGyroscope-std()-Y" "TimeBodyGyroscope-std()-Z" "TimeBodyGyroscopeJerk-std()-X" "TimeBodyGyroscopeJerk-std()-Y" "TimeBodyGyroscopeJerk-std()-Z" "TimeBodyAccelerationMagnitude-std()" "TimeGravityAccelerationMagnitude-std()" "TimeBodyAccelerationJerkMagnitude-std()" "TimeBodyGyroscopeMagnitude-std()" "TimeBodyGyroscopeJerkMagnitude-std()" "FrequencyBodyAcceleration-std()-X" "FrequencyBodyAcceleration-std()-Y" "FrequencyBodyAcceleration-std()-Z" "FrequencyBodyAccelerationJerk-std()-X" "FrequencyBodyAccelerationJerk-std()-Y" "FrequencyBodyAccelerationJerk-std()-Z" "FrequencyBodyGyroscope-std()-X" "FrequencyBodyGyroscope-std()-Y" "FrequencyBodyGyroscope-std()-Z" "FrequencyBodyAccelerationMagnitude-std()" "FrequencyBodyBodyAccelerationJerkMagnitude-std()" "FrequencyBodyBodyGyroscopeMagnitude-std()" "FrequencyBodyBodyGyroscopeJerkMagnitude-std()"
