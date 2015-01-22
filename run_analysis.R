library(plyr)
features = read.table("features.txt")
featureNames = features[,2]
testSet = read.table("test/X_test.txt",stringsAsFactors=FALSE, col.names=featureNames)
testSet$Subject = read.table("test/subject_test.txt",stringsAsFactors=FALSE,col.names="Subject")$Subject
testSet$Activity = read.table("test/Y_test.txt",col.names="Activity")$Activity

trainSet = read.table("train/X_train.txt",stringsAsFactors=FALSE, col.names=featureNames)
trainSet$Subject = read.table("train/subject_train.txt",stringsAsFactors=FALSE,col.names="Subject")$Subject
trainSet$Activity = read.table("train/Y_train.txt",col.names="Activity")$Activity

data = rbind(testSet,trainSet)

subData = data[,grep("mean|std|Activity|Subject",colnames(data))]

subData$Activity = as.factor(subData$Activity)
levels(subData$Activity) = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
dataSummary = ddply(subData,.(Subject, Activity),numcolwise(mean,na.rm = TRUE))


write.table(dataSummary, "tidy.txt", row.name=FALSE)