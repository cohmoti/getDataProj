# Getting and Cleaning Data Project
This project contains the *run_analysis.R* script. This script reads the Samsung data set (both train and test), and tidy it up.
The data should be in the working directory (features, train, test).
The script reads the feature list, the test and train data and merges them to one data frame.
The result is a data frame called dataSummary which holds the average of each mean/std variable for each Subject and Activity.

## Features
The result data set has a row for each Subject (identified by numeric id), and each Activity. For each pair we have the average values for each mean and std variable that exists in the original Samsung data set. The codebook for the original features is in *features_info.txt*.

## CodeBook
The *CodeBook.md* file holds information about the tidying process.