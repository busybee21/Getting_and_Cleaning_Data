## Code Book for the Getting and Cleaning Data Course Project  
A code book is what describes the variables, the data, and any transformations or work that had been performed to clean up the data.  

* The **run_analysis.R** file in this repository contains detailed codes that had been used to clean the dataset.  
* Please go through the README.md file in this repo for background information.  

### The Data  

* The Data Source to Original data:    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* The zip file contains :   
* ‘README.txt’  

* ‘features_info.txt’: Shows information about the variables used on the feature vector.  

* ‘features.txt’: List of all features.  

* ‘activity_labels.txt’: Links the class labels with their activity name.  

* ‘subject_test.txt’ : Data of volunteers for test data being observed  

* ‘subject_train.txt’: Data of volunteers for training data being observed  

* ‘train/X_train.txt’ : Training set.  

* ‘train/y_train.txt’ : Training labels.  

* ‘test/X_test.txt’ : Test set.  

* ‘test/y_test.txt’ : Test labels  

* The final data product The tidyData.txt dataset is a space-seperated dataset, consists of 180 rows and 88 variables and in each row for a given subject and label, there are 86 average measurements.  

### The Variables  

* subject : The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years  
* labels : Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. WALKING: subject was walking WALKING_UPSTAIRS: subject was walking upstairs WALKING_DOWNSTAIRS: subject was walking downstairs SITTING: subject was sitting STANDING: subject was standing LAYING: subject was laying Average of measurements.  
* All measurements are floating-point values, normalised and bounded within [-1,1].   
* -XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
* The measurements are classified in two domains: Time-domain signals (variables prefixed by "t"), resulting from the capture of accelerometer and gyroscope raw signals. And Frequency-domain signals (variables prefixed by "f"), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.  
* tAcc-XYZ and tGyro-XYZ: The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals.  
* tBodyAcc-XYZ and tGravityAcc-XYZ : Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.   
* tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ : the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.  
* The magnitude of these three-dimensional signals were calculated using the Euclidean norm and a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  

### The Transformation and Procedures  

* A full description is available at the site where the data was obtained:  

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones    

More detailed information regarding the variables is available in this zip file : 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   

* The training and test sets were merged to create one data set.  
* The columns in the merged dataset containing the mean and standard deviation of the measurements were selected and the rest was discarded.  
* Column names containing the abbreviations "Acc" and "Gyro" were renamed in a descriptive way.  
* From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.  











