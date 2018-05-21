library(dplyr)

# download and unzip file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "UCI HAR Dataset.zip"
download.file(url, file, mode = "wb")
unzip(file)

# reading data
sTrain <- read.table(file.path("./UCI HAR Dataset", "train", "subject_train.txt"))
xTrain <- read.table(file.path("./UCI HAR Dataset", "train", "X_train.txt"))
yTrain <- read.table(file.path("./UCI HAR Dataset", "train", "y_train.txt"))

sTest <- read.table(file.path("./UCI HAR Dataset", "test", "subject_test.txt"))
xTest <- read.table(file.path("./UCI HAR Dataset", "test", "X_test.txt"))
yTest <- read.table(file.path("./UCI HAR Dataset", "test", "y_test.txt"))

features <- read.table(file.path("./UCI HAR Dataset", "features.txt"), as.is = TRUE)

activ <- read.table(file.path("./UCI HAR Dataset", "activity_labels.txt"))

# concatenating all data tables
allTables <- rbind(cbind(sTrain, xTrain, yTrain),cbind(sTest, xTest, yTest))
colnames(allTables) <- c("Subj", features[, 2], "Activ")

# keeping columns with mean and sd
col_ok <- grepl("Subj|Activ|mean|std", colnames(allTables))
allTables <- allTables[, col_ok]

# adjusting activity values
allTables$activ <- factor(allTables$activ, levels = activ[, 1], labels = activ[, 2])

# adjusting column names
allTablesCols <- colnames(allTables)
allTablesCols <- gsub("[\\(\\)-]", "", allTablesCols)
allTablesCols <- gsub("^f", "Freq", allTablesCols)
allTablesCols <- gsub("^t", "Time", allTablesCols)
allTablesCols <- gsub("BodyBody", "Body", allTablesCols)
allTablesCols <- gsub("mean", "Mean", allTablesCols)
allTablesCols <- gsub("std", "Std", allTablesCols)

colnames(allTables) <- allTablesCols

# Creating the final tidy data
allTablesMeans <- allTables %>% group_by(Subj, Activ) %>% summarise_all(funs(mean))
write.table(allTablesMeans, "tidy_data.txt", row.names = FALSE, quote = FALSE)
