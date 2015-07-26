---
title: "README"
author: "Tee"
date: "Friday, July 24, 2015"
output: html_document
---

## Project General Description
This project is to create tidy data from raw data collected from the accelerometers from the Samsung Galaxy S smartphone which is available from this website "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" or directly download from this link "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip".  
In order to create tidy data with the requirement (dataset with measurement of mean or standard deviation for each variable and each activity for each subject), you can just run the script with file name of "run_analysis.R" and follow the instruction in the next section of this README.md file.  

## How to RUN the run_analysis.R script
to run the script, you do not need to type any command, just need to follow the script and RUN the codes as listed in the following 14 steps.
######1) set your desire working directory with setwd() command
######2) copy and paste the run_analysis.R file into the working directory so that you can run the script
######3) download and unzip the 59.7MB data file into working directory by RUN code in lines 4-7 of the script
######4) RUN code in lines 11-24 to read the require data set into Global Environment  
######5) RUN code in lines 28-37 to name all variables and combine data separately
######6) RUN code in lines 41-44 to extracts only the measurements on the mean and standard deviation for each measurement and combine the data into one dataset. At this output stage, the data should have 10299 observations and 81 variables
######7) RUN code in line 48, then the data in activity variable should becomes text/character like STANDING, LAYING and etcetc
######8) RUN code in lines 52-62 to label/rename the dataset variables into more descriptive variable names
######9) RUN code in line 66 to create another same dataset as the output from previous step 8th so that any mistake in the following command do not cause the user to re-run the code from beginning.
######10) RUN code in lines 69-71 to computed the mean for each variable for each activity and each subject. The output dataset of this step consists of 180 observations and 83 variables. Also noted that a warning message "There were 50 or more warnings (use warnings() to see the first 50)" appears when RUN code in line 70, you can ignore this warning message because it is due to the data in activity variable is not numeric, therefore mean() function cannot be applied to it (it produces NAs). Don't worry, the output dataset is correct!!!
######11) RUN code in lines 73-76 to arrange the entire dataset according to increasing number (1,2,..,30 for subject variable) and alphabet(a,b,..,z for activity variable), and remove the unwanted rownames.
######12) the final tidy dataset is obtained by RUN code in line 78. The final tidy dataset consists of 180 observations and 81 variables. Verify your output dataset is in the same dimension as mine!
######13) finally, write the final tidy dataset into text file (final_data_PROJECT.txt) by RUN code in line 81 and automatic save it into current working directory. :)
######14) if you want to read back the final_data_PROJECT.txt file, RUN code in line 83, never use Notepad for Window OS to open the text file.  


### Notes
-You DO NOT need to install/load any packages to obtain the final tidy dataset by using my run_analysis.R script.    
-The run_analysis.R script was created in Window OS, but i believe it works for other OS too.  
