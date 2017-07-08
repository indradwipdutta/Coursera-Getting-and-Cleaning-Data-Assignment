## Coursera-Getting-and-Cleaning-Data-Assignment: Project-submission of data cleaning assignment of coursera
## title: "codebook_run_Analysis"
author: "Indradwip Dutta"

## Script "run_Analysis.R" Readme File

### the document explains how the "run_Analysis.R" script has been built up from the different available Datasets

These available datasets include the following:

#### 1.The Raw inertial signals taken for every volunteer(subject) participating in the data collection exercise of human activities.The signals are collected at a sampling size of 128 signals per record at 50 HZ frequency.These signals are present in the datasets as below
                  
### For Testing purpose(data randomly taken for testing or training from raw signals collected)
 
      Body Total Acceleration in x,y and Z direction
      1.total_acc_x_test.txt
      2.total_acc_y_test.txt
      3.total_acc_z_test.txt
                      
      Body vibration and rotational motion from Gyrometer in x,y and Z direction
  
      1.body_gyro_x_test.txt
      2.body_gyro_y_test.txt
      3.body_gyro_z_test.txt
                      
        Body Acceleration in x,y and Z direction obtained by deducting the gravitational Component of body Total Acceleration 
  
      1.body_acc_x_test.txt
      2.body_acc_y_test.txt                
      3.body_acc_z_test.txt               
      
The Data Sample of one of the  above datasets is given in the code book of this project.
Datasets in y and Z direction exists for all the subjects(Subject ID or volunteer IDs are 1,2,3,4...etc.) who took part in sharing the Samsing SII data from their activities


### For Training purpose(data randomly taken for testing or training from raw signals collected)
 
      Body Total Acceleration in x,y and Z direction
      1.total_acc_x_train.txt
      2.total_acc_y_train.txt
      3.total_acc_z_train.txt
                      
      Body vibration and rotational motion from Gyrometer in x,y and Z direction
  
      1.body_gyro_x_train.txt
      2.body_gyro_y_train.txt
      3.body_gyro_z_train.txt
                      
        Body Acceleration in x,y and Z direction obtained by deducting the gravitational Component of body Total Acceleration 
  
      1.body_acc_x_train.txt
      2.body_acc_y_train.txt                
      3.body_acc_z_train.txt               
      
The Data Sample of one of the  above datasets is given in the code book of this project.
Datasets in y and Z direction exists for all the subjects(Subject ID or volunteer IDs are 1,2,3,4...etc.) who took part in sharing the Samsing SII data from their activities


#### 2.The Derived Variables,derived from the raw signals above by applying the 561 listed functions


#### However these Datasets as mentioned above have been used to derive further Datasets called 

#####     1.X_test.txt
#####     2.Y_test.txt
#####     3.X_train.txt
#####     4.Y_train.txt



these datasets are our interset in the calculation analysis here.
The datasets above have been processed per record/subject/activity by using the 561 functions listed in "features.txt"

