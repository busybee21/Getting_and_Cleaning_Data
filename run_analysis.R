
##downloading the file
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(url, destfile = "C:/Users/Hp/Desktop/projFile.zip") ##downloading the data

unzip(zipfile = "projFile.zip")  ## unzipping the files

## loading libraries

library(dplyr)
library(tidyverse)
library(reshape2)

## reading the datasets 
features.data<-read.table("UCI HAR Dataset/features.txt",col.names = c("id","measure"))

## Q.4 assigning descriptive and approriate variable names
features.data2<-features.data %>% 
     mutate(measure=gsub("Acc","Accelerometer",measure)) %>% 
     mutate(measure=gsub("Gyro","Gyroscope",measure))

## reading test, train, subject and label data sets
x.test<-read.table("UCI HAR Dataset/test/X_test.txt",col.names = features.data2$measure)
y.test<-read.table("UCI HAR Dataset/test/y_test.txt",col.names = "labels")
x.train<-read.table("UCI HAR Dataset/train/X_train.txt",col.names = features.data2$measure)
y.train<-read.table("UCI HAR Dataset/train/y_train.txt",col.names = "labels")
sub.test<-read.table("UCI HAR Dataset/test/subject_test.txt",col.names = "subject")
sub.train<-read.table("UCI HAR Dataset/train/subject_train.txt",col.names = "subject")

data.test<-cbind(sub.test,y.test,x.test)
data.train<-cbind(sub.train,y.train,x.train)

##Q.1 merging the train and the test data sets
merged.data<-rbind(data.test,data.train)

## Q.2extracting only the columns those are means and standard deviations of the measurements
mean.cols<- merged.data %>% select(contains("mean")) 
sd.cols<- merged.data %>% select(contains("std"))

semi.data<-cbind((rbind(sub.test,sub.train)),rbind(y.test,y.train),mean.cols)
semi.data<-cbind(semi.data,sd.cols)

## Q.3 descriptive activity names
semi.data$labels[semi.data$labels==1]="walking"
semi.data$labels[semi.data$labels==2]="walking upstairs"
semi.data$labels[semi.data$labels==3]="walking downtairs"
semi.data$labels[semi.data$labels==4]="sitting"
semi.data$labels[semi.data$labels==5]="standing"
semi.data$labels[semi.data$labels==6]="laying"

arrange(semi.data,subject)

## Q.5 creating tidy data set with the average of each variable for each activity and each subject.
melt.data<-melt(semi.data,id=c("subject","labels"))

## the tidy data set
final.data<-dcast(melt.data,subject+labels~variable,mean)
str(final.data)

tidyData<-write.table(final.data,"tidyData.txt",sep = "\t",row.names = FALSE,col.names = TRUE)
