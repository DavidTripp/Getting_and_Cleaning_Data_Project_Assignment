# Initialization.
library(dplyr)
library(data.table)

gitDir             <- "G:/GitHub"
assignmentDir      <- file.path(gitDir, "Coursework/Coursera/DataScience/3.GettingAndCleaningData/ProgrammingAssignment")
dataDir            <- file.path(assignmentDir, "UCI HAR Dataset")

## STEP 1 - Read in the individual datasets and merge them to create one data set.
dataFeatures       <- read.table(file.path(dataDir, "features.txt"))
testDataX          <- read.table(file.path(dataDir, "test", "X_test.txt"))
testDataY          <- read.table(file.path(dataDir, "test", "Y_test.txt"))
testSubject        <- read.table(file.path(dataDir, "test", "subject_test.txt"))

trainDataX         <- read.table(file.path(dataDir, "train", "X_train.txt"))
trainDataY         <- read.table(file.path(dataDir, "train", "Y_train.txt"))
trainSubject       <- read.table(file.path(dataDir, "train", "subject_train.txt"))


allDataX             <- rbind(testDataX, trainDataX)
names(allDataX)      <- dataFeatures[,2]
allDataY             <- rbind(testDataY, trainDataY)
names(allDataY)      <- "activity.name"
allSubjects          <- rbind(testSubject, trainSubject)
names(allSubjects)   <- "subject.id"

allData       <- cbind(cbind(allSubjects, allDataY), allDataX)
### dim(allData)
### names(allData)
## STEP 1 COMPLETED

## STEP 2 - Extract only the measurements on the mean and standard deviation for each measurement.
featuresMeanStdDev <- grep("-(mean|std)\\(\\)", dataFeatures[, 2])+2
dataMeanStdDev     <- allData[,c(1, 2, featuresMeanStdDev)]
### dim(dataMeanStdDev)
### names(dataMeanStdDev)
## STEP 2 COMPLETED

## STEP 3 - Use descriptive activity names to name the activities in the data set.
activityLabels     <- read.table(file.path(dataDir, "activity_labels.txt"))
dataMeanStdDev[,2] <- activityLabels[dataMeanStdDev[,2],2]
### dim(dataMeanStdDev)
### dataMeanStdDev[1:10,1:4]
## STEP 3 COMPLETED

## STEP 4 - Appropriately label the data set with descriptive variable names.
###         Note: Variable measurement names 
namesVector  <- names(dataMeanStdDev)
namesVector  <- gsub("tBody", "time.seconds.body", namesVector, fixed = TRUE)
namesVector  <- gsub("tGravity", "time.seconds.gravity", namesVector, fixed = TRUE)
namesVector  <- gsub("fBody", "frequency.hz.body", namesVector, fixed = TRUE)
namesVector  <- gsub("fGravity", "frequency.hz.body", namesVector, fixed = TRUE)
namesVector  <- gsub("Acc", ".accelerometer", namesVector, fixed = TRUE)
namesVector  <- gsub("Gyro", ".jerk", namesVector, fixed = TRUE)
namesVector  <- gsub("Jerk", ".gyroscope", namesVector, fixed = TRUE)
namesVector  <- gsub("Mag", ".magnitude", namesVector, fixed = TRUE)
namesVector  <- gsub("Body", ".body", namesVector, fixed = TRUE)
namesVector  <- gsub("std", "standard.deviation", namesVector, fixed = TRUE)
namesVector  <- gsub("()", "", namesVector, fixed = TRUE)
namesVector  <- gsub("-", ".", namesVector, fixed = TRUE)

names(dataMeanStdDev) <- namesVector
### names(dataMeanStdDev)
## STEP 4 COMPLETED


## STEP 5 - Create a second independent tidy data set with the average of each variable for each activity and each subject.
dataTmp <- aggregate(. ~subject.id + activity.name, dataMeanStdDev, mean)
dataAggMeanStdDev <- dataTmp[order(dataTmp$subject.id,dataTmp$activity.name),]

write.table(dataAggMeanStdDev, file = file.path(assignmentDir,"aggregate_mean.txt"),row.name=FALSE)
## STEP 5 COMPLETED

