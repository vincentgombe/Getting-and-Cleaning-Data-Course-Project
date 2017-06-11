#Week 4: Getting and cleaning data project

#Download the data files if not already downloaded



if(!file.exists("./data"))
	{dir.create("./data")

Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest <- "./data/datasets.zip"


download.file(Url,dest,mode="wb")

downloadDate <- date()
downloadDate


#unzip the files

data.files <- unzip(dest,exdir = "./data")
}
##################################################################
#1. Merges the training and the test sets to create one data set.#
##################################################################

# Read in the test data tables

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")


X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")


y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")



#Read in the training data tables

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")


X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")


y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")



# Read in the feature vector
features <- read.table("./data/UCI HAR Dataset/features.txt")

# Read in the activity labels
activityLabels = read.table("./data/UCI HAR Dataset/activity_labels.txt")


#assign column names to the data tables

colnames(X_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"


colnames(X_train) <- features[,2] 
colnames(y_train) <- "activityId"
colnames(subject_train) <- "subjectId"

colnames(activityLabels) <- c("activityId","activityType")

#merge the data

mergedTest <- cbind(y_test, subject_test, X_test)
mergedTrain <- cbind(y_train, subject_train, X_train)

mergedData <- rbind(mergedTest , mergedTrain )



###########################################################################################
#2. Extracts only the measurements on the mean and standard deviation for each measurement#
###########################################################################################
library(dtplyr)
library(dplyr)
library(data.table)

meanStd <- as.data.table(mergedData) 
			meanStd <- meanStd %>%
				select(subjectId,activityId,contains("activityId"),contains("-mean()"),contains("-std()"))

 


###########################################################################
#3. Uses descriptive activity names to name the activities in the data set#
###########################################################################

meanStdData <- merge(meanStd,activityLabels, by = "activityId",all.x =T)

#re-arrange columns

meanStdData <- as.data.table(meanStdData)

meanStdData <- meanStdData %>%
	select(subjectId,activityId,activityType,contains("-mean()"),contains("-std()"))


########################################################################
#4. Appropriately labels the data set with descriptive variable names. #
########################################################################

#Remove parentheses and set names to lower case

names(meanStdData) <- gsub("\\(|\\)", "", tolower(names(meanStdData)), perl  = TRUE)

#substitute abbreviations in names to full descriptive words

names(meanStdData) <- gsub("acc","acceleration",names(meanStdData))
names(meanStdData) <- gsub("^t","time",names(meanStdData))
names(meanStdData) <- gsub("^f","frequency",names(meanStdData))
names(meanStdData) <- gsub("bodybody","body",names(meanStdData))
names(meanStdData) <- gsub("freq","frequency",names(meanStdData))
names(meanStdData) <- gsub("mag","magnitude",names(meanStdData))
names(meanStdData) <- gsub("-", "_",names(meanStdData))





##################################################################################################################################################
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.#
###################################################################################################################################################

tidyDataAve <- as.data.table(meanStdData) %>%
	                               group_by(subjectid,activityid,activitytype) %>%
										summarise_each(funs(mean),c(contains("std"),contains("mean")))%>%
											arrange(subjectid,activityid)

#write data set
write.table(tidyDataAve ,file="./tidyDataAve.txt")
	
		


						
		