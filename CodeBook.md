# Code Book

run_analysis.R:

## Step 1: 
read trainSet, testSet from input files

- trainX: data from X_train.txt
- trainY: data from Y_train.txt
- trainSub: data from subject_train.txt

- testX: data from X_test.txt
- testY: data from y_test.txt
- testSub: data from subject_test.txt

###transforms:
* dataX : joins (trainX, testX)
* dataY : joins (trainY, testY)
* dataSub: joins (trainSub, testSub)

## Step 2 , 3 & 4:
Get the feautures and activities from input files

* Relevant columns with mean and std in theirs to be extracted for final computations
* features, featuresWanted and activities
* set the column names accordingly

## Step 5:
* using colMeans function to extract only relevant information and save it to disk with file name - independent_tidydata.txt 




## Fields from saved Dataset 'independent_tidydata.txt'

* "subject" : 30 subjects
* "activity" : LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
* "tBodyAccmeanX"
* "tBodyAccmeanY"               
* "tBodyAccmeanZ"
* "tBodyAccstdX"                
* "tBodyAccstdY"
* "tBodyAccstdZ"                
* "tGravityAccmeanX"
* "tGravityAccmeanY"            
* "tGravityAccmeanZ"
* "tGravityAccstdX"             
* "tGravityAccstdY"
* "tGravityAccstdZ"             
* "tBodyAccJerkmeanX"
* "tBodyAccJerkmeanY"           
* "tBodyAccJerkmeanZ"
* "tBodyAccJerkstdX"            
* "tBodyAccJerkstdY"
* "tBodyAccJerkstdZ"            
* "tBodyGyromeanX" 
* "tBodyGyromeanY"              
* "tBodyGyromeanZ"
* "tBodyGyrostdX"               
* "tBodyGyrostdY" 
* "tBodyGyrostdZ"               
* "tBodyGyroJerkmeanX" 
* "tBodyGyroJerkmeanY"          
* "tBodyGyroJerkmeanZ" 
* "tBodyGyroJerkstdX"           
* "tBodyGyroJerkstdY" 
* "tBodyGyroJerkstdZ"           
* "tBodyAccMagmean"        
* "tBodyAccMagstd"              
* "tGravityAccMagmean"     
* "tGravityAccMagstd"           
* "tBodyAccJerkMagmean"
* "tBodyAccJerkMagstd"          
* "tBodyGyroMagmean"
* "tBodyGyroMagstd"             
* "tBodyGyroJerkMagmean"
* "tBodyGyroJerkMagstd"         
* "fBodyAccmeanX"                
* "fBodyAccmeanY"               
* "fBodyAccmeanZ"
* "fBodyAccstdX"                
* "fBodyAccstdY"
* "fBodyAccstdZ"                
* "fBodyAccmeanFreqX"
* "fBodyAccmeanFreqY"           
* "fBodyAccmeanFreqZ"
* "fBodyAccJerkmeanX"           
* "fBodyAccJerkmeanY"
* "fBodyAccJerkmeanZ"           
* "fBodyAccJerkstdX"
* "fBodyAccJerkstdY"            
* "fBodyAccJerkstdZ"
* "fBodyAccJerkmeanFreqX"       
* "fBodyAccJerkmeanFreqY"
* "fBodyAccJerkmeanFreqZ"       
* "fBodyGyromeanX"
* "fBodyGyromeanY"              
* "fBodyGyromeanZ"
* "fBodyGyrostdX"               
* "fBodyGyrostdY"
* "fBodyGyrostdZ"               
* "fBodyGyromeanFreqX"
* "fBodyGyromeanFreqY"          
* "fBodyGyromeanFreqZ"
* "fBodyAccMagmean"             
* "fBodyAccMagstd"
* "fBodyAccMagmeanFreq"         
* "fBodyBodyAccJerkMagmean"
* "fBodyBodyAccJerkMagstd"      
* "fBodyBodyAccJerkMagmeanFreq"
* "fBodyBodyGyroMagmean"        
* "fBodyBodyGyroMagstd"
* "fBodyBodyGyroMagmeanFreq"    
* "fBodyBodyGyroJerkMagmean"
* "fBodyBodyGyroJerkMagstd"     
* "fBodyBodyGyroJerkMagmeanFreq"
