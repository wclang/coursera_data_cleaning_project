Project for Coursera/Johns Hopkins course Getting and Cleaning Data
===============================================================================
William C. Lang
Indiana University Southeast
May 31, 2016
===============================================================================

This project is based on data from the Non-Linear Complex Systems Laboratory,
as supplied in the Coursera course indicated above [1]. The data give measured
and computed values derived from acceleratometer data from a Samsung smart
phone. This includes values of 561 such features, representing six types of
activity performed by 30 subjects; the data includes a total of 10299 
observations of the 561 features. The data as described were cut into two
sets, a training set and a test set, comprising respectively 21 subjects and
9 subjects. 

For this project, this data was read and then merged into a single data frame. Then 66 features were selected (those that were means or standard
deviatians), and kept. The result was a data frame that included 68 columns:
the 66 features just mentioned, and the subjects and activities columns. This
data frame included 10299 observations. Finally, a summary data set was 
computed, containing averages over subjects and activities of the 66 features
described above. This was written as a text file.

===============================================================================
This project contains the following files:

 -- 'README.md': This file.
 
 -- 'run_analysis.R': The R script that performed the analysis described above.
 
 -- 'summary_data_set.txt': The summary data set produced by the R script.
 
 -- 'CodeBook.md': A list of all features of the summary data set

===============================================================================
 [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012