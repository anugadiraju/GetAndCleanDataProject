
README.MD
----------------------
The git hub account holds three files 

README.MD - This read me file

CodeBook.MD  -  which provides the description of the variables

run_analysis.R  - R Script which contains run_analisis function  

This is the main function and it does the following steps. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

newtidydata.txt -- This has been uploaded to Coursera site.

This is readable by 
## This is to test if the data was written properly
myDT <- read.table("./newtidydata.txt",na.strings=c("NA","Not available"),colClasses="character")
    
    