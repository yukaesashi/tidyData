---
title: "README.Rmd"
author: "Yuka Esashi"
date: "July 22, 2014"
output: html_document
---

This document describes the basic information regarding the run_analysis.R script, the input data set and the data frame obtained from running the script.

The script is designed to download and analyse a set of data in a folder called UCI HAR Dataset. The folder contains data collected from the accelerometers from the Samsung Galaxy S smartphone. (More details of the data set is available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The folder contains data for an experiment that was carried out on 30 subjects. Each person performed six activities (WALKING, WALKING _ UPSTAIRS, WALKING _ DOWNSTAIRS, SITTING, STANDING, LAYING), and data during the activities was collected using a smartphone. The subjects were grouped into 2, test and train subjects.

The R script will use the following data in the data set:

- An identifier of the subject who carried out the experiment (in test/subject _ test.txt and train/subject _ train.txt)
- Activity label (in test/Y _ test.txt and train/Y _ train)
- Analysed data in a form of 561-feature vector (in test/X _ test.txt and train/X _ train.txt. These data came from data included in Inertial Signals folder, which is not going to be used for this analysis).

Each of these is provided for each record, and there are multiple records for each subject doing one activity.

The script run_analysis contains 6 parts:

- Reading the data files
- Merging the training and the test sets to create one data set
- Extracting only the measurements on the mean and standard deviation for each measurement
- Using descriptive activity names to name the activities in the data set
- Appropriately labelling the data set with descriptive variable names
- Creating a second, independent tidy data set with the average of each variable for each activity and each subject

The each part is labelled in the script.

The first part downloads the data zip file from the internet, unzips the file, and reads them.

The second part combines the files X _ test, X _ train, Y _ test, Y _ train, subject _ test and subject _ train into one data frame of 563 columns. Each row represents one measurement, and each measurement has 561 factors as well as one activity label and one subject label represented in each column.

The third part subsets the data frame made in the second part so that the only factors that are to do with mean and standard deviation are included. At this point the data frame has been reduced to 68 columns.

The fourth part uses the activity labels listed in activity _ labels.txt to convert the numeric labels to actual names of the activities.

The fifth part uses the feature names listed in features.txt to create descriptive column names. This fifth part completes the first data frame, which is assigned to the variable "tidyData". The description of the column headings of tidyDataMean can be found at Codebook.md.

The last part of the script creates a second date frame, which is assigned to the variable "tidyDataMean". This data frame consist of the mean of the factors in tidyData, for each activity and each subjects. The row names show which activity and subject correspond to the row.
