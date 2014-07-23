## Read the data files

zip <- download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "~/data.zip", method="curl")
unzip("~/data.zip")

subject_test <- scan("~/UCI HAR Dataset/test/subject_test.txt")
X_test <- scan("~/UCI HAR Dataset/test/X_test.txt")
Y_test <- scan("~/UCI HAR Dataset/test/Y_test.txt")

subject_train <- scan("~/UCI HAR Dataset/train/subject_train.txt")
X_train <- scan("~/UCI HAR Dataset/train/X_train.txt")
Y_train <- scan("~/UCI HAR Dataset/train/Y_train.txt")

## Merge the training and the test sets to create one data set

dim(X_train) <- c(7352,561)
dim(X_test) <- c(2947,561)

test <- as.data.frame(cbind(X_test,subject_test,Y_test))
train <- as.data.frame(cbind(X_train,subject_train,Y_train))

names(test) <- 1:563
names(train) <- 1:563

tidyData <- rbind(test,train)

## Extract only the measurements on the mean and standard deviation for each measurement

tidyData <- tidyData[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227, 228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 503, 504, 516, 517, 529, 530, 542, 543, 562, 563)]

## Use descriptive activity names to name the activities in the data set

library(plyr)
tidyData$"563" <- factor(tidyData$"563")

## Appropriately label the data set with descriptve variable names

tidyData$"563" <- mapvalues(tidyData$"563", from=(1:6), to = c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

features <- read.table("~/desktop/UCI HAR Dataset/features.txt")
features <- as.vector(features$V2)
features <- features[c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227, 228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 503, 504, 516, 517, 529, 530, 542, 543)]
features <- c(features, "Subject", "Activity")
names(tidyData) <- features

## Create a second, independent tidy data set with the average of each variable for each activity and each subject

tidyDataMean1 <- split(tidyData, list(tidyData$Subject, tidyData$Activity))

tidyDataMean2 <- lapply(tidyDataMean, function(x) colMeans(x[,c(1:66)]))
tidyDataMean <- do.call(rbind, tidyDataMean2)