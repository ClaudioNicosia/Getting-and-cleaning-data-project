
Getting and Cleaning Data Course Project
----------------------------------------- 
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is 
to prepare tidy data that can be used for later analysis. 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) 
while carrying a waist-mounted smartphone with embedded inertial sensors.

Data Set Information:
---------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers 
was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time and frequency domain.


A zip file containing the time window data training and test data and associated metadata, such as activity_labels.txt, and features.txt, 
of the Human Activity Recognition Using Smartphones Dataset was downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 
The training and test datasets were combined. Each row of the combined data set represents one observation of the time window, containing 561 
variables summarizing the 128 raw data observations (50 observations a second from the gyroscope and accelerometer).
For all accelerometer-related variables (containing the word "Acc" in the variable name), the units are in standard gravity units 'g'.


The script run_analysis.R generates the tidy data with only the mean and std variables listed below. All these 79 variables are rappresented in the file 
by the mean for each subject and activity combinations.   

As requested this CodeBook file list the difinition of the "tidy" data included in the project: 

List of all variables description in tidy dataset : 
---------------------------------------------------

 1. subject : Is the id rappresenting each unique subject. Total number of subjects = 30.
 2. Activity_Label : Is the activity measured in which the subject was engaged in. All possible activity values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 3. tBodyAcc-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAcc-mean()-X
 4. tBodyAcc-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAcc-mean()-Y
 5. tBodyAcc-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAcc-mean()-Z
 6. tBodyAcc-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAcc-std()-X
 7. tBodyAcc-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAcc-std()-Y
 8. tBodyAcc-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAcc-std()-Z
 9. tGravityAcc-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAcc-mean()-Z
12. tGravityAcc-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAcc-std()-X
13. tGravityAcc-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAcc-std()-Y
14. tGravityAcc-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyro-mean()-Z
24. tBodyGyro-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyro-std()-X
25. tBodyGyro-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyro-std()-Y
26. tBodyGyro-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccMag-mean()
34. tBodyAccMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccMag-std()
35. tGravityAccMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAccMag-mean()
36. tGravityAccMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable tGravityAccMag-std()
37. tBodyAccJerkMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyAccJerkMag-std()
39. tBodyGyroMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroMag-mean()
40. tBodyGyroMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-mean()-Z
46. fBodyAcc-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-std()-X
47. fBodyAcc-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-std()-Y
48. fBodyAcc-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-std()-Z
49. fBodyAcc-meanFreq()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-meanFreq()-X
50. fBodyAcc-meanFreq()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-meanFreq()-Y
51. fBodyAcc-meanFreq()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAcc-meanFreq()-Z
52. fBodyAccJerk-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-mean()-X
53. fBodyAccJerk-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-mean()-Y
54. fBodyAccJerk-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-mean()-Z
55. fBodyAccJerk-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-std()-X
56. fBodyAccJerk-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-std()-Y
57. fBodyAccJerk-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-std()-Z
58. fBodyAccJerk-meanFreq()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-meanFreq()-X
59. fBodyAccJerk-meanFreq()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-meanFreq()-Y
60. fBodyAccJerk-meanFreq()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccJerk-meanFreq()-Z
61. fBodyGyro-mean()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-mean()-X
62. fBodyGyro-mean()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-mean()-Y
63. fBodyGyro-mean()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-mean()-Z
64. fBodyGyro-std()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-std()-X
65. fBodyGyro-std()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-std()-Y
66. fBodyGyro-std()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-std()-Z
67. fBodyGyro-meanFreq()-X : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-meanFreq()-X
68. fBodyGyro-meanFreq()-Y : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-meanFreq()-Y
69. fBodyGyro-meanFreq()-Z : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyGyro-meanFreq()-Z
70. fBodyAccMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccMag-mean()
71. fBodyAccMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccMag-std()
72. fBodyAccMag-meanFreq() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyAccMag-meanFreq()
73. fBodyBodyAccJerkMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyAccJerkMag-mean()
74. fBodyBodyAccJerkMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyAccJerkMag-std()
75. fBodyBodyAccJerkMag-meanFreq() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyAccJerkMag-meanFreq()
76. fBodyBodyGyroMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyGyroMag-mean()
77. fBodyBodyGyroMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyGyroMag-std()
78. fBodyBodyGyroMag-meanFreq() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyGyroMag-meanFreq()
79. fBodyBodyGyroJerkMag-mean() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyGyroJerkMag-mean()
80. fBodyBodyGyroJerkMag-std() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyGyroJerkMag-std()
81. fBodyBodyGyroJerkMag-meanFreq() : Is the mean of all values for the activity (in Activity Label var.) for the variable fBodyBodyGyroJerkMag-meanFreq()


Notes copied from features_info.txt for additional description of the variables:
---------------------------------------------------------------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then 
separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filt er with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

