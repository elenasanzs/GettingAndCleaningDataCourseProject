# install plyr
install.packages("plyr")
library(plyr)
setwd("C:/Localdata/CURSOS/BIG DATA/COURSERA/GettingAndCleaningData/UCI HAR Dataset/")
# download data -> manually
# Save the datasets from the zip 
activityLabels <- read.table("activity_labels.txt", header = FALSE)
features <- read.table("features.txt", header = FALSE)
setwd("C:/Localdata/CURSOS/BIG DATA/COURSERA/GettingAndCleaningData/UCI HAR Dataset/test") 
subjectTest <- read.table("subject_test.txt", header = FALSE)
x_test <- read.table("X_test.txt", header = FALSE)
y_test <- read.table("y_test.txt", header = FALSE)
setwd("C:/Localdata/CURSOS/BIG DATA/COURSERA/GettingAndCleaningData/UCI HAR Dataset/train") 
subjectTrain <- read.table("subject_train.txt", header = FALSE)
x_train <- read.table("X_train.txt", header = FALSE)
y_train <- read.table("y_train.txt", header = FALSE)

# Uses descriptive activity names to name the activities in the data set
colnames(x_test) <- features[,2]
colnames(x_train) <- features[,2]
colnames(y_test) <- "activityID"
colnames(y_train) <- "activityID"
colnames(subjectTest) <- "subjectID"
colnames(subjectTrain) <- "subjectID"
colnames(activityLabels) <- c("activityID","activityType")
# Merges the training and the test sets to create one data set.
dataSubject <- rbind(subjectTrain, subjectTest)
dataY<- rbind(y_train, y_test)
dataX<- rbind(x_train, x_test)
Combine <- cbind(dataSubject, dataY)
FinalData <- cbind(dataX, Combine)
### set names to variables
# Extract only the measurements on the mean and standard deviation for each measurement.
sapply(dataSubject, mean, na.rm=TRUE)  
sapply(dataSubject, sd, na.rm=TRUE) 
sapply(dataX, mean, na.rm=TRUE)  
sapply(dataX, sd, na.rm=TRUE)  
sapply(dataY, mean, na.rm=TRUE)  
sapply(dataY, sd, na.rm=TRUE) 

# Appropriately labels the data set with descriptive variable names.
#names(FinalData)
names(FinalData)<-gsub("^t", "Time", names(FinalData))
names(FinalData)<-gsub("^f", "Frequency", names(FinalData))
names(FinalData)<-gsub("Acc", "Accelerometer", names(FinalData))
names(FinalData)<-gsub("Gyro", "Gyroscope", names(FinalData))
names(FinalData)<-gsub("Mag", "Magnitude", names(FinalData))
names(FinalData)<-gsub("BodyBody", "Body", names(FinalData))
# From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject
tidyData<-aggregate(. ~subjectID + activityID, FinalData, mean)
tidyData<-tidyData[order(tidyData$subjectID,tidyData$activityID),]
write.table(tidyData, file = "tidydata.txt",row.name=FALSE)
tidyData
