---
title: "README"
author: "Umar Iyoob"
date: "March 6, 2016"
output: html_document
---

# Getting and Cleaning Data Course Project

## Instructions

1. Download the data set from [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
2. Extract the data set into the working directory and rename the folder 'data'.
3. Make sure to set your working directory to the parent of 'data' directory.
4. Load the script in RStudio using `source("run_analysis.R")` command.
5. Use the function `run_analysis()` to get the tidied data.
6. You will see two files named 'train_test_tidy_data.txt' and 'independant_tidy_data_with_avg.txt'


## run_analysis.R

The script run_analysis.R does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


When you run the script, you will see the following showing you what is being done in the background.

```

[1] "Getting and Cleaning Data Course Project for Coursera"
[1] "Created by Umar Iyoob"
[1] "Loading training data..."
[1] "training data loaded successfully!"
[1] "Loading test data..."
[1] "test data loaded successfully!"
[1] "Loading features label data..."
[1] "features data loaded successfully!"
[1] "Loading activity label data..."
[1] "activity data loaded successfully!"
[1] "Merging the training and the test sets to create one data set"
[1] "Merged data set 'train_test_tidy_data.txt' created."
[1] "Creating second independant tidy data set with avg of each var \n    grouped by activity and subject"
[1] "data set 'independant_tidy_data_with_avg.txt' created"
[1] "run_analysis has completed successfully!"
```

### Information about the source

Please visit [this website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to find out more information about the data.

