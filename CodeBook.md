
Feature Selection 
=================

The following features and the std() and mean() values for each of these features are selected to be included in our new tiny data calculations given in newtidydata.txt uploaded to coursera.
This data set includes the mean of all the 66 variables aggregated by Subject and Activity levels.
It is also ordered first by Subject and then by Activity level for clarity.
The activity labels are renamed to refer to thier text names given in activity.txt data file.
The variable names are cleaned up to remove any '-+())' characters to make them programmable in R.

Total 40 observations of 68 variables.


Details on individual features from original source:
----------------------------------------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

This in turn gives us 66 different calculations.

The subject and Actitivty are included in the data set.

Data Dictionary
---------------
Subject	 -   subject who performed the activity for each window sample. Its range is from 1 to 30. 
Activity  -  Values describing the actitivity - possible values are : WALKING
, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING
, STANDING
, LAYING

--------------------------
All the following data  are normalized and bounded within [-1,1]. They represent the means of the variable aggregated by subject and actitivity.

tBodyAccmeanX	
tBodyAccmeanY	
tBodyAccmeanZ	
tBodyAccstdX	
tBodyAccstdY	
tBodyAccstdZ	
tGravityAccmeanX	
tGravityAccmeanY	
tGravityAccmeanZ	
tGravityAccstdX	
tGravityAccstdY	
tGravityAccstdZ	
tBodyAccJerkmeanX	
tBodyAccJerkmeanY	
tBodyAccJerkmeanZ	
tBodyAccJerkstdX	
tBodyAccJerkstdY	
tBodyAccJerkstdZ	
tBodyGyromeanX	
tBodyGyromeanY	
tBodyGyromeanZ	
tBodyGyrostdX	
tBodyGyrostdY	
tBodyGyrostdZ	
tBodyGyroJerkmeanX	
tBodyGyroJerkmeanY	
tBodyGyroJerkmeanZ	
tBodyGyroJerkstdX	
tBodyGyroJerkstdY	
tBodyGyroJerkstdZ	
tBodyAccMagmean	
tBodyAccMagstd	
tGravityAccMagmean	
tGravityAccMagstd	
tBodyAccJerkMagmean	
tBodyAccJerkMagstd	
tBodyGyroMagmean	
tBodyGyroMagstd	
tBodyGyroJerkMagmean	
tBodyGyroJerkMagstd	
fBodyAccmeanX	
fBodyAccmeanY	
fBodyAccmeanZ	
fBodyAccstdX	
fBodyAccstdY	
fBodyAccstdZ	
fBodyAccJerkmeanX	
fBodyAccJerkmeanY	
fBodyAccJerkmeanZ	
fBodyAccJerkstdX	
fBodyAccJerkstdY	
fBodyAccJerkstdZ	
fBodyGyromeanX	
fBodyGyromeanY	
fBodyGyromeanZ	
fBodyGyrostdX	
fBodyGyrostdY	
fBodyGyrostdZ	
fBodyAccMagmean	
fBodyAccMagstd	
fBodyBodyAccJerkMagmean	
fBodyBodyAccJerkMagstd	
fBodyBodyGyroMagmean	
fBodyBodyGyroMagstd	
fBodyBodyGyroJerkMagmean	
fBodyBodyGyroJerkMagstd