The 561 functions used to derive the variables in X_test,Y_test,X_train,Y_train Dataset are listed below

    1 tBodyAcc-mean()-X         
    2 tBodyAcc-mean()-Y
    3 tBodyAcc-mean()-Z
    4 tBodyAcc-std()-X
    5 tBodyAcc-std()-Y
    6 tBodyAcc-std()-Z
    7 tBodyAcc-mad()-X
    8 tBodyAcc-mad()-Y
    9 tBodyAcc-mad()-Z
    10 tBodyAcc-max()-X
    11 tBodyAcc-max()-Y
    12 tBodyAcc-max()-Z
    13 tBodyAcc-min()-X
    14 tBodyAcc-min()-Y
    15 tBodyAcc-min()-Z
    16 tBodyAcc-sma()
    17 tBodyAcc-energy()-X
    18 tBodyAcc-energy()-Y
    19 tBodyAcc-energy()-Z
    20 tBodyAcc-iqr()-X
    21 tBodyAcc-iqr()-Y
    22 tBodyAcc-iqr()-Z
    23 tBodyAcc-entropy()-X
    24 tBodyAcc-entropy()-Y
    25 tBodyAcc-entropy()-Z
    26 tBodyAcc-arCoeff()-X,1
    27 tBodyAcc-arCoeff()-X,2
    28 tBodyAcc-arCoeff()-X,3
    29 tBodyAcc-arCoeff()-X,4
    30 tBodyAcc-arCoeff()-Y,1
    31 tBodyAcc-arCoeff()-Y,2
    32 tBodyAcc-arCoeff()-Y,3
    33 tBodyAcc-arCoeff()-Y,4
    34 tBodyAcc-arCoeff()-Z,1
    35 tBodyAcc-arCoeff()-Z,2
    36 tBodyAcc-arCoeff()-Z,3
    37 tBodyAcc-arCoeff()-Z,4
    38 tBodyAcc-correlation()-X,Y
    39 tBodyAcc-correlation()-X,Z
    40 tBodyAcc-correlation()-Y,Z
    41 tGravityAcc-mean()-X
    42 tGravityAcc-mean()-Y
    43 tGravityAcc-mean()-Z
    44 tGravityAcc-std()-X
    45 tGravityAcc-std()-Y
    46 tGravityAcc-std()-Z
    47 tGravityAcc-mad()-X
    48 tGravityAcc-mad()-Y
    49 tGravityAcc-mad()-Z
    50 tGravityAcc-max()-X
    51 tGravityAcc-max()-Y
    52 tGravityAcc-max()-Z
    53 tGravityAcc-min()-X
    54 tGravityAcc-min()-Y
    55 tGravityAcc-min()-Z
    56 tGravityAcc-sma()
    57 tGravityAcc-energy()-X
    58 tGravityAcc-energy()-Y
    59 tGravityAcc-energy()-Z
    60 tGravityAcc-iqr()-X
    61 tGravityAcc-iqr()-Y
    62 tGravityAcc-iqr()-Z
    63 tGravityAcc-entropy()-X
    64 tGravityAcc-entropy()-Y
    65 tGravityAcc-entropy()-Z
    66 tGravityAcc-arCoeff()-X,1
    67 tGravityAcc-arCoeff()-X,2
    68 tGravityAcc-arCoeff()-X,3
    69 tGravityAcc-arCoeff()-X,4
    70 tGravityAcc-arCoeff()-Y,1
    71 tGravityAcc-arCoeff()-Y,2
    72 tGravityAcc-arCoeff()-Y,3
    73 tGravityAcc-arCoeff()-Y,4
    74 tGravityAcc-arCoeff()-Z,1
    75 tGravityAcc-arCoeff()-Z,2
    76 tGravityAcc-arCoeff()-Z,3
    77 tGravityAcc-arCoeff()-Z,4
    78 tGravityAcc-correlation()-X,Y
    79 tGravityAcc-correlation()-X,Z
    80 tGravityAcc-correlation()-Y,Z
    81 tBodyAccJerk-mean()-X
    82 tBodyAccJerk-mean()-Y
    83 tBodyAccJerk-mean()-Z
    84 tBodyAccJerk-std()-X
    85 tBodyAccJerk-std()-Y
    86 tBodyAccJerk-std()-Z
    87 tBodyAccJerk-mad()-X
    88 tBodyAccJerk-mad()-Y
    89 tBodyAccJerk-mad()-Z
    90 tBodyAccJerk-max()-X
    91 tBodyAccJerk-max()-Y
    92 tBodyAccJerk-max()-Z
    93 tBodyAccJerk-min()-X
    94 tBodyAccJerk-min()-Y
    95 tBodyAccJerk-min()-Z
    96 tBodyAccJerk-sma()
    97 tBodyAccJerk-energy()-X
    98 tBodyAccJerk-energy()-Y
    99 tBodyAccJerk-energy()-Z
    100 tBodyAccJerk-iqr()-X
    101 tBodyAccJerk-iqr()-Y
    102 tBodyAccJerk-iqr()-Z
    103 tBodyAccJerk-entropy()-X
    104 tBodyAccJerk-entropy()-Y
    105 tBodyAccJerk-entropy()-Z
    106 tBodyAccJerk-arCoeff()-X,1
    107 tBodyAccJerk-arCoeff()-X,2
    108 tBodyAccJerk-arCoeff()-X,3
    109 tBodyAccJerk-arCoeff()-X,4
    110 tBodyAccJerk-arCoeff()-Y,1
    111 tBodyAccJerk-arCoeff()-Y,2
    112 tBodyAccJerk-arCoeff()-Y,3
    113 tBodyAccJerk-arCoeff()-Y,4
    114 tBodyAccJerk-arCoeff()-Z,1
    115 tBodyAccJerk-arCoeff()-Z,2
    116 tBodyAccJerk-arCoeff()-Z,3
    117 tBodyAccJerk-arCoeff()-Z,4
    118 tBodyAccJerk-correlation()-X,Y
    119 tBodyAccJerk-correlation()-X,Z
    120 tBodyAccJerk-correlation()-Y,Z
    121 tBodyGyro-mean()-X
    122 tBodyGyro-mean()-Y
    123 tBodyGyro-mean()-Z
    124 tBodyGyro-std()-X
    125 tBodyGyro-std()-Y
    126 tBodyGyro-std()-Z
    127 tBodyGyro-mad()-X
    128 tBodyGyro-mad()-Y
    129 tBodyGyro-mad()-Z
    130 tBodyGyro-max()-X
    131 tBodyGyro-max()-Y
    132 tBodyGyro-max()-Z
    133 tBodyGyro-min()-X
    134 tBodyGyro-min()-Y
    135 tBodyGyro-min()-Z
    136 tBodyGyro-sma()
    137 tBodyGyro-energy()-X
    138 tBodyGyro-energy()-Y
    139 tBodyGyro-energy()-Z
    140 tBodyGyro-iqr()-X
    141 tBodyGyro-iqr()-Y
    142 tBodyGyro-iqr()-Z
    143 tBodyGyro-entropy()-X
    144 tBodyGyro-entropy()-Y
    145 tBodyGyro-entropy()-Z
    146 tBodyGyro-arCoeff()-X,1
    147 tBodyGyro-arCoeff()-X,2
    148 tBodyGyro-arCoeff()-X,3
    149 tBodyGyro-arCoeff()-X,4
    150 tBodyGyro-arCoeff()-Y,1
    


