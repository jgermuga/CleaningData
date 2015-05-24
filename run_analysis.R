##Set the working directory
##setwd("C:/Users/GadgetMaster/Documents/DataScienceCourse/CleaningData/UCI HAR Dataset/")


##read in features to be used as column headings
features <- read.table("features.txt")
##clean up column names bit so the output doesn't include so many periods
column_names <- gsub("\\(|\\)|\\-" ,"", features$V2)
rm(features)

##TEST data
  ##read the main data table, note - step 4 is addressed with the column.names parameter
  test_data <- read.table("test/x_test.txt", col.names=column_names)
  
  ##get and bind the activity type to the left
  test_activity <- read.table("test/y_test.txt", col.names="activity_id")
  test_data <-cbind(test_activity, test_data)
  
  ##get and bind the subject tpo the left 
  test_subject <- read.table("test/subject_test.txt", col.names="subject")
  test_data <-cbind(test_subject, test_data)
  

##TRAIN Data
  ##do all of the same steps as above for the "TRAIN" data
  train_data <- read.table("train/x_train.txt", col.names=column_names)
  train_activity <- read.table("train/y_train.txt", col.names="activity_id")
  train_data <-cbind(train_activity, train_data)
  train_subject <- read.table("train/subject_train.txt", col.names="subject")
  train_data <-cbind(train_subject, train_data)


##Merge the two sets of rows (step 1 - finally)
merged_test_train <- rbind(test_data,train_data)

##remove the intermediate items no longer necessary
rm(test_data, test_activity, test_subject, train_data, train_activity, train_subject)

##get labels for activities
activity_label <- read.table("activity_labels.txt", col.names=c("activity_id","activity"))

##merge in the activity label (step 3)
merged_test_train <- merge(activity_label, merged_test_train,  by.x = "activity_id", by.y = "activity_id", sort = FALSE)
rm(activity_label)


##grep and subset just the id rows plus mean and std columns using the column labels (step 2)
mean_std_columns <- names(merged_test_train[, grepl("mean|std",names(merged_test_train))])
mean_std <- cbind(merged_test_train[,c('activity','subject')], merged_test_train[, mean_std_columns])

## use plyr packace to group by subject and and activity (step 5)
avg_by_activity_subject <- group_by(mean_std, activity, subject) %>% summarise_each(funs(mean))

##write files back out as tidy data sets, needed for submission to github
write.table(merged_test_train,"merged_tidy.txt",row.names = FALSE)
write.table(mean_std,"mean_std_tidy.txt",row.names = FALSE)
write.table(avg_by_activity_subject,"avg_by_activity_subject_tidy.txt",row.names = FALSE)
