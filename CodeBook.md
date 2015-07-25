---
title: "CodeBook"
author: "Tee"
date: "Friday, July 24, 2015"
output: html_document
---

## Project Description
This project is about the assignment in course3 - Getting and Cleaning Data, offered by John Hopkins University.
The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for analysis.
The raw data for this project comes from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", which is a dataset obtained from Human Activity Recognition Using Smartphones by Università degli Studi di Genova, Italy.
The data are obtained from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The obtained dataset was partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Description of variables in the RAW dataset
The variables in the database are from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ, body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ), Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ) and magnitude of these three-dimensional signals (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag) in time domain (as denoted by "t"). By using Fast Fourier Transform, the time domain variables are transformed into frequency domain (as indicated by "f") variables as fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

For all the variables in the dataset, it is UNITLESS because of the data are normalized and bounded within [-1,1].
Therefore, we can ignore the unit during later analysis.

##Description of the variables in final tidy data set (final_data_PROJECT.txt / Final_Data) file
This section describes information about variables in the final tidy data set which is available in the data inside "Final_Data" or "final_data_PROJECT.txt".
 - Dimensions of the dataset : 180 rows (observations) and 81 columns (variables)
 - Unit of measurement : Unitless (all data are normalized within [-1,1]!)
 - Variable 1 = 'subject', class is integer, 30 unique values represent 30 volunteers for the experiment.
 - Variable 2 = 'activity', class is factor, 6 unique characters represent 6 possible motions/activities.
 - Variable 3 = 'TimeBodyAccelerometer.mean.x.axis'
 - variable 4 = 'TimeBodyAccelerometer.mean.y.axis'
 - Variable 5 = 'TimeBodyAccelerometer.mean.z.axis'
 - Variable 6 = 'TimeBodyAccelerometer.StandardDeviation.x.axis'
 - Variable 7 = 'TimeBodyAccelerometer.StandardDeviation.y.axis'
 - Variable 8 = 'TimeBodyAccelerometer.StandardDeviation.z.axis'
 - Variable 9 = 'TimeGravityAccelerometer.mean.x.axis'
 - Variable 10 = 'TimeGravityAccelerometer.mean.y.axis'
 - variable 11 = 'TimeGravityAccelerometer.mean.z.axis'
 - Variable 12 = 'TimeGravityAccelerometer.StandardDeviation.x.axis'
 - Variable 13 = 'TimeGravityAccelerometer.StandardDeviation.y.axis'
 - Variable 14 = 'TimeGravityAccelerometer.StandardDeviation.z.axis'
 - Variable 15 = 'TimeBodyAccelerometerJerk.mean.x.axis'
 - Variable 16 = 'TimeBodyAccelerometerJerk.mean.y.axis'
 - Variable 17 = 'TimeBodyAccelerometerJerk.mean.z.axis'
 - Variable 18 = 'TimeBodyAccelerometerJerk.StandardDeviation.x.axis'
 - Variable 19 = 'TimeBodyAccelerometerJerk.StandardDeviation.y.axis'
 - Variable 20 = 'TimeBodyAccelerometerJerk.StandardDeviation.z.axis'
 - Variable 21 = 'TimeBodyGyroscope.mean.x.axis'
 - Variable 22 = 'TimeBodyGyroscope.mean.y.axis'
 - Variable 23 = 'TimeBodyGyroscope.mean.z.axis'
 - Variable 24 = 'TimeBodyGyroscope.StandardDeviation.x.axis'
 - Variable 25 = 'TimeBodyGyroscope.StandardDeviation.y.axis'
 - Variable 26 = 'TimeBodyGyroscope.StandardDeviation.z.axis'
 - Variable 27 = 'TimeBodyGyroscopeJerk.mean.x.axis'
 - Variable 28 = 'TimeBodyGyroscopeJerk.mean.y.axis'
 - Variable 29 = 'TimeBodyGyroscopeJerk.mean.z.axis'
 - Variable 30 = 'TimeBodyGyroscopeJerk.StandardDeviation.x.axis'
 - Variable 31 = 'TimeBodyGyroscopeJerk.StandardDeviation.y.axis'
 - Variable 32 = 'TimeBodyGyroscopeJerk.StandardDeviation.z.axis'
 - Variable 33 = 'TimeBodyAccelerometerMagnitude.mean'
 - Variable 34 = 'TimeBodyAccelerometerMagnitude.StandardDeviation'
 - Variable 35 = 'TimeGravityAccelerometerMagnitude.mean'
 - Variable 36 = 'TimeGravityAccelerometerMagnitude.StandardDeviation'
 - Variable 37 = 'TimeBodyAccelerometerJerkMagnitude.mean'
 - Variable 38 = 'TimeBodyAccelerometerJerkMagnitude.StandardDeviation'
 - Variable 39 = 'TimeBodyGyroscopeMagnitude.mean'
 - Variable 40 = 'TimeBodyGyroscopeMagnitude.StandardDeviation'
 - Variable 41 = 'TimeBodyGyroscopeJerkMagnitude.mean'
 - Variable 42 = 'TimeBodyGyroscopeJerkMagnitude.StandardDeviation'
 - Variable 43 = 'FrequencyBodyAccelerometer.mean.x.axis'
 - Variable 44 = 'FrequencyBodyAccelerometer.mean.y.axis'
 - Variable 45 = 'FrequencyBodyAccelerometer.mean.z.axis'
 - Variable 46 = 'FrequencyBodyAccelerometer.StandardDeviation.x.axis'
 - Variable 47 = 'FrequencyBodyAccelerometer.StandardDeviation.y.axis'
 - Variable 48 = 'FrequencyBodyAccelerometer.StandardDeviation.z.axis'
 - Variable 49 = 'FrequencyBodyAccelerometer.meanFreq.x.axis'
 - Variable 50 = 'FrequencyBodyAccelerometer.meanFreq.y.axis'
 - Variable 51 = 'FrequencyBodyAccelerometer.meanFreq.z.axis'
 - Variable 52 = 'FrequencyBodyAccelerometerJerk.mean.x.axis'
 - Variable 53 = 'FrequencyBodyAccelerometerJerk.mean.y.axis'
 - Variable 54 = 'FrequencyBodyAccelerometerJerk.mean.z.axis'
 - Variable 55 = 'FrequencyBodyAccelerometerJerk.StandardDeviation.x.axis'
 - Variable 56 = 'FrequencyBodyAccelerometerJerk.StandardDeviation.y.axis'
 - Variable 57 = 'FrequencyBodyAccelerometerJerk.StandardDeviation.z.axis'
 - Variable 58 = 'FrequencyBodyAccelerometerJerk.meanFreq.x.axis'
 - Variable 59 = 'FrequencyBodyAccelerometerJerk.meanFreq.y.axis'
 - Variable 60 = 'FrequencyBodyAccelerometerJerk.meanFreq.z.axis'
 - Variable 61 = 'FrequencyBodyGyroscope.mean.x.axis'
 - Variable 62 = 'FrequencyBodyGyroscope.mean.y.axis'
 - Variable 63 = 'FrequencyBodyGyroscope.mean.z.axis'
 - Variable 64 = 'FrequencyBodyGyroscope.StandardDeviation.x.axis'
 - Variable 65 = 'FrequencyBodyGyroscope.StandardDeviation.y.axis'
 - Variable 66 = 'FrequencyBodyGyroscope.StandardDeviation.z.axis'
 - Variable 67 = 'FrequencyBodyGyroscope.meanFreq.x.axis'
 - Variable 68 = 'FrequencyBodyGyroscope.meanFreq.y.axis'
 - Variable 69 = 'FrequencyBodyGyroscope.meanFreq.z.axis'
 - Variable 70 = 'FrequencyBodyAccelerometerMagnitude.mean'
 - Variable 71 = 'FrequencyBodyAccelerometerMagnitude.StandardDeviation'
 - Variable 72 = 'FrequencyBodyAccelerometerMagnitude.meanFreq'
 - Variable 73 = 'FrequencyBodyAccelerometerJerkMagnitude.mean'
 - Variable 74 = 'FrequencyBodyAccelerometerJerkMagnitude.StandardDeviation'
 - Variable 75 = 'FrequencyBodyAccelerometerJerkMagnitude.meanFreq'
 - Variable 76 = 'FrequencyBodyGyroscopeMagnitude.mean
 - Variable 77 = 'FrequencyBodyGyroscopeMagnitude.StandardDeviation'
 - Variable 78 = 'FrequencyBodyGyroscopeMagnitude.meanFreq'
 - Variable 79 = 'FrequencyBodyGyroscopeJerkMagnitude.mean'
 - Variable 80 = 'FrequencyBodyGyroscopeJerkMagnitude.StandardDeviation'
 - Variable 81 = 'FrequencyBodyGyroscopeJerkMagnitude.meanFreq'
