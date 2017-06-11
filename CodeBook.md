          ########## tidyDataAve.txt Code Book ####


Transformations

Merge the training and the test data sets to create one data set:

	The test and train data sets were read in separately and column names added from the features and activity labels tables.

	Using the cbind, the X_,y- and subject tables were merged for the train and test sets respectively.

	Before merging the two data sets together using rbind to form one data set.

Extracts only the measurements on the mean and standard deviation for each measurement:

	Using the dplyr package, only fields with mean and standard deviation on each measuremet were selected.

	And the descriptive activity labels were added from the Activitylabels table.

Appropriately labels the data set with descriptive variable names:

	Using regular expressions, the column names were renamed to remove parenthesis and abbreviations, as well as upper cases within variable names to make them more descriptive

From the data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject:

	Using the dplyr package grouping by subjected and activityid, an independent tidy data set called tidyDataAve with the average of each variable for each activity and each subject was         created.

	This was ordered by subjected and activityid and written to tidyDataAve.txt.


this code book describes the varaibles in the tidyData.Ave.txt data set:



Variable	Type	Descrpition	Measure
subjectid	integer	subject indentifier for volunteers (1-30)	
activityid	integer	activity indentifier for the activities carried out (1-6)	1 = WALKING; 2 = WALKING_UPSTAIRS; 3 = WALKING_DOWNSTAIRS; 4= SITTING; 5 = STANDING; 6 = LAYING
activitytype	factor	names of activities carried out (Walking,Walking_upstairs,waliking downstairs,sitting,standing,laying	
timebodyacc_std_x	numeric	average timebodyacc_std_x	
timebodyacc_std_y	numeric	average timebodyacc_std_y	
timebodyacc_std_z	numeric	average timebodyacc_std_z	
timegravityacc_std_x	numeric	average timegravityacc_std_x	
timegravityacc_std_y	numeric	average timegravityacc_std_y	
timegravityacc_std_z	numeric	average timegravityacc_std_z	
timebodyaccjerk_std_x	numeric	average timebodyaccjerk_std_x	
timebodyaccjerk_std_y	numeric	average timebodyaccjerk_std_y	
timebodyaccjerk_std_z	numeric	average timebodyaccjerk_std_z	
timebodygyro_std_x	numeric	average timebodygyro_std_x	
timebodygyro_std_y	numeric	average timebodygyro_std_y	
timebodygyro_std_z	numeric	average timebodygyro_std_z	
timebodygyrojerk_std_x	numeric	average timebodygyrojerk_std_x	
timebodygyrojerk_std_y	numeric	average timebodygyrojerk_std_y	
timebodygyrojerk_std_z	numeric	average timebodygyrojerk_std_z	
timebodyaccmag_std	numeric	average timebodyaccmag_std	
timegravityaccmag_std	numeric	average timegravityaccmag_std	
timebodyaccjerkmag_std	numeric	average timebodyaccjerkmag_std	
timebodygyromag_std	numeric	average timebodygyromag_std	
timebodygyrojerkmag_std	numeric	average timebodygyrojerkmag_std	
frequencybodyacc_std_x	numeric	average frequencybodyacc_std_x	
frequencybodyacc_std_y	numeric	average frequencybodyacc_std_y	
frequencybodyacc_std_z	numeric	average frequencybodyacc_std_z	
frequencybodyaccjerk_std_x	numeric	average frequencybodyaccjerk_std_x	
frequencybodyaccjerk_std_y	numeric	average frequencybodyaccjerk_std_y	
frequencybodyaccjerk_std_z	numeric	average frequencybodyaccjerk_std_z	
frequencybodygyro_std_x	numeric	average frequencybodygyro_std_x	
frequencybodygyro_std_y	numeric	average frequencybodygyro_std_y	
frequencybodygyro_std_z	numeric	average frequencybodygyro_std_z	
frequencybodyaccmag_std	numeric	average frequencybodyaccmag_std	
frequencybodybodyaccjerkmag_std	numeric	average frequencybodybodyaccjerkmag_std	
frequencybodybodygyromag_std	numeric	average frequencybodybodygyromag_std	
frequencybodybodygyrojerkmag_std	numeric	average frequencybodybodygyrojerkmag_std	
timebodyacc_mean_x	numeric	average timebodyacc_mean_x	
timebodyacc_mean_y	numeric	average timebodyacc_mean_y	
timebodyacc_mean_z	numeric	average timebodyacc_mean_z	
timegravityacc_mean_x	numeric	average timegravityacc_mean_x	
timegravityacc_mean_y	numeric	average timegravityacc_mean_y	
timegravityacc_mean_z	numeric	average timegravityacc_mean_z	
timebodyaccjerk_mean_x	numeric	average timebodyaccjerk_mean_x	
timebodyaccjerk_mean_y	numeric	average timebodyaccjerk_mean_y	
timebodyaccjerk_mean_z	numeric	average timebodyaccjerk_mean_z	
timebodygyro_mean_x	numeric	average timebodygyro_mean_x	
timebodygyro_mean_y	numeric	average timebodygyro_mean_y	
timebodygyro_mean_z	numeric	average timebodygyro_mean_z	
timebodygyrojerk_mean_x	numeric	average timebodygyrojerk_mean_x	
timebodygyrojerk_mean_y	numeric	average timebodygyrojerk_mean_y	
timebodygyrojerk_mean_z	numeric	average timebodygyrojerk_mean_z	
timebodyaccmag_mean	numeric	average timebodyaccmag_mean	
timegravityaccmag_mean	numeric	average timegravityaccmag_mean	
timebodyaccjerkmag_mean	numeric	average timebodyaccjerkmag_mean	
timebodygyromag_mean	numeric	average timebodygyromag_mean	
timebodygyrojerkmag_mean	numeric	average timebodygyrojerkmag_mean	
frequencybodyacc_mean_x	numeric	average frequencybodyacc_mean_x	
frequencybodyacc_mean_y	numeric	average frequencybodyacc_mean_y	
frequencybodyacc_mean_z	numeric	average frequencybodyacc_mean_z	
frequencybodyaccjerk_mean_x	numeric	average frequencybodyaccjerk_mean_x	
frequencybodyaccjerk_mean_y	numeric	average frequencybodyaccjerk_mean_y	
frequencybodyaccjerk_mean_z	numeric	average frequencybodyaccjerk_mean_z	
frequencybodygyro_mean_x	numeric	average frequencybodygyro_mean_x	
frequencybodygyro_mean_y	numeric	average frequencybodygyro_mean_y	
frequencybodygyro_mean_z	numeric	average frequencybodygyro_mean_z	
frequencybodyaccmag_mean	numeric	average frequencybodyaccmag_mean	
frequencybodybodyaccjerkmag_mean	numeric	average frequencybodybodyaccjerkmag_mean	
frequencybodybodygyromag_mean	numeric	average frequencybodybodygyromag_mean	
frequencybodybodygyrojerkmag_mean	numeric	average frequencybodybodygyrojerkmag_mean	
