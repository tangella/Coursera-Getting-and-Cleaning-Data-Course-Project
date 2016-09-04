library(plyr)

# Step 1
# Load data sets in train and test Data Frames
###############################################################################

trainX <- read.table("../UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("../UCI HAR Dataset/train/Y_train.txt")
trainSub <- read.table("../UCI HAR Dataset/train/subject_train.txt")

testX <- read.table("../UCI HAR Dataset/test/X_test.txt")
testY <- read.table("../UCI HAR Dataset/test/y_test.txt")
testSub <- read.table("../UCI HAR Dataset/test/subject_test.txt")

# combine x & y datasets
dataX <- rbind(trainX, testX)
dataY <- rbind(trainY, testY)

# combine 'subject' data set
dataSub <- rbind(trainSub, testSub)

# Step 2

features <- read.table("../UCI HAR Dataset/features.txt")

# get only columns with mean or std in their names
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])

# subset the desired columns
dataX <- dataX[, featuresWanted]

# correct the column names
names(dataX) <- features[featuresWanted, 2]

# Step 3

activities <- read.table("../UCI HAR Dataset/activity_labels.txt")

# update values with correct activity names
dataY[, 1] <- activities[dataY[, 1], 2]

# correct column name
names(dataY) <- "activity"

# Step 4

# correct column name
names(dataSub) <- "subject"

# bind all the data in a single data set
dataAll <- cbind(dataX, dataY, dataSub)

# Step 5
# Create a second, independent tidy data set with the average of each variable

dataAve <- ddply(dataAll, .(subject, activity), function(x) colMeans(x[, 1:79]))

#remove '()' from the names for readability
colnames(dataAve) <- gsub('[-()]', '', colnames(dataAve))


write.table(dataAve, "independent_tidydata.txt", row.name=FALSE)