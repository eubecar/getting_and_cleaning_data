run_analysis <- function() {
  
  # Read activity labels from "activity_labels.txt"
  activity <- read.table( "UCI HAR Dataset/activity_labels.txt",
                          col.names=c("activity_id","activity_name") );
  
  # Read feature labels from "features.txt"
  feature <- read.table( "UCI HAR Dataset/features.txt",
                         col.names=c("feature_id","feature_name") );  
  
  # Add the suffix "_avg" to each feature
  feature$feature_name <- sapply( feature$feature_name , paste0, "_avg");
  
  # Read activity_id for each test from "y_test.txt"
  activity_test <- read.table( "UCI HAR Dataset/test/y_test.txt", 
                               col.names ="activity_id" );  
  
  # Make readable activity_id
  activity_test$activity_name <- factor( activity_test$activity_id, 
                                         levels = activity$activity_id, 
                                         labels = activity$activity_name )
  
  # Read subject_id for each test from "subject_test.txt"
  subject_test <- read.table( "UCI HAR Dataset/test/subject_test.txt", 
                              col.names ="subject_id" );  
  
  # Read data for each test from "X_test" and assign readible labels
  data_test <- read.table( "UCI HAR Dataset/test/X_test.txt", 
                           col.names = feature$feature_name,
                           check.names = FALSE );  
  
  # Bind activity_test, subject_test and data_test 
  test <- cbind( activity_test, subject_test, data_test )
  
  # Read activity_id for each train from "y_train.txt"
  activity_train <- read.table( "UCI HAR Dataset/train/y_train.txt", 
                                col.names ="activity_id" );  
  
  # Make readable activity_id
  activity_train$activity_name <- factor( activity_train$activity_id, 
                                          levels = activity$activity_id, 
                                          labels = activity$activity_name )
  
  # Read subject_id for each test from "subject_train.txt"
  subject_train <- read.table( "UCI HAR Dataset/train/subject_train.txt", 
                               col.names ="subject_id" );  
  
  # Read data for each test from "X_train" and assign readible labels
  data_train <- read.table( "UCI HAR Dataset/train/X_train.txt", 
                            col.names =feature$feature_name,
                            check.names = FALSE ); 
  
  # Bind activity_train, subject_train and data_train 
  train <-cbind( activity_train, subject_train, data_train )  
  
  # Merge both dataframes (test and train)
  merged_dataframe <- rbind( test, train )
  
  # Select activity_name and subject_id plus mean and std measurements
  index <- grep("mean|std",names(merged_dataframe));
  avg_std_dataframe <-  merged_dataframe[,c(2,3,index)];
  
  # Load "dplyr" library
  library(dplyr)
  
  # Group data by subject_id and activity_name
  grouped<-group_by( avg_std_dataframe, subject_id, activity_name );
  
  # Generate a tidy dataframe with average values
  tidy_dataframe <- summarise_each( grouped,funs(mean) );
  
  # Write the tidy dataframe in a TXT file without headers
  write.table( tidy_dataframe,"tidy_dataframe.txt", row.name=FALSE );  
  
}