### In the "run_analysis.R" script,the data for Test and Training has been combined as below

#### note:plyr package is a prerequisite and please run 
#### install.packages("plyr") for running the code "run_analysis.R"


1. The test data has been combined to form a Dataset as below.The first two columns are "Subject" and "Activity" respectively and the rest are all the calculations derived from 561 functions mentioned above.This variable dataset that holds this is called 

#### "testData"



2. The training data has been combined to form a Dataset as below.The first two columns are "Subject" and "Activity" respectively respectively and the rest are all the calculations derived from 561 functions mentioned above.This variable dataset that holds this is called 

#### "trainData"




3. Finally the test and training data has been combined to form a Dataset as below.This variable dataset that hols this is called 

#### "combiDataset"



4. However,the Combined dataset as mentioned above was sub set with only the variables that calculate the mean() and the standard deviation,std() of the raw signals.The Variable Dataset that holds this new dataset is called, 

#### "subCombiData"


5. Further,the dataset "subCombiData" has the activity column values denoted as Activity Code.This has to be changed to actual activity itself
This combined Dataset has the activities denoted as 1,2,3,4,5,6 which are codes for the activities as below.

    
                    1   WALKING
                    2   WALKING_UPSTAIRS
                    3   WALKING_DOWNSTAIRS
                    4   SITTING
                    5   STANDING
                    6   LAYING



6. Further as the column names of the final dataset is still the functions that have derived these columns from raw signals,the function names has to be denoted  with fully explained and expanded annotation.Usually 
    
    t=time series Data or functions working on time series data
    
    f=frequency series data or functions working on frequency series data
    
  this has to be changed to time and frequency,i.e replace t by time and f by frequency in the column names.
    
After doing this the final Dataset which is in the variable columns modified 

#### "subCombiData" 



7. The subcombiData has furher been aggregated by Subject(volunteers) and then by their individual activities.The final tidy data has been collected in the dataframe variable,

#### "freshCombiData".

## freshCombiData variable is the final data set generated within the code "run_analysis.R" of the assignment

### the dataset freshCombidata has been output to a text file "tidydata.txt" that has been stored in the working directory and also uploaded in this project repo
