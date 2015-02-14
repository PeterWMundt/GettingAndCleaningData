\name{Course Project for 'Getting and Cleaning Data'}
\alias{read_me file - containts information about the course project for 'Getting and Cleaning Data'}

\title{Read Me - Course Project for 'Getting and Cleaning Data'}

# Introduction 

Within this course project a set of transformation has to be applied on a data set. 
The data set is the "Human Activity Recognition Using Smartphones Dataset, Version 1.0" (see the readme file within the data set folder).

## Instruction from the Project Assignment

The R script (called run_analysis.R) shall do the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Prerequisites

## Dataset 

The data for the project (downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) has to be copied into a subdirectory of the working directory. The script is configured that the name of the subdirectory is "UCI_HAR_Dataset". 

## Adjust the Script to your Environment 

Within the script two (environment) values can be adjusted: 

* The value PATH_UCI_HAR_DATASET must be set. The actual value is "./UCI_HAR_Dataset". I.e. the data set is in a subfolder "UCI_HAR_Dataset" of the R working directory.
* The value RESULT_FILE_PATH must be set. The actual value is "./result.txt". I.e. the result of the transformation will be stored in a txt file (result.txt) in the R working directory.


# Assumptions 

## Selection of Measurements 

In the project assessment it is stated 
"_Extracts only the measurements on the mean and standard deviation for each measurement_".

In the document "features_info.txt" the set of variables that were estimated from the signals are all listed. 
Those that have to be considered are: 

* **mean(): Mean value**
* **std(): Standard deviation**
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency

###Assumptions
1. only mean() and std() are considered!
2. meanFreq() is NOT  considered! *** 


# Script run_analysis.R

The script run_analysis.R does the requested transformations and can be configured (see "Adjust the Script to your Environment"). 

## Detail Steps 

These are the steps performed by the script: 
(The steps are listed in the order they are executed.)

* define path to the files that contain the data
 (change this according to your preferences!)
* define the name and the location of the result file
  (change this according to your preferences!)
  
The following steps should not be changed!   
  
* define constants
* define functions
* read the features & activity labels
* read the test & train data into data.frames in R 
* replace the names of the data sets with the feature names
* remove the meanFreq values from the data sets 
* keep the mean value and standard deviation (and skip the rest!)
* for the test & training data combine the three tables (subject, label, set) into one dataset 
* combine the test data and the training data into one dataset 
* provide appropriate (column) names for the subject and activity data 
* use descriptive activity names to name the activities in the data set
* label the data set with descriptive variable names. 
* calculate the average of each variable for each activity and each subject.
* provide appropriate (column) names for the subject and activity data 
* create the output file

# Additional Hint: Read the file back into R 

Use this statement to read the file in a data.frame (RRR): 

```
RRR <- read.table("./result.txt", header=TRUE)
```
