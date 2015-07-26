# ---step 1: Merges the training and the test sets to create one data set---#

#download zip file to current working directory
url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
file <- basename(url)
download.file(url, file)
unzip(file)

# ---------- read data from files --------------------#
## Train (except data from Inertial Signals folder) ##
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")              #6 types of activities 
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")  #number of volunteers (total 30)

## Test (except data from Inertial Signals folder) ##
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")              #6 types of activities 
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")  #number of volunteers (total 30)

## features ##
features <- read.table("UCI HAR Dataset/features.txt")          #Variables of the features

## Activity Labels ##
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
#-----------------------------------------------------#

#combined(row) train and test data separately first, so that train&test each has 7352+2947 observations 
x_train_test <- rbind(x_train,x_test)
y_train_test <- rbind(y_train,y_test)
subject_train_test <- rbind(subject_train,subject_test)

#assign col name to x_train_test with names obtain from "features"
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
#final data by removing unwanted first two columns (variable Group.1 and variable Group.2)created during aggregate() function
Final_Data <- aggdata[,3:ncol(aggdata)]

#Write data into txt file with file name of "final_data_Project"
write.table(Final_Data, "final_data_PROJECT.txt", sep="\t", row.names=FALSE) 
#to read the saved "final_data_PROJECT.txt" file in Rstudio
mydata = read.table("final_data_PROJECT.txt",header = TRUE)

