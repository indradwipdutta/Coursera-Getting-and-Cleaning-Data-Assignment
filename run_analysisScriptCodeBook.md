## Coursera-Getting-and-Cleaning-Data-Assignment: Project-submission of data cleaning assignment of coursera
## title: Script "run_Analysis.R" Code Book File
author: "Indradwip Dutta"

#### the document gives details about the columns and data content of the datasets produced during the execution of "run_analysis.R" script.

###The different datasets formed and modified while working out the final dataset has been explained in the "Readme.MD" file.This Code file gives details of the final updated columns(along with the Units) as in the prepared dataset named freshCombidata

PART1. "combiDataset"<-[testData,trainData]......combination of Test and training Datasets,explained in Readme


PART2.  "subCombiData"<-subset of "combiDataset" [columns with mean(),columns with std()].....subset of dataset in Part1 above taking only columns for mean() and std()


PART3.  "subCombiData"<-[ change the columns "Activity" values from levels 1....6 to WALKING.........LAYING ].....modified dataset of Part2 where the Activity codes have been replaced with Actual Activity
      
                              
PART4. "subCombiData" <-[ change the column names with proper full annotations,t(replace by time) and f(replace by frequency) ].....modifed dataset of PArt3 where column names have been fully aanotated by time and frequency instead of t and f


####PART5. "freshCombiData"<-aggregate "subCombiData"[by Subject(volunteers) and then by their individual activities]........final modified dataset which aggregates the Dataset of Part4 by first Subjects and then by the activitiest hey have done

## freshCombiData variable is the final data set generated within the code "run_analysis.R" of the assignment

#### the dataset freshCombidata has been output to a text file "tidydata.txt" that has been stored in the working directory and also uploaded in this project repo
#### the updated columns of this final dataset are as below
                                subject
                                activity
                                timeBodyAccelerometer-mean()-X
                                timeBodyAccelerometer-mean()-Y
                                timeBodyAccelerometer-mean()-Z
                                timeBodyAccelerometer-std()-X
                                timeBodyAccelerometer-std()-Y
                                timeBodyAccelerometer-std()-Z
                                timeGravityAccelerometer-mean()-X
                                timeGravityAccelerometer-mean()-Y
                                timeGravityAccelerometer-mean()-Z
                                timeGravityAccelerometer-std()-X
                                timeGravityAccelerometer-std()-Y
                                timeGravityAccelerometer-std()-Z
                                timeBodyAccelerometerJerk-mean()-X
                                timeBodyAccelerometerJerk-mean()-Y
                                timeBodyAccelerometerJerk-mean()-Z
                                timeBodyAccelerometerJerk-std()-X
                                timeBodyAccelerometerJerk-std()-Y
                                timeBodyAccelerometerJerk-std()-Z
                                timeBodyGyroscope-mean()-X
                                timeBodyGyroscope-mean()-Y
                                timeBodyGyroscope-mean()-Z
                                timeBodyGyroscope-std()-X
                                timeBodyGyroscope-std()-Y
                                timeBodyGyroscope-std()-Z
                                timeBodyGyroscopeJerk-mean()-X
                                timeBodyGyroscopeJerk-mean()-Y
                                timeBodyGyroscopeJerk-mean()-Z
                                timeBodyGyroscopeJerk-std()-X
                                timeBodyGyroscopeJerk-std()-Y
                                timeBodyGyroscopeJerk-std()-Z
                                timeBodyAccelerometerMagnitude-mean()
                                timeBodyAccelerometerMagnitude-std()
                                timeGravityAccelerometerMagnitude-mean()
                                timeGravityAccelerometerMagnitude-std()
                                timeBodyAccelerometerJerkMagnitude-mean()
                                timeBodyAccelerometerJerkMagnitude-std()
                                timeBodyGyroscopeMagnitude-mean()
                                timeBodyGyroscopeMagnitude-std()
                                timeBodyGyroscopeJerkMagnitude-mean()
                                timeBodyGyroscopeJerkMagnitude-std()
                                frequencyBodyAccelerometer-mean()-X
                                frequencyBodyAccelerometer-mean()-Y
                                frequencyBodyAccelerometer-mean()-Z
                                frequencyBodyAccelerometer-std()-X
                                frequencyBodyAccelerometer-std()-Y
                                frequencyBodyAccelerometer-std()-Z
                                frequencyBodyAccelerometerJerk-mean()-X
                                frequencyBodyAccelerometerJerk-mean()-Y
                                frequencyBodyAccelerometerJerk-mean()-Z
                                frequencyBodyAccelerometerJerk-std()-X
                                frequencyBodyAccelerometerJerk-std()-Y
                                frequencyBodyAccelerometerJerk-std()-Z
                                frequencyBodyGyroscope-mean()-X
                                frequencyBodyGyroscope-mean()-Y
                                frequencyBodyGyroscope-mean()-Z
                                frequencyBodyGyroscope-std()-X
                                frequencyBodyGyroscope-std()-Y
                                frequencyBodyGyroscope-std()-Z
                                frequencyBodyAccelerometerMagnitude-mean()
                                frequencyBodyAccelerometerMagnitude-std()
                                frequencyBodyAccelerometerJerkMagnitude-mean()
                                frequencyBodyAccelerometerJerkMagnitude-std()
                                frequencyBodyGyroscopeMagnitude-mean()
                                frequencyBodyGyroscopeMagnitude-std()
                                frequencyBodyGyroscopeJerkMagnitude-mean()
                                frequencyBodyGyroscopeJerkMagnitude-std()


### Units
subject: and activity are the main IDs of the columns
subject is the code names (1 ....30) of the volunteers who have taken part in the test or training.The Samsung Glalaxy II human Data has been provided by them
activity :the activity codes have been explained as below
  
                              CODE ACTIVITY 
                                1   WALKING
                                2   WALKING_UPSTAIRS
                                3   WALKING_DOWNSTAIRS
                                4   SITTING
                                5   STANDING
                                6   LAYING
the rest of the columns are actually the values of the respective functions denoted by the column names.
