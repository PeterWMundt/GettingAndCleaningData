# run_analysis.R
# --------------
#
# This script is supposed to do this: 
#
# 1.    Merges the training and the test sets to create one data set.
# 2.        Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.        Uses descriptive activity names to name the activities in the data set
# 4.        Appropriately labels the data set with descriptive variable names. 
# 5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#

# define path to the files that contain the data
PATH_UCI_HAR_DATASET = "./UCI_HAR_Dataset"

# define the name and the location of the result file
RESULT_FILE_PATH = "./result.txt"


# define constants
TRAIN = "train"
TEST = "test"
SET_PREFIX = "X"
LABEL_PREFIX = "y"
SUBJ_PREFIX = "subject"
REG_EXP_MEAN_OR_STD = "mean|std"
REG_EXP_MEAN_FREQ = "[Mm]eanFreq"
NAME_SUBJECT = "subject"
NAME_ACTIVITY = "activity"


# define functions
getPathFor <- function(subdir, filename){
        if("" == subdir){
                paste(PATH_UCI_HAR_DATASET, filename, sep="/")
        } else {
                paste(PATH_UCI_HAR_DATASET, subdir, filename, sep="/")
        }
}

makeFilenameFor <- function(prefix, main){
        paste0(prefix, "_", main, ".txt")
}

readTable <- function(subdir, prefix){
        read.table(getPathFor( subdir, makeFilenameFor(prefix, subdir)), header=FALSE, sep="")
}

makeDescriptiveVarialeNames <- function(TS){
        names(TS) <- sub("\\(\\)", "", names(TS))
        names(TS) <- sub("-mean", "Mean", names(TS))
        names(TS) <- sub("-std", "Std", names(TS))  
        names(TS) <- sub("-", "", names(TS))  
        TS
}


# read the features & activity labels
features <- read.table(getPathFor("","features.txt"), header=FALSE, sep="")
activity_labels <- read.table(getPathFor("","activity_labels.txt"), header=FALSE, sep="")


# read the test part
testSet <- readTable(TEST, SET_PREFIX ) 
testLabel <- readTable(TEST, LABEL_PREFIX ) 
testSubject <- readTable(TEST, SUBJ_PREFIX )


# read the train part
trainingSet <- readTable(TRAIN, SET_PREFIX ) 
trainingLabel <- readTable(TRAIN, LABEL_PREFIX ) 
trainingSubject <- readTable(TRAIN, SUBJ_PREFIX ) 

# replace the names of the data sets with the feature names
names(trainingSet) <- features[[2]]
names(testSet) <- features[[2]]


# remove the meanFreq values
testSetMeanStd <- testSet[!grepl(REG_EXP_MEAN_FREQ, names(testSet))]
trainingSetMeanStd <- trainingSet[!grepl(REG_EXP_MEAN_FREQ, names(trainingSet))]


# keep the mean value and standard deviation (and skip the rest!)
testSetMeanStd <- testSetMeanStd[grepl(REG_EXP_MEAN_OR_STD, names(testSetMeanStd))]
trainingSetMeanStd <- trainingSetMeanStd[grepl(REG_EXP_MEAN_OR_STD, names(trainingSetMeanStd))]


# for the test & training data combine the three tables (subject, label, set) into one dataset 
testData <- cbind(testSubject, testLabel, testSetMeanStd)
trainingData <- cbind(trainingSubject, trainingLabel, trainingSetMeanStd)


# combine the test data and the training data into one dataset 
uciHarDataset <- rbind(testData, trainingData)


# provide appropriate (column) names for the subject and activity data 
names(uciHarDataset)[1] <- NAME_SUBJECT
names(uciHarDataset)[2] <- NAME_ACTIVITY


# use descriptive activity names to name the activities in the data set
uciHarDataset[[2]] <- activity_labels[uciHarDataset[[2]],2]


# label the data set with descriptive variable names. 
uciHarDataset <- makeDescriptiveVarialeNames(uciHarDataset)


# calculate the average of each variable for each activity and each subject.
UpperLimit <- length(uciHarDataset)
result <- aggregate(uciHarDataset[,3:UpperLimit], list(uciHarDataset$subject, uciHarDataset$activity), mean)


# provide appropriate (column) names for the subject and activity data 
names(result)[1] <- NAME_SUBJECT
names(result)[2] <- NAME_ACTIVITY


# create output 
write.table(result, RESULT_FILE_PATH, row.names=FALSE, col.names=TRUE)
