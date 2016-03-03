# CODEBOOK

## Overview

The source dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) consists of 12999 observations of 561 different measurements. Each observation refers to an activity performed by a subject, and each subject may perform different observations of the same activity. The initial dataset is cleaned up to only 79 measurements since only "mean" and "std" analysis is required. Finally the measurements of interest are averaged by subject and activity to produce the required output file called "tidy_dataframe.txt"

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

More details can be found in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Naming convention

- "t" refers to time-domain, while "f" refers to frequency domain.
- "Body" refers to body measurements, while "Gravity" refers to gravity measurements.
- "Acc" refers to accelerometer, while "Gyro" referes gyroscope.
- Some measurements are taken in the 3 dimensions (X,Y,Z). 
- "_avg" refers to the average of that measurement per subject and activity.

## Variables in "tidy_dataframe.txt"

 - subject_id: from 1 to 30.
 - activity name: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
 - tBodyAcc-mean()-X_avg 
 - tBodyAcc-mean()-Y_avg 
 - tBodyAcc-mean()-Z_avg 
 - tBodyAcc-std()-X_avg 
 - tBodyAcc-std()-Y_avg 
 - tBodyAcc-std()-Z_avg 
 - tGravityAcc-mean()-X_avg 
 - tGravityAcc-mean()-Y_avg 
 - tGravityAcc-mean()-Z_avg 
 - tGravityAcc-std()-X_avg 
 - tGravityAcc-std()-Y_avg 
 - tGravityAcc-std()-Z_avg 
 - tBodyAccJerk-mean()-X_avg 
 - tBodyAccJerk-mean()-Y_avg 
 - tBodyAccJerk-mean()-Z_avg 
 - tBodyAccJerk-std()-X_avg 
 - tBodyAccJerk-std()-Y_avg 
 - tBodyAccJerk-std()-Z_avg 
 - tBodyGyro-mean()-X_avg 
 - tBodyGyro-mean()-Y_avg 
 - tBodyGyro-mean()-Z_avg 
 - tBodyGyro-std()-X_avg 
 - tBodyGyro-std()-Y_avg 
 - tBodyGyro-std()-Z_avg 
 - tBodyGyroJerk-mean()-X_avg 
 - tBodyGyroJerk-mean()-Y_avg 
 - tBodyGyroJerk-mean()-Z_avg 
 - tBodyGyroJerk-std()-X_avg 
 - tBodyGyroJerk-std()-Y_avg 
 - tBodyGyroJerk-std()-Z_avg 
 - tBodyAccMag-mean()_avg 
 - tBodyAccMag-std()_avg 
 - tGravityAccMag-mean()_avg 
 - tGravityAccMag-std()_avg 
 - tBodyAccJerkMag-mean()_avg 
 - tBodyAccJerkMag-std()_avg 
 - tBodyGyroMag-mean()_avg 
 - tBodyGyroMag-std()_avg 
 - tBodyGyroJerkMag-mean()_avg 
 - tBodyGyroJerkMag-std()_avg 
 - fBodyAcc-mean()-X_avg 
 - fBodyAcc-mean()-Y_avg 
 - fBodyAcc-mean()-Z_avg 
 - fBodyAcc-std()-X_avg 
 - fBodyAcc-std()-Y_avg 
 - fBodyAcc-std()-Z_avg 
 - fBodyAcc-meanFreq()-X_avg 
 - fBodyAcc-meanFreq()-Y_avg 
 - fBodyAcc-meanFreq()-Z_avg 
 - fBodyAccJerk-mean()-X_avg 
 - fBodyAccJerk-mean()-Y_avg 
 - fBodyAccJerk-mean()-Z_avg 
 - fBodyAccJerk-std()-X_avg 
 - fBodyAccJerk-std()-Y_avg 
 - fBodyAccJerk-std()-Z_avg 
 - fBodyAccJerk-meanFreq()-X_avg 
 - fBodyAccJerk-meanFreq()-Y_avg 
 - fBodyAccJerk-meanFreq()-Z_avg 
 - fBodyGyro-mean()-X_avg 
 - fBodyGyro-mean()-Y_avg 
 - fBodyGyro-mean()-Z_avg 
 - fBodyGyro-std()-X_avg 
 - fBodyGyro-std()-Y_avg 
 - fBodyGyro-std()-Z_avg 
 - fBodyGyro-meanFreq()-X_avg 
 - fBodyGyro-meanFreq()-Y_avg 
 - fBodyGyro-meanFreq()-Z_avg 
 - fBodyAccMag-mean()_avg 
 - fBodyAccMag-std()_avg 
 - fBodyAccMag-meanFreq()_avg 
 - fBodyBodyAccJerkMag-mean()_avg 
 - fBodyBodyAccJerkMag-std()_avg 
 - fBodyBodyAccJerkMag-meanFreq()_avg 
 - fBodyBodyGyroMag-mean()_avg 
 - fBodyBodyGyroMag-std()_avg 
 - fBodyBodyGyroMag-meanFreq()_avg 
 - fBodyBodyGyroJerkMag-mean()_avg 
 - fBodyBodyGyroJerkMag-std()_avg 
 - fBodyBodyGyroJerkMag-meanFreq()_avg 