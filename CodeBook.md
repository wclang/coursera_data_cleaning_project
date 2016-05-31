Code Book
=================
William C. Lang
May 31, 2016
=================

The features in this database were derived from data from the Non-Linear Complex Systems Laboratory, as supplied in the Coursera course indicated above [1]. The
data give measured and computed values derived from acceleratometer data from a Samsung smart phone. The orignal dataset includes values of 561 such features, representing six types of activity performed by 30 subjects. This data involves time domain signals captured at a constant rate of 50 Hz, processed as described in the original data set. Among the derived features were ones that give means or standard deviations of the original measurements; there were 66 such features:

tBodyAcc.mean.X 
tBodyAcc.mean.Y 
tBodyAcc.mean.Z 
tBodyAcc.std.X 
tBodyAcc.std.Y 
tBodyAcc.std.Z 
tGravityAcc.mean.X 
tGravityAcc.mean.Y 
tGravityAcc.mean.Z 
tGravityAcc.std.X 
tGravityAcc.std.Y 
tGravityAcc.std.Z 
tBodyAccJerk.mean.X 
tBodyAccJerk.mean.Y 
tBodyAccJerk.mean.Z 
tBodyAccJerk.std.X 
tBodyAccJerk.std.Y 
tBodyAccJerk.std.Z 
tBodyGyro.mean.X 
tBodyGyro.mean.Y 
tBodyGyro.mean.Z 
tBodyGyro.std.X 
tBodyGyro.std.Y 
tBodyGyro.std.Z 
tBodyGyroJerk.mean.X 
tBodyGyroJerk.mean.Y 
tBodyGyroJerk.mean.Z 
tBodyGyroJerk.std.X 
tBodyGyroJerk.std.Y 
tBodyGyroJerk.std.Z 
tBodyAccMag.mean 
tBodyAccMag.std 
tGravityAccMag.mean 
tGravityAccMag.std 
tBodyAccJerkMag.mean 
tBodyAccJerkMag.std 
tBodyGyroMag.mean 
tBodyGyroMag.std 
tBodyGyroJerkMag.mean 
tBodyGyroJerkMag.std 
fBodyAcc.mean.X 
fBodyAcc.mean.Y 
fBodyAcc.mean.Z 
fBodyAcc.std.X 
fBodyAcc.std.Y 
fBodyAcc.std.Z 
fBodyAccJerk.mean.X 
fBodyAccJerk.mean.Y 
fBodyAccJerk.mean.Z 
fBodyAccJerk.std.X 
fBodyAccJerk.std.Y 
fBodyAccJerk.std.Z 
fBodyGyro.mean.X 
fBodyGyro.mean.Y 
fBodyGyro.mean.Z 
fBodyGyro.std.X 
fBodyGyro.std.Y 
fBodyGyro.std.Z 
fBodyAccMag.mean 
fBodyAccMag.std 
fBodyBodyAccJerkMag.mean 
fBodyBodyAccJerkMag.std 
fBodyBodyGyroMag.mean 
fBodyBodyGyroMag.std 
fBodyBodyGyroJerkMag.mean 
fBodyBodyGyroJerkMag.std 

The dataset prepared for this project gives the average value of these 66 features, averaged over each of 30 subjects performing each of 6 activities:

walking 
walking.upstairs 
walking.downstairs 
sitting 
standing 
laying 

The resulting dataset has 68 columns (subject, activity, and the 66 features listed above), and 180 rows (average values of the features for each of 180 combinations of subject and activity).

=================
 [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
