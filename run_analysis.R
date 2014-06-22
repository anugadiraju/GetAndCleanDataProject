
## run_analisis function  #######
## This is the main function and it does the following steps. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run_analysis <- function() {
    library(data.table)
    options(warn=-1)
    #setwd("C:/Users/agadiraju/Documents/RWorkingDir/GetDataProject")
    
    ## Dataprep step
    ##get all the featurenames and activitynames and gather them into vectors.
    featureDT <- read.table("./UCI HAR Dataset/features.txt",na.strings=c("NA","Not available"),colClasses="character")
    featNames <- featureDT[,2]
    actNameDT <- read.table("./UCI HAR Dataset/activity_labels.txt",na.strings=c("NA","Not available"),colClasses="character")
    actNames <- actNameDT[,2]
    subjectId <- c("SubjectID")
    actId <- c("ActivityLabel")
    
    ## 1. Step to create one data set
    
    ## 1.1 Read in test datasets, set the columnNames for features and activities and 
    ## then combine the test sets to create one test data set.
    ## Read Subject and X data sets and set thier column names.
    testSubjectDT <- read.table("./UCI HAR Dataset/test/subject_test.txt",na.strings=c("NA","Not available"),colClasses="character")
    names(testSubjectDT) <- subjectId
    testXDT <- read.table("./UCI HAR Dataset/test/X_test.txt",na.strings=c("NA","Not available"),colClasses="character")
    names(testXDT) <- featNames
    
    ## Read y_test.txt
    ## do step3 right here.
    ## Use descriptive activity names to name the activities in the data set testYDT
    ## the set the columnName to ActivityLabel
    testYDT <- read.table("./UCI HAR Dataset/test/y_test.txt",na.strings=c("NA","Not available"),colClasses="character")
    testYDT <- merge(testYDT,actNameDT)
    testYDT[1] <- NULL
    names(testYDT) <- actId
    testDT <- cbind(cbind(testSubjectDT,testYDT),testXDT)
    
   
    ## 1.2 Read in and combine the train sets to create one train data set.
    trainSubjectDT <- read.table("./UCI HAR Dataset/train/subject_train.txt",na.strings=c("NA","Not available"),colClasses="character")
    names(trainSubjectDT) <- subjectId
    trainXDT <- read.table("./UCI HAR Dataset/train/X_train.txt",na.strings=c("NA","Not available"),colClasses="character")
    names(trainXDT) <- featNames
    
    ## do step3 right here.
    ## Use descriptive activity names to name the activities in the data set YDT
    trainYDT <- read.table("./UCI HAR Dataset/train/y_train.txt",na.strings=c("NA","Not available"),colClasses="character")
    trainYDT <- merge(trainYDT,actNameDT)
    trainYDT[1] <- NULL
    names(trainYDT) <- actId
    trainDT <- cbind(cbind(trainSubjectDT,trainYDT),trainXDT)
   
    ## 1.3 Merge the test and train sets to create one data set.
    combinedDT <- rbind(testDT,trainDT)
    
    ## 2. Extract only the measurements on the mean and standard deviation for each measurement. 
    extractCols <- grep("SubjectID|ActivityLabel|[-]mean[(][)]|[-]std[(][)]", names(combinedDT))
    combinedDT <- combinedDT[,extractCols]
    
    ## 3.Use descriptive activity names to name the activities in the data set
    ## This step has already been taken care of when we are bringing y_train.txt and y_test.txt
   
    ## 4. Appropriately labels the data set with descriptive variable names.
    ## We are using regex to replace any occurances of '-, + or ()' from columnNames
    ## to cleanthem up and make them programmable in R.
    myColNames <- names(combinedDT)
    for(i in 1:length(myColNames)) {
        myColNames[i] <- gsub("-|+|[(][)]","",myColNames[i])
    }
    names(combinedDT) <- myColNames
    
    ## print(str(combinedDT))
    
   
    ## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    ## convert all the columns except the subject and actitivy to numeric values.
    instanceconvert <- c(3:68)
    for (j in instanceconvert) set(combinedDT,j=j,value=as.numeric(combinedDT[[j]]))
    
    newDT <- aggregate(combinedDT[3:68],list(Subject=combinedDT$SubjectID,Activity=combinedDT$ActivityLabel),mean)
    
    #print(names(newDT))
    
    
    ## order new data by subject and then actiivtiy for clarity.
    
    ## order the merged data by decreasing order of GDP (meaning gdp=1 comes last)
    newDT <- (newDT[order(newDT$Subject,newDT$Activity,decreasing=FALSE,na.last=TRUE),])
    
    
    ## write to a txt file.
    
    write.table(newDT,"./newtidydata.txt",row.names=FALSE)
    
    ## This is to test if the data was written properly
    #myDT <- read.table("./newtidydata.txt",na.strings=c("NA","Not available"),colClasses="character")
    #print(myDT[1:4,1:4])
    
    
}
   
