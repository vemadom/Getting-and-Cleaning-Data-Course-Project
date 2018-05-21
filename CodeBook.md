# Code Book

I have created one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Variables in the second and independent tidy data:

- Subj
- TimeBodyAccMeanX
- TimeBodyAccMeanY
- TimeBodyAccMeanZ
- TimeBodyAccStdX
- TimeBodyAccStdY
- TimeBodyAccStdZ
- TimeGravityAccMeanX
- TimeGravityAccMeanY
- TimeGravityAccMeanZ
- TimeGravityAccStdX
- TimeGravityAccStdY
- TimeGravityAccStdZ
- TimeBodyAccJerkMeanX
- TimeBodyAccJerkMeanY
- TimeBodyAccJerkMeanZ
- TimeBodyAccJerkStdX
- TimeBodyAccJerkStdY
- TimeBodyAccJerkStdZ
- TimeBodyGyroMeanX
- TimeBodyGyroMeanY
- TimeBodyGyroMeanZ
- TimeBodyGyroStdX
- TimeBodyGyroStdY
- TimeBodyGyroStdZ
- TimeBodyGyroJerkMeanX
- TimeBodyGyroJerkMeanY
- TimeBodyGyroJerkMeanZ
- TimeBodyGyroJerkStdX
- TimeBodyGyroJerkStdY
- TimeBodyGyroJerkStdZ
- TimeBodyAccMagMean
- TimeBodyAccMagStd
- TimeGravityAccMagMean
- TimeGravityAccMagStd
- TimeBodyAccJerkMagMean
- TimeBodyAccJerkMagStd
- TimeBodyGyroMagMean
- TimeBodyGyroMagStd
- TimeBodyGyroJerkMagMean
- TimeBodyGyroJerkMagStd
- FreqBodyAccMeanX
- FreqBodyAccMeanY
- FreqBodyAccMeanZ
- FreqBodyAccStdX
- FreqBodyAccStdY
- FreqBodyAccStdZ
- FreqBodyAccMeanFreqX
- FreqBodyAccMeanFreqY
- FreqBodyAccMeanFreqZ
- FreqBodyAccJerkMeanX
- FreqBodyAccJerkMeanY
- FreqBodyAccJerkMeanZ
- FreqBodyAccJerkStdX
- FreqBodyAccJerkStdY
- FreqBodyAccJerkStdZ
- FreqBodyAccJerkMeanFreqX
- FreqBodyAccJerkMeanFreqY
- FreqBodyAccJerkMeanFreqZ
- FreqBodyGyroMeanX
- FreqBodyGyroMeanY
- FreqBodyGyroMeanZ
- FreqBodyGyroStdX
- FreqBodyGyroStdY
- FreqBodyGyroStdZ
- FreqBodyGyroMeanFreqX
- FreqBodyGyroMeanFreqY
- FreqBodyGyroMeanFreqZ
- FreqBodyAccMagMean
- FreqBodyAccMagStd
- FreqBodyAccMagMeanFreq
- FreqBodyAccJerkMagMean
- FreqBodyAccJerkMagStd
- FreqBodyAccJerkMagMeanFreq
- FreqBodyGyroMagMean
- FreqBodyGyroMagStd
- FreqBodyGyroMagMeanFreq
- FreqBodyGyroJerkMagMean
- FreqBodyGyroJerkMagStd
- FreqBodyGyroJerkMagMeanFreq
- Activ

## Subj -> Subject

This is the number of Subject ID in 1 to 30.

## Activ -> Activity

This is the number of Activity ID in:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


