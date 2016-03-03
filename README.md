# README

## run_analysis.R 

 The script needs to be placed in the same level as the folder "UCI HAR Dataset" that contains the input data. The script comprises the following steps:
 - Get activity and feature labels.
 - Get train and test data associated to its corresponding activity and subject.
 - Assign activity and feature labels to the datasets.
 - Merge both datasets
 - Remove all measurements except "mean" and "std" measurements.
 - Calculate the average per activity and subject for each measurement.
 
## tidy_dataframe.txt
 - A .txt file containing the average of each measurement per subject and activity. 

## CodeBook.md
 - A markdown file describing the analysis procedure and the variables.