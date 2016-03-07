run_analysis <- function(){
  print("Getting and Cleaning Data Course Project for Coursera")
  print("Created by Umar Iyoob")

  # loading training data
  print("Loading training data...")
  subject_train = read.table("data/train/subject_train.txt")
  X_train = read.table("data/train/X_train.txt")
  y_train = read.table("data/train/Y_train.txt")
  print("training data loaded successfully!")
  
  # loading test data  
  print("Loading test data...")
  subject_test = read.table("data/test/subject_test.txt")
  X_test = read.table("data/test/X_test.txt")
  y_test = read.table("data/test/Y_test.txt")
  print("test data loaded successfully!")
  
  
  
  # load features label information
  print("Loading features label data...")
  features <- read.table("data/features.txt", 
                         col.names=c("featureId", "featureLabel"))
  includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", 
                           features$featureLabel)
  print("features data loaded successfully!")
  
  
  
  # load activity label information
  print("Loading activity label data...")
  activities <- read.table("data/activity_labels.txt", 
                           col.names=c("activityId", "activityLabel"))
  activities$activityLabel <- gsub("_", "", 
                                   as.character(activities$activityLabel))
  print("activity data loaded successfully!")
  
  
  # merge training and test data and then name them
  print("Merging the training and the test sets to create one data set...")
  subject <- rbind(subject_test, subject_train)
  names(subject) <- "subjectId"
  X <- rbind(X_test, X_train)
  X <- X[, includedFeatures]
  names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
  y <- rbind(y_test, y_train)
  names(y) = "activityId"
  activity <- merge(y, activities, by="activityId")$activityLabel
  data <- cbind(subject, X, activity)
  write.table(data, "train_test_tidy_data.txt")
  print("Merged data set 'train_test_tidy_data.txt' created.")
  
  # From the data set in previous set named 'data', creates a second, 
  # independent tidy data set with the average of each variable for each 
  # activity and each subject.
  print("Creating second independant tidy data set with avg of each var") 
  print("grouped by activity and subject")
  library(data.table)
  dataDT <- data.table(data)
  averageData<- dataDT[, lapply(.SD, mean), by=c("subjectId", "activity")]
  write.table(averageData, "independant_tidy_data_with_avg.txt", row.names = FALSE)
  print("data set 'independant_tidy_data_with_avg.txt' created.")
  print("run_analysis.R has completed successfully!")
}
