##Run analysis script###
####download and Unzip the Zip file by creating a Folder called dataCleanAssignment in the PWD####
if(!file.exists("./dataCleanAssignment")){
  dir.create("./dataCleanAssignment")
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Url,destfile="./dataCleanAssignment/Dataset.zip" )
unzip(zipfile="./dataCleanAssignment/Dataset.zip",exdir="./dataCleanAssignment/data")
}

###Create the file path variable to be used in the rest of the project
pathFiles <- file.path("./dataCleanAssignment/data/UCI HAR Dataset")

#################################PART1################################################
#####TEST DATA###
##Read files with Identity No. of Volunteers for Test##
testVolntrSubjects  <- read.table(file.path(pathFiles, "test" , "subject_test.txt"),header = FALSE)
##Read the codes for activities performed in the Test##
testActivities<-read.table(file.path(pathFiles, "test" , "Y_test.txt" ),header = FALSE)
##Read the values of 561 Calculated Variables of Test window data for each volunteer
##(128 records) per sampling window .
testCalcVars  <- read.table(file.path(pathFiles, "test" , "X_test.txt" ),header = FALSE)
##form the Test Dataset
testData <- cbind(testVolntrSubjects, testActivities,testCalcVars)




#####TRAINING DATA###
##Read files with Identity No. of Volunteers for Training##
trainVolntrSubjects  <- read.table(file.path(pathFiles, "train" , "subject_train.txt"),header = FALSE)
##Read the codes for activities performed in the Training##
trainActivities<-read.table(file.path(pathFiles, "train" , "Y_train.txt" ),header = FALSE)
##Read the values of 561 Calculated Variables of Training window data for each volunteer
##(128 records) per sampling window .
trainCalcVars  <- read.table(file.path(pathFiles, "train" , "X_train.txt" ),header = FALSE)
##form the Training Dataset
trainData <- cbind(trainVolntrSubjects, trainActivities,trainCalcVars)

##Combine the Test and Training dataset by merging row wise
combiDataset<-rbind(testData,trainData)

##name the columns of Combined dataset
dataCalvarNames <- read.table(file.path(pathFiles, "features.txt"),head=FALSE)
colnames(combiDataset)<-c("subject","activity",as.character(dataCalvarNames$V2))

#################################PART2################################################
##Find the heading names in dataCalvarNames with mean() and std()##
subCalcVarNames<-dataCalvarNames$V2[grep("mean\\(\\)|std\\(\\)", dataCalvarNames$V2)]
###pick the columns in combiDataset with names with **mean() or **std() as the
##column names are in subCalcVarNames above
subColsCombiData<-c( "subject", "activity",as.character(subCalcVarNames) )
subCombiData<-subset(combiDataset,select=subColsCombiData)

#################################PART3################################################

CombiActivityNames <- read.table(file.path(pathFiles, "activity_labels.txt"),header = FALSE)
subCombiData$activity<-as.factor(subCombiData$activity)
levels(subCombiData$activity)<-CombiActivityNames$V2

#################################PART4################################################
##replace the column names of the final Data set with descriptive names
colnames(subCombiData)<-gsub("^t", "time", colnames(subCombiData))
colnames(subCombiData)<-gsub("^f", "frequency", colnames(subCombiData))
colnames(subCombiData)<-gsub("Acc", "Accelerometer", colnames(subCombiData))
colnames(subCombiData)<-gsub("Gyro", "Gyroscope", colnames(subCombiData))
colnames(subCombiData)<-gsub("Mag", "Magnitude", colnames(subCombiData))
colnames(subCombiData)<-gsub("BodyBody", "Body", colnames(subCombiData))

#################################PART5################################################
##Aggregate the final dataframe to summarise the data by subject and his activity##
##install.packages("plyr")
library(plyr);
freshCombiData<-aggregate(. ~subject + activity, subCombiData, mean)
freshCombiData<-freshCombiData[order(freshCombiData$subject,freshCombiData$activity),]
write.table(freshCombiData, file = "tidydata.txt",row.name=FALSE)