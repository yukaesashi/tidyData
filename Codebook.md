---
title: "Codebook.Rmd"
author: "Yuka Esashi"
date: "July 22, 2014"
output: html_document
---

**Column 1 to 66 contains numeric values. Features are normalized and bounded within [-1,1]. The values are:**


tBodyAcc-mean()-X: Mean signals from accelerometer, coordinate X      
tBodyAcc-mean()-Y": Mean signals from accelerometer, coordinate Y         
tBodyAcc-mean()-Z": Mean signals from accelerometer, coordinate Z     
tBodyAcc-std()-X: Standard deviation of signals from accelerometer, coordinate X         
tBodyAcc-std()-Y: Standard deviation of signals from accelerometer, coordinate Y                    
tBodyAcc-std()-Z: Standard deviation of signals from accelerometer, coordinate Z                    
tGravityAcc-mean()-X: Mean gravity signals from accelerometer, coordinate X             
tGravityAcc-mean()-Y: Mean gravity signals from accelerometer, coordinate Y                  
tGravityAcc-mean()-Z: Mean gravity signals from accelerometer, coordinate Z           
tGravityAcc-std()-X: Standard deviation of gravity signals from accelerometer, coordinate X               
tGravityAcc-std()-Y: Standard deviation of gravity signals from accelerometer, coordinate Y        
tGravityAcc-std()-Z: Standard deviation of gravity signals from accelerometer, coordinate Z                
tBodyAccJerk-mean()-X: Mean jerk signals from accelerometer, coordinate X             
tBodyAccJerk-mean()-Y: Mean jerk signals from accelerometer, coordinate Y                
tBodyAccJerk-mean()-Z: Mean jerk signals from accelerometer, coordinate Z                
tBodyAccJerk-std()-X: Standard deviation of jerk signals from accelerometer, coordinate X                    
tBodyAccJerk-std()-Y: Standard deviation of jerk signals from accelerometer, coordinate Y                 
tBodyAccJerk-std()-Z: Standard deviation of jerk signals from accelerometer, coordinate Z                  
tBodyGyro-mean()-X: Mean signals from gyroscope, coordinate X     
tBodyGyro-mean()-Y: Mean signals from gyroscope, coordinate Y          
tBodyGyro-mean()-Z: Mean signals from gyroscope, coordinate Z              
tBodyGyro-std()-X: Standard deviation of signals from gyroscope, coordinate X             
tBodyGyro-std()-Y: Standard deviation of signals from gyroscope, coordinate Y                  
tBodyGyro-std()-Z: Standard deviation of signals from gyroscope, coordinate Z                  
tBodyGyroJerk-mean()-X: Mean jerk signals from gyroscope, coordinate X     
tBodyGyroJerk-mean()-Y: Mean jerk signals from gyroscope, coordinate Y     
tBodyGyroJerk-mean()-Z: Mean jerk signals from gyroscope, coordinate Z     
tBodyGyroJerk-std()-X: Standard deviation of jerk signals from gyroscope, coordinate X            
tBodyGyroJerk-std()-Y: Standard deviation of jerk signals from gyroscope, coordinate Y              
tBodyGyroJerk-std()-Z: Standard deviation of jerk signals from gyroscope, coordinate Z              
tBodyAccMag-mean(): Mean magnitude of signals from accelerometer                
tBodyAccMag-std(): Standard deviation of magnitude of signals from accelerometer            
tGravityAccMag-mean(): Mean magnitude of signals from gyroscope      
tGravityAccMag-std(): Standard deviation of magnitude of signals from gyroscope           
tBodyAccJerkMag-mean(): Mean magnitude of jerk signals from accelerometer         
tBodyAccJerkMag-std(): Standard deviation of magnitude of jerk signals from accelerometer       
tBodyGyroMag-mean(): Mean magnitude of signals from gyroscope         
tBodyGyroMag-std(): Standard deviation of magnitude of signals from gyroscope              
tBodyGyroJerkMag-mean(): Mean magnitude of jerk signals from gyroscope      
tBodyGyroJerkMag-std(): Standard deviation of magnitude of jerk signals from gyroscope   

**26 of the features above exist as another feature with a f prefix instead of t (which denote time domain), and are for the data Fast Fourier Transform (FFT) was applied on.**

fBodyAcc-mean()-X"          
fBodyAcc-mean()-Y"          
fBodyAcc-mean()-Z"          
fBodyAcc-std()-X"           
fBodyAcc-std()-Y"           
fBodyAcc-std()-Z"           
fBodyAccJerk-mean()-X"      
fBodyAccJerk-mean()-Y"      
fBodyAccJerk-mean()-Z"      
fBodyAccJerk-std()-X"       
fBodyAccJerk-std()-Y"       
fBodyAccJerk-std()-Z"       
fBodyGyro-mean()-X"         
fBodyGyro-mean()-Y"         
fBodyGyro-mean()-Z"         
fBodyGyro-std()-X"              
fBodyGyro-std()-Y"              
fBodyGyro-std()-Z"    
fBodyAccMag-mean()"         
fBodyAccMag-std()"          
fBodyBodyAccJerkMag-mean()"   
fBodyBodyAccJerkMag-std()"    
fBodyBodyGyroMag-mean()"    
fBodyBodyGyroMag-std()"     
fBodyBodyGyroJerkMag-mean()"    
fBodyBodyGyroJerkMag-std()"   
