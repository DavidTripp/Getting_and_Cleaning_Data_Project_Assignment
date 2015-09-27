run_analysis
============
Last updated 2015-09-27 17:37:31.


Project Instructions
------------------------

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

>      1) a tidy data set as described below
>      2) a link to a Github repository with your script for performing the analysis
>      3) a code book that describes the variables, the data, and any transformations or work that you 
>         performed to clean up the data called CodeBook.md. 

> You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
> 
> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
> 
> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
> 
> Here are the data for the project: 
> 
> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
> 
> You should create one R script called run_analysis.R that does the following. 
> 
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set.
> 4. Appropriately label the data set with descriptive variable names.
> 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


Implementation Description
------------------------

> In this section I will describe the steps taken and the code utilized to accomplish the five steps listed above.

> * Note: If you do not have the 'dplyr' and 'data.table' packages installed, you must install them before running this script.


Pre-processing initialization. 
------------------------
--> Load required libraries
```r
library(dplyr)
library(data.table)
```

--> Set directory variables for the location of the GIT directory, the directory containg the project assignment,
    and the directory containing the downloaded and unzipped dataset.
```r
gitDir             <- "G:/GitHub"
assignmentDir      <- file.path(gitDir, "Coursework/Coursera/DataScience/3.GettingAndCleaningData/ProgrammingAssignment")
dataDir            <- file.path(assignmentDir, "UCI HAR Dataset")
```

Now we can proceed with the steps outlined in the project instructions

STEP 1          - Read in the individual datasets and merge them to create one data set.
------------------------

--> Populate dataframes by reading each of the relevant files for this assignment.
```r
dataFeatures       <- read.table(file.path(dataDir, "features.txt"))
testDataX          <- read.table(file.path(dataDir, "test", "X_test.txt"))
testDataY          <- read.table(file.path(dataDir, "test", "Y_test.txt"))
testSubject        <- read.table(file.path(dataDir, "test", "subject_test.txt"))

trainDataX         <- read.table(file.path(dataDir, "train", "X_train.txt"))
trainDataY         <- read.table(file.path(dataDir, "train", "Y_train.txt"))
trainSubject       <- read.table(file.path(dataDir, "train", "subject_train.txt"))
```

--> Merge the dataframe rows for each type of data and then assign initial variable names.
```r
allDataX             <- rbind(testDataX, trainDataX)
names(allDataX)      <- dataFeatures[,2]
allDataY             <- rbind(testDataY, trainDataY)
names(allDataY)      <- "activity.name"
allSubjects          <- rbind(testSubject, trainSubject)
names(allSubjects)   <- "subject.id"
```

--> Merge the dataframe columns in the desired order.
```r
allData              <- cbind(cbind(allSubjects, allDataY), allDataX)
```


STEP 2          - Extract only the measurements on the mean and standard deviation for each measurement.
------------------------

```r
featuresMeanStdDev <- grep("-(mean|std)\\(\\)", dataFeatures[, 2])+2
dataMeanStdDev     <- allData[,c(1, 2, featuresMeanStdDev)]
```

STEP 3          - Use descriptive activity names to name the activities in the data set.
------------------------

```r
activityLabels     <- read.table(file.path(dataDir, "activity_labels.txt"))
dataMeanStdDev[,2] <- activityLabels[dataMeanStdDev[,2],2]
```

STEP 4          - Appropriately label the data set with descriptive variable names.
------------------------

--> Assign the current variable names to a vector then remove or transform invalid characters and expand abbreviations.
--> Once the vector is scrubbed we override the dataset names with the scrubbed names.
```r
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
```


STEP 5          - Create a second independent tidy data set with the average of each variable for each activity and each subject.
------------------------

```r
dataTmp <- aggregate(. ~subject.id + activity.name, dataMeanStdDev, mean)
dataAggMeanStdDev <- dataTmp[order(dataTmp$subject.id,dataTmp$activity.name),]

write.table(dataAggMeanStdDev, file = file.path(assignmentDir,"aggregate_mean.txt"),row.name=FALSE)
```
