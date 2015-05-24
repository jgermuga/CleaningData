This data set is a derivation of the "Human Activity Recognition Using Smartphones Dataset Version 1.0" gathered by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto of the "Smartlab - Non Linear Complex Systems Laboratory} at "DITEN - Università degli Studi di Genova"

Per the original research description...

----------------------

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

-----------------------


The original dataset captured 561 measures including

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- Its activity label. 
- An identifier of the subject who carried out the experiment."

From the original data, transformations were applied to   
1. merge the original 561 values from the "test" and "train" subject groups
2. Apply the labels for activity and subject to the source data files
3. compute the average for the mean and standard deviation measurements of the base data covering

The following files are included in the tidy data set:
=========================================

- 'README.txt': This file

- run_analysis.R - File to be run in the root directory of the unzipped data set to reprduce the tidy set contained herin 

- 'codebook.txt': Shows information about the calculated measures.

- 'avg_by_activity_subject_tidy.txt': Contains the merged test and train data set along with the corresponding activity and subject, along with the extracted the mean and std (satndard deviation) measures with the average applied by activity and subject identity label




For more information about this original dataset contact: activityrecognition@smartlab.ws

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

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