class for Variable 3 to Variable 81 are numeric.
The data for Variable 3 to Variable 81 are either related to mean or standard deviation of the measurements.
The meaning of the Variable 3 to Variable 81 can be understood by the same way, for example, Variable 3 = 'TimeBodyAccelerometer.mean.x.axis', represents the mean value of the time domain signal for body accelerometer along x-axis.


## Study design and data processing - Detail of the written R code

#### ---step 1: Merges the training and the test sets to create one data set---
######- download zip file to current working directory and unzip the file  
url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'  
file <- basename(url)  
download.file(url, file)  
unzip(file)  

######- read Train (x,y & subject) data from files in working directory 
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")  
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")  
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")      

######- read Test (x,y & subject) data from files in working directory
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")  
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")                
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")    

######- read features (variables) data from file in working directory
features <- read.table("UCI HAR Dataset/features.txt")            

######- read activity_labels data from file in working directory
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")


######- each Train and Test data has 7352 and 2947 observations respectively    
######- row combined train and test data separately first, so that train&test each has 7352+2947 observations 
x_train_test <- rbind(x_train,x_test)  
y_train_test <- rbind(y_train,y_test)  
subject_train_test <- rbind(subject_train,subject_test)  

######- assign col name to x_train_test with names obtain from "features"
colnames(x_train_test) <- features[,2]
#assign col name to y_train_test with names of "activity"
colnames(y_train_test) <- c("activity")
#assign col name to subject_train_test with names of "subject"
colnames(subject_train_test) <- c("subject")


#-----Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.----#
x_train_test_extract <- x_train_test[,grep("mean|std",names(x_train_test))] 

#columns bind the subject, train and test(extracted) data into single data set
subject_train_test_extract <- cbind(subject_train_test,y_train_test,x_train_test_extract)


#---Step 3: Uses descriptive activity names to name the activities in the data set-----------------
subject_train_test_extract$activity <- activity_labels[subject_train_test_extract$activity,2]


#--- Step 4: Appropriately labels the data set with descriptive variable names. 
names(subject_train_test_extract) <- gsub("BodyBody", "Body", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("Acc", "Accelerometer", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("Gyro", "Gyroscope", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("Mag", "Magnitude", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("()", "", names(subject_train_test_extract), fixed=TRUE)
names(subject_train_test_extract) <- gsub("X", "x-axis", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("Y", "y-axis", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("Z", "z-axis", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("^t", "Time", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("^f", "Frequency", names(subject_train_test_extract))
names(subject_train_test_extract) <- gsub("std", "StandardDeviation", names(subject_train_test_extract))


#--- Step 5:From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Final <- subject_train_test_extract

#computed the mean for each variable for each activity and each subject
attach(Final)
aggdata <-aggregate(Final, by=list(subject,activity), FUN=mean, na.rm=TRUE)
detach(Final)
#arrange the subject and activity according to increasing number(1,2,..,30) and alphabet(a,b,..,z)
aggdata<-aggdata[order(aggdata$Group.1, aggdata$Group.2),]
aggdata$activity <- aggdata$Group.2
#Set the rownames to NULL to remove them:
rownames(aggdata) <- NULL  
#final data by removing unwanted first two columns created during aggregate() function
Final_Data <- aggdata[,3:ncol(aggdata)]

#Write data into txt file with file name of "final_data_Project"
write.table(Final_Data, "final_data_PROJECT.txt", sep="\t", row.names=FALSE) 
#to read the saved "final_data_PROJECT.txt" file in Rstudio
mydata = read.table("final_data_PROJECT.txt",header = TRUE)



###Collection of the raw data
Description of how the data was collected.


##Creating the tidy datafile

###Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()


##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)


