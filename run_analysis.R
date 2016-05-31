# R script for the course project for the Coursera/Johns Hopkins
# course Getting and Cleaning Data. This script reads files from
# a data set for smart phone accelerometer data, and prepares a
# tidy data set containing summary values (averages) for certain
# features.
#
# William C Lang
# 2016-05-31

# The data set should be in the current working directory.

library(dplyr)

# get feature variable names
u <- readLines("UCI HAR Dataset/features.txt")
# each line of file begins with a number; remove these.
v <- strsplit(u," ")
n <- length(v)
features <- c()
for (i in 1:n) {
    features[i] <- v[[i]][2]
}
rm(u, v)

# now get indices of features containing 'mean()' or 'std()'
u1 <- grep("mean\\(", features)
u2 <- grep("std\\(", features)
mean.or.std <- sort(c(u1,u2))
rm(u1, u2)

# now make feature names nicer to read
u <- gsub("-",".",features)
v <- gsub("\\(\\)","",u)
features <- v
rm(u,v)

# get activity labels; make them nicer to read
u <- readLines("UCI HAR Dataset/activity_labels.txt")
v <- strsplit(u," ")
n <- length(v)
w <- c()
for (i in 1:n) {
    w[i] <- v[[i]][2]
}
activity.labels <- tolower( gsub("_",".",w) )
rm(u, v, w)

# now read in the activities data, and convert to 
# factors with nice labels
y.train <- as.numeric( readLines("UCI HAR Dataset/train/y_train.txt", n=-1) )
y.test <- as.numeric( readLines("UCI HAR Dataset/test/y_test.txt", n=-1) )
activities.train <- factor( activity.labels[y.train],
                            levels = activity.labels)
activities.test <- factor( activity.labels[y.test] ,
                           levels = activity.labels)

# read in subjects data as factors
subjects.train <- as.numeric( 
    readLines("UCI HAR Dataset/train/subject_train.txt", n=-1) )
subjects.test <- as.numeric( 
    readLines("UCI HAR Dataset/test/subject_test.txt", n=-1) )

# read in the measurements data itself, and cast as data frames
X.train <- scan(file="UCI HAR Dataset/train/X_train.txt")
M.train <- matrix(X.train, ncol=561, byrow=TRUE) # 561 components to each vector
df1 <- data.frame(M.train) 
colnames(df1) <- features
# keep only the features with 'mean' or 'std'
DF.train <- df1[ , mean.or.std]
# include subjects and activities data
DF.train$subjects <- subjects.train
DF.train$activities <- activities.train
rm(X.train, M.train, df1)

X.test <- scan(file="UCI HAR Dataset/test/X_test.txt")
M.test <- matrix(X.test, ncol=561, byrow=TRUE) # 561 components to each vector
df1 <- data.frame(M.test) 
colnames(df1) <- features
# keep only the features with 'mean' or 'std'
DF.test <- df1[ , mean.or.std]
# include subjects and activities data
DF.test$subjects <- subjects.test
DF.test$activities <- activities.test
rm(X.test, M.test, df1)

# now merge data sets into single data frame.
DF.all <- rbind(DF.train, DF.test)

# generate summary data set by taking averages by subject and activity
DF <- group_by(DF.all, subjects, activities)
DF.summary <- summarize_each(DF, funs(mean))

# write summary data set to text file
write.table(DF.summary, file="summary_data_set.txt", row.names=FALSE)
