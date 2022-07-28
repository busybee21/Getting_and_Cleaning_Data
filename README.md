# Getting_and_Cleaning_Data  
## Course Project   
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   
 ### This Reopsitory Contains  
 * README.md file : an overview of the data set and how it was created. 
 * tidyData.txt, : which contains the final tidy data set. 
 * CodeBook.md : the code book, which describes the contents of the data set (data, variables and transformations used to generate the data). 
 * run_analysis.R : the R script that was used to download the raw dataset, clean and process the data set.  
 ### About the dataset  
 The source data set was obtained from the Human Activity Recognition Using Smartphones Data Set. The dataset was initially collected as follows:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

### Creating the dataset  
* raeding the individual files from thr zip file and merging the test and training dataset to create one dataset.  
* The R script run_analysis.R can be used to create the data set and produce the final tidy dataset.    
* packages used "dplyr", "tidyverse", "reshape2".  
