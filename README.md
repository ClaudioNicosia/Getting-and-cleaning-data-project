
----------------------------------
The run_analysis.R script 4 goals:
----------------------------------
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Input Data outline (from the README file in the xip): 
===================================================================================

For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
   Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly 
Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. 
Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
=======================================================================================================================================================================


Script steps:
------------------------------------------------------------------------------------------
1. Merge the training and the test sets to create one data set.
   This step is postponed at the end and after reading and transforming the tables in the next steps.
   
	Assigns working folders where a subdirectory with all files were unzipped after downloaded from the link.
	Read all metadata files, test and train (described above), into data frames using read.table function: 
		features.txt 
		activity_labels.txt	
		X_test.txt
		y_test.txt
		subject_test.txt
		X_train.txt
		y_train.txt
		subject_train.txt

2. Extracts only the measurements on the mean and standard deviation for each measurement.
	Used the grepl function to select all features/variables including "mean" and "std"
	Named the list as Mean_std_features (TRUE,FALSE) to be used in the filtering next.
	The names function is used to name the X datasets variables from the features list.
	And using the names, the X datasets test and train, were filtered using the Mean_std_features list.
	
3. Uses descriptive activity names to name the activities in the data set
	Using the "activity" list loaded previously from activity_labels.txt file, the Y datasets were modified 
    to include the activity labels for each corrisponding activity id.
		
4. Appropriately labels the data set with descriptive variable names.
	This was accomplished in step 2 above and right after the reading of X datasets.
	
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    Used the cbind function to combine the 3 datasets (X , Y and subject) for test and train rispectively.
	At this point I combined the test and train into the final dataset using the function rbind.
	This dataset "data" was subsequently transformed via the melt function to prep it for next step. the 79 measures were transposed into rows and
	in combination with subject, Activity_ID and Activity_label. 
	The dcast function is used to calculate the mean for each of the 79 variables by the subject and Activity_label.
	Finally the tidy dataset "tidy.txt" was output into a tab delimited including header row using the write.table function.
    The header row features descriptions are included in the CodeBook file.
	
Additional comments are included in the script as well.

Hope this documentation is clear and useful to support the script, but if any questions, I can be reached via my email.
claudio.nicosia@yahoo.com

	





