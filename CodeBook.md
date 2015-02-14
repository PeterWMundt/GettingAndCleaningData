---
title: "CodeBook for Result Data Set"
date: "February, 2015"
output: html_document
---

This is the code book for the resulting data set. 

* The first two variables describe the person and the activy that was performed by the subject. 
* All other variables of this data tables are either mean values or standard deviations of the features measured during the experiment. 
* The feature values are normalized and bounded within [-1,1].
* The prefix t denotes Time signals.
* The prefix f denotes Frequency signals.



Variable  | Description
------------- | -------------
subject       | The identifier of the subject who carried out the experiment (identified with a number between 1 and 30) 
activity    | The label of the activity executed (by the subject). Values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
tBodyAccMeanX | Mean value of the Body Acceleration in the X direction. (Time signal)
tBodyAccMeanY | Mean value of the Body Acceleration in the Y direction.  (Time signal)
tBodyAccMeanZ | Mean value of the Body Acceleration in the Z direction.  (Time signal)
tBodyAccStdX  | Standard deviation of the Body Acceleration in the X direction.  (Time signal)
tBodyAccStdY  | Standard deviation of the Body Acceleration in the Y direction. (Time signal)
tBodyAccStdZ  | Standard deviation of the Body Acceleration in the Y direction. (Time signal)
tGravityAccMeanX | Mean value of the Gravity Acceleration in the X direction. (Time signal)
tGravityAccMeanY | Mean value of the Gravity Acceleration in the Y direction. (Time signal)
tGravityAccMeanZ | Mean value of the Gravity Acceleration in the Z direction. (Time signal)
tGravityAccStdX  | Standard deviation of the Gravity Acceleration in the X direction. (Time signal)
tGravityAccStdY  | Standard deviation of the Gravity Acceleration in the Y direction. (Time signal)
tGravityAccStdZ  | Standard deviation of the Gravity Acceleration in the Z direction. (Time signal)
tBodyAccJerkMeanX  | Mean value of the Body Acceleration Jerk signal in the X direction. (Time signal)
tBodyAccJerkMeanY  | Mean value of the Body Acceleration Jerk signal in the Y direction. (Time signal)
tBodyAccJerkMeanZ  | Mean value of the Body Acceleration Jerk signal in the Z direction. (Time signal)
tBodyAccJerkStdX  | Standard deviation of the Body Acceleration Jerk signal in the X direction. (Time signal)
tBodyAccJerkStdY  | Standard deviation of the Body Acceleration Jerk signal in the Y direction. (Time signal)
tBodyAccJerkStdZ  | Standard deviation of the Body Acceleration Jerk signal in the Z direction. (Time signal)
tBodyGyroMeanX  | Mean value of the Body Gyroscope signal in the X direction. (Time signal)
tBodyGyroMeanY  | Mean value of the Body Gyroscope signal in the Y direction. (Time signal)
tBodyGyroMeanZ  | Mean value of the Body Gyroscope signal in the Z direction. (Time signal)
tBodyGyroStdX   | Standard deviation of the Body Gyroscope signal in the X direction. (Time signal)
tBodyGyroStdY   | Standard deviation of the Body Gyroscope signal in the Y direction. (Time signal)
tBodyGyroStdZ   | Standard deviation of the Body Gyroscope signal in the Z direction. (Time signal)
tBodyGyroJerkMeanX | Mean value of the Body Gyroscope Jerk signal in the X direction. (Time signal)
tBodyGyroJerkMeanY | Mean value of the Body Gyroscope Jerk signal in the Y direction. (Time signal)
tBodyGyroJerkMeanZ | Mean value of the Body Gyroscope Jerk signal in the Z direction. (Time signal)
tBodyGyroJerkStdX  | Standard deviation of the Body Gyroscope Jerk signal in the X direction. (Time signal)
tBodyGyroJerkStdY  | Standard deviation of the Body Gyroscope Jerk signal in the Y direction. (Time signal)
tBodyGyroJerkStdZ  | Standard deviation of the Body Gyroscope Jerk signal in the Z direction. (Time signal)
tBodyAccMagMean    | Mean value of the Body Acceleration magnitude using the Euclidean norm. (Time signal)
tBodyAccMagStd     | Standard deviation of the Body Acceleration magnitude using the Euclidean norm. (Time signal)
tGravityAccMagMean | Mean value of the Gravity Acceleration magnitude using the Euclidean norm. (Time signal)
tGravityAccMagStd  | Standard deviation of the Gravity Acceleration magnitude using the Euclidean norm. (Time signal)
tBodyAccJerkMagMean | Mean value of the Body Acceleration Jerk signal magnitude using the Euclidean norm. (Time signal)
tBodyAccJerkMagStd | Standard deviation of the Body Acceleration Jerk signal magnitude using the Euclidean norm. (Time signal)
tBodyGyroMagMean   | Mean value of the Body Gyroscope signal magnitude using the Euclidean norm. (Time signal)
tBodyGyroJerkMagMean | Mean value of the Body Gyroscope Jerk signal magnitude using the Euclidean norm. (Time signal)
tBodyGyroJerkMagStd | Standard deviation of the Body Gyroscope Jerk signal magnitude using the Euclidean norm. (Time signal)
fBodyAccMeanX | Mean value of the Body Acceleration in the X direction. (Frequency signal)
fBodyAccMeanY | Mean value of the Body Acceleration in the Y direction. (Frequency signal)
fBodyAccMeanZ | Mean value of the Body Acceleration in the Z direction. (Frequency signal)
fBodyAccStdX  | Standard deviation of the Body Acceleration in the X direction. (Frequency signal)
fBodyAccStdY  | Standard deviation of the Body Acceleration in the Y direction. (Frequency signal)
fBodyAccStdZ  | Standard deviation of the Body Acceleration in the Z direction. (Frequency signal)
fBodyAccJerkMeanX | Mean value of the Body Acceleration Jerk  signal in the X direction. (Frequency signal)
fBodyAccJerkMeanY | Mean value of the Body Acceleration Jerk  signal in the Y direction. (Frequency signal)
fBodyAccJerkMeanZ | Mean value of the Body Acceleration Jerk  signal in the Z direction. (Frequency signal)
fBodyAccJerkStdX  | Standard deviation of the Body Acceleration Jerk signal in the X direction. (Frequency signal)
fBodyAccJerkStdY  | Standard deviation of the Body Acceleration Jerk signal in the Y direction. (Frequency signal)
fBodyAccJerkStdZ  | Standard deviation of the Body Acceleration Jerk signal in the Z direction. (Frequency signal)
fBodyGyroMeanX | Mean value of the Body Gyroscope signal in the X direction. (Frequency signal)
fBodyGyroMeanY | Mean value of the Body Gyroscope signal in the Y direction. (Frequency signal)
fBodyGyroMeanZ | Mean value of the Body Gyroscope signal in the Z direction. (Frequency signal)
fBodyGyroStdX | Standard deviation of the Body Gyroscope signal in the X direction. (Frequency signal)
fBodyGyroStdY | Standard deviation of the Body Gyroscope signal in the Y direction. (Frequency signal)
fBodyGyroStdZ | Standard deviation of the Body Gyroscope signal in the Z direction. (Frequency signal)
fBodyAccMagMean | Mean value of the Body Acceleration magnitude using the Euclidean norm. (Frequency signal)
fBodyAccMagStd  | Standard deviation of the Body Acceleration magnitude using the Euclidean norm. (Frequency signal)
fBodyBodyAccJerkMagMean | Mean value of the Body Acceleration Jerk signal magnitude using the Euclidean norm. (Frequency signal)
fBodyBodyAccJerkMagStd | Standard deviation of the Body Acceleration Jerk signal magnitude using the Euclidean norm. (Frequency signal)
fBodyBodyGyroMagMean  | Mean value of the Body Gyroscope magnitude using the Euclidean norm. (Frequency signal)
fBodyBodyGyroMagStd  | Standard deviation of the Body Gyroscope magnitude using the Euclidean norm. (Frequency signal)
fBodyBodyGyroJerkMagMean | Mean value of the Body Gyroscope Jerk signal magnitude using the Euclidean norm. (Frequency signal)
fBodyBodyGyroJerkMagStd | Standard deviation of the Body Gyroscope Jerk signal magnitude using the Euclidean norm. (Frequency signal)

