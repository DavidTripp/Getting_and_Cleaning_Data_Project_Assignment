Codebook
========

Date: "September 27, 2015"


Variable Descriptions
--------------------------

###Subject
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

Variable name    | Description
-----------------|------------
subject          | ID of the 30 volunteers  who performed the activity. Its range is from 1 to 30.

###Activities
Activities performed by each person in the study.

Variable name    | Description
-----------------|------------
activity         |  Activity type that the 30 volunteers  who performed the activity. 
                 |  Its has 6 levels:
                 |   1. WALKING
                 |   2. WALKING_UPSTAIRS
                 |   3. WALKING_DOWNSTAIRS
                 |   4. SITTING
                 |   5. STANDING
                 |   6. LAYING

###Features
				 
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz are captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals 
timeAccelerometer a-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyacceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- timeBodyAccelerometer-XYZ
- timeGravityAccelerometer-XYZ
- timeBodyAccelerometerJerk-XYZ
- timeBodyGyroscope-XYZ
- timeBodyGyroscopeJerk-XYZ
- timeBodyAccelerometerMagnitude
- timeGravityAccelerometerMagnitude
- timeBodyAccelerometerJerkMagnitude
- timeBodyGyroscopeMagnitude
- timeBodyGyroscopeJerkMagnitude
- frequencyBodyAccelerometer-XYZ
- frequencyBodyAccelerometerJerk-XYZ
- frequencyBodyGyroscope-XYZ
- frequencyBodyAccelerometerMagnitude
- frequencyBodyAccelerometerJerkMagnitude
- frequencyBodyGyroscopeMagnitude
- frequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 
- mean(): Mean value
- std(): Standard deviation


68 combined Variable name used in the dataset          
--------------------------------

- timeBodyAccelerometer-mean()-X              
- timeBodyAccelerometer-mean()-Y              
- timeBodyAccelerometer-mean()-Z              
- timeBodyAccelerometer-std()-X               
- timeBodyAccelerometer-std()-Y
- timeBodyAccelerometer-std()-Z
- timeGravityAccelerometer-mean()-X
- timeGravityAccelerometer-mean()-Y
- timeGravityAccelerometer-mean()-Z
- timeGravityAccelerometer-std()-X
- timeGravityAccelerometer-std()-Y
- timeGravityAccelerometer-std()-Z
- timeBodyAccelerometerJerk-mean()-X
- timeBodyAccelerometerJerk-mean()-Y
- timeBodyAccelerometerJerk-mean()-Z
- timeBodyAccelerometerJerk-std()-X
- timeBodyAccelerometerJerk-std()-Y
- timeBodyAccelerometerJerk-std()-Z
- timeBodyGyroscope-mean()-X
- timeBodyGyroscope-mean()-Y
- timeBodyGyroscope-mean()-Z
- timeBodyGyroscope-std()-X
- timeBodyGyroscope-std()-Y
- timeBodyGyroscope-std()-Z
- timeBodyGyroscopeJerk-mean()-X
- timeBodyGyroscopeJerk-mean()-Y
- timeBodyGyroscopeJerk-mean()-Z
- timeBodyGyroscopeJerk-std()-X
- timeBodyGyroscopeJerk-std()-Y
- timeBodyGyroscopeJerk-std()-Z
- timeBodyAccelerometerMagnitude-mean()
- timeBodyAccelerometerMagnitude-std()
- timeGravityAccelerometerMagnitude-mean()
- timeGravityAccelerometerMagnitude-std()
- timeBodyAccelerometerJerkMagnitude-mean()
- timeBodyAccelerometerJerkMagnitude-std()
- timeBodyGyroscopeMagnitude-mean()
- timeBodyGyroscopeMagnitude-std()
- timeBodyGyroscopeJerkMagnitude-mean()
- timeBodyGyroscopeJerkMagnitude-std()
- frequencyBodyAccelerometer-mean()-X
- frequencyBodyAccelerometer-mean()-Y
- frequencyBodyAccelerometer-mean()-Z
- frequencyBodyAccelerometer-std()-X
- frequencyBodyAccelerometer-std()-Y
- frequencyBodyAccelerometer-std()-Z
- frequencyBodyAccelerometerJerk-mean()-X
- frequencyBodyAccelerometerJerk-mean()-Y
- frequencyBodyAccelerometerJerk-mean()-Z
- frequencyBodyAccelerometerJerk-std()-X
- frequencyBodyAccelerometerJerk-std()-Y
- frequencyBodyAccelerometerJerk-std()-Z
- frequencyBodyGyroscope-mean()-X
- frequencyBodyGyroscope-mean()-Y
- frequencyBodyGyroscope-mean()-Z
- frequencyBodyGyroscope-std()-X
- frequencyBodyGyroscope-std()-Y
- frequencyBodyGyroscope-std()-Z
- frequencyBodyAccelerometerMagnitude-mean()
- frequencyBodyAccelerometerMagnitude-std()
- frequencyBodyAccelerometerJerkMagnitude-mean()
- frequencyBodyAccelerometerJerkMagnitude-std()
- frequencyBodyGyroscopeMagnitude-mean()
- frequencyBodyGyroscopeMagnitude-std()
- frequencyBodyGyroscopeJerkMagnitude-mean()
- frequencyBodyGyroscopeJerkMagnitude-std()


Detailed Dataset Structure
-----------------

```r
str(dataMeanStdDev)
```

```
## 'data.frame':	10299 obs. of  68 variables:
##  $ subject.id                                                                 : int  2 2 2 2 2 2 2 2 2 2 ...
##  $ activity.name                                                              : Factor w/ 6 levels "LAYING","SITTING",..: 3 3 3 3 3 3 3 3 3 3 ...
##  $ time.seconds.body.accelerometer.mean.X                                     : num  0.257 0.286 0.275 0.27 0.275 ...
##  $ time.seconds.body.accelerometer.mean.Y                                     : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
##  $ time.seconds.body.accelerometer.mean.Z                                     : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
##  $ time.seconds.body.accelerometer.standard.deviation.X                       : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
##  $ time.seconds.body.accelerometer.standard.deviation.Y                       : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
##  $ time.seconds.body.accelerometer.standard.deviation.Z                       : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
##  $ time.seconds.gravity.accelerometer.mean.X                                  : num  0.936 0.927 0.93 0.929 0.927 ...
##  $ time.seconds.gravity.accelerometer.mean.Y                                  : num  -0.283 -0.289 -0.288 -0.293 -0.303 ...
##  $ time.seconds.gravity.accelerometer.mean.Z                                  : num  0.115 0.153 0.146 0.143 0.138 ...
##  $ time.seconds.gravity.accelerometer.standard.deviation.X                    : num  -0.925 -0.989 -0.996 -0.993 -0.996 ...
##  $ time.seconds.gravity.accelerometer.standard.deviation.Y                    : num  -0.937 -0.984 -0.988 -0.97 -0.971 ...
##  $ time.seconds.gravity.accelerometer.standard.deviation.Z                    : num  -0.564 -0.965 -0.982 -0.992 -0.968 ...
##  $ time.seconds.body.accelerometer.gyroscope.mean.X                           : num  0.072 0.0702 0.0694 0.0749 0.0784 ...
##  $ time.seconds.body.accelerometer.gyroscope.mean.Y                           : num  0.04575 -0.01788 -0.00491 0.03227 0.02228 ...
##  $ time.seconds.body.accelerometer.gyroscope.mean.Z                           : num  -0.10604 -0.00172 -0.01367 0.01214 0.00275 ...
##  $ time.seconds.body.accelerometer.gyroscope.standard.deviation.X             : num  -0.907 -0.949 -0.991 -0.991 -0.992 ...
##  $ time.seconds.body.accelerometer.gyroscope.standard.deviation.Y             : num  -0.938 -0.973 -0.971 -0.973 -0.979 ...
##  $ time.seconds.body.accelerometer.gyroscope.standard.deviation.Z             : num  -0.936 -0.978 -0.973 -0.976 -0.987 ...
##  $ time.seconds.body.jerk.mean.X                                              : num  0.11998 -0.00155 -0.04821 -0.05664 -0.05999 ...
##  $ time.seconds.body.jerk.mean.Y                                              : num  -0.0918 -0.1873 -0.1663 -0.126 -0.0847 ...
##  $ time.seconds.body.jerk.mean.Z                                              : num  0.1896 0.1807 0.1542 0.1183 0.0787 ...
##  $ time.seconds.body.jerk.standard.deviation.X                                : num  -0.883 -0.926 -0.973 -0.968 -0.975 ...
##  $ time.seconds.body.jerk.standard.deviation.Y                                : num  -0.816 -0.93 -0.979 -0.975 -0.978 ...
##  $ time.seconds.body.jerk.standard.deviation.Z                                : num  -0.941 -0.968 -0.976 -0.963 -0.968 ...
##  $ time.seconds.body.jerk.gyroscope.mean.X                                    : num  -0.2049 -0.1387 -0.0978 -0.1022 -0.0918 ...
##  $ time.seconds.body.jerk.gyroscope.mean.Y                                    : num  -0.1745 -0.0258 -0.0342 -0.0447 -0.029 ...
##  $ time.seconds.body.jerk.gyroscope.mean.Z                                    : num  -0.0934 -0.0714 -0.06 -0.0534 -0.0612 ...
##  $ time.seconds.body.jerk.gyroscope.standard.deviation.X                      : num  -0.901 -0.962 -0.984 -0.984 -0.988 ...
##  $ time.seconds.body.jerk.gyroscope.standard.deviation.Y                      : num  -0.911 -0.956 -0.988 -0.99 -0.992 ...
##  $ time.seconds.body.jerk.gyroscope.standard.deviation.Z                      : num  -0.939 -0.981 -0.976 -0.981 -0.982 ...
##  $ time.seconds.body.accelerometer.magnitude.mean                             : num  -0.867 -0.969 -0.976 -0.974 -0.976 ...
##  $ time.seconds.body.accelerometer.magnitude.standard.deviation               : num  -0.705 -0.954 -0.979 -0.977 -0.977 ...
##  $ time.seconds.gravity.accelerometer.magnitude.mean                          : num  -0.867 -0.969 -0.976 -0.974 -0.976 ...
##  $ time.seconds.gravity.accelerometer.magnitude.standard.deviation            : num  -0.705 -0.954 -0.979 -0.977 -0.977 ...
##  $ time.seconds.body.accelerometer.gyroscope.magnitude.mean                   : num  -0.93 -0.974 -0.982 -0.983 -0.987 ...
##  $ time.seconds.body.accelerometer.gyroscope.magnitude.standard.deviation     : num  -0.896 -0.941 -0.971 -0.975 -0.989 ...
##  $ time.seconds.body.jerk.magnitude.mean                                      : num  -0.796 -0.898 -0.939 -0.947 -0.957 ...
##  $ time.seconds.body.jerk.magnitude.standard.deviation                        : num  -0.762 -0.911 -0.972 -0.97 -0.969 ...
##  $ time.seconds.body.jerk.gyroscope.magnitude.mean                            : num  -0.925 -0.973 -0.987 -0.989 -0.99 ...
##  $ time.seconds.body.jerk.gyroscope.magnitude.standard.deviation              : num  -0.894 -0.944 -0.984 -0.986 -0.99 ...
##  $ frequency.hz.body.accelerometer.mean.X                                     : num  -0.919 -0.961 -0.992 -0.993 -0.992 ...
##  $ frequency.hz.body.accelerometer.mean.Y                                     : num  -0.918 -0.964 -0.965 -0.968 -0.969 ...
##  $ frequency.hz.body.accelerometer.mean.Z                                     : num  -0.789 -0.957 -0.967 -0.967 -0.98 ...
##  $ frequency.hz.body.accelerometer.standard.deviation.X                       : num  -0.948 -0.984 -0.995 -0.996 -0.995 ...
##  $ frequency.hz.body.accelerometer.standard.deviation.Y                       : num  -0.925 -0.97 -0.974 -0.977 -0.967 ...
##  $ frequency.hz.body.accelerometer.standard.deviation.Z                       : num  -0.636 -0.942 -0.962 -0.969 -0.978 ...
##  $ frequency.hz.body.accelerometer.gyroscope.mean.X                           : num  -0.9 -0.944 -0.991 -0.991 -0.991 ...
##  $ frequency.hz.body.accelerometer.gyroscope.mean.Y                           : num  -0.937 -0.969 -0.973 -0.972 -0.98 ...
##  $ frequency.hz.body.accelerometer.gyroscope.mean.Z                           : num  -0.924 -0.973 -0.972 -0.97 -0.983 ...
##  $ frequency.hz.body.accelerometer.gyroscope.standard.deviation.X             : num  -0.924 -0.962 -0.992 -0.992 -0.994 ...
##  $ frequency.hz.body.accelerometer.gyroscope.standard.deviation.Y             : num  -0.943 -0.98 -0.971 -0.975 -0.979 ...
##  $ frequency.hz.body.accelerometer.gyroscope.standard.deviation.Z             : num  -0.948 -0.981 -0.972 -0.981 -0.989 ...
##  $ frequency.hz.body.jerk.mean.X                                              : num  -0.824 -0.923 -0.973 -0.972 -0.976 ...
##  $ frequency.hz.body.jerk.mean.Y                                              : num  -0.808 -0.926 -0.981 -0.981 -0.98 ...
##  $ frequency.hz.body.jerk.mean.Z                                              : num  -0.918 -0.968 -0.972 -0.967 -0.969 ...
##  $ frequency.hz.body.jerk.standard.deviation.X                                : num  -0.903 -0.927 -0.973 -0.967 -0.974 ...
##  $ frequency.hz.body.jerk.standard.deviation.Y                                : num  -0.823 -0.932 -0.977 -0.972 -0.977 ...
##  $ frequency.hz.body.jerk.standard.deviation.Z                                : num  -0.956 -0.97 -0.979 -0.965 -0.97 ...
##  $ frequency.hz.body.accelerometer.magnitude.mean                             : num  -0.791 -0.954 -0.976 -0.973 -0.978 ...
##  $ frequency.hz.body.accelerometer.magnitude.standard.deviation               : num  -0.711 -0.96 -0.984 -0.982 -0.979 ...
##  $ frequency.hz.body.body.accelerometer.gyroscope.magnitude.mean              : num  -0.895 -0.945 -0.971 -0.972 -0.987 ...
##  $ frequency.hz.body.body.accelerometer.gyroscope.magnitude.standard.deviation: num  -0.896 -0.934 -0.97 -0.978 -0.99 ...
##  $ frequency.hz.body.body.jerk.magnitude.mean                                 : num  -0.771 -0.924 -0.975 -0.976 -0.977 ...
##  $ frequency.hz.body.body.jerk.magnitude.standard.deviation                   : num  -0.797 -0.917 -0.974 -0.971 -0.97 ...
##  $ frequency.hz.body.body.jerk.gyroscope.magnitude.mean                       : num  -0.89 -0.952 -0.986 -0.986 -0.99 ...
##  $ frequency.hz.body.body.jerk.gyroscope.magnitude.standard.deviation         : num  -0.907 -0.938 -0.983 -0.986 -0.991 ...
```

## Summarized Dataset Structure
-----------------

```r
summary(dataAggMeanStdDev)
```

```
##    subject.id              activity.name
##  Min.   : 1.0   LAYING            :30   
##  1st Qu.: 8.0   SITTING           :30   
##  Median :15.5   STANDING          :30   
##  Mean   :15.5   WALKING           :30   
##  3rd Qu.:23.0   WALKING_DOWNSTAIRS:30   
##  Max.   :30.0   WALKING_UPSTAIRS  :30   
##  time.seconds.body.accelerometer.mean.X
##  Min.   :0.2216                        
##  1st Qu.:0.2712                        
##  Median :0.2770                        
##  Mean   :0.2743                        
##  3rd Qu.:0.2800                        
##  Max.   :0.3015                        
##  time.seconds.body.accelerometer.mean.Y
##  Min.   :-0.040514                     
##  1st Qu.:-0.020022                     
##  Median :-0.017262                     
##  Mean   :-0.017876                     
##  3rd Qu.:-0.014936                     
##  Max.   :-0.001308                     
##  time.seconds.body.accelerometer.mean.Z
##  Min.   :-0.15251                      
##  1st Qu.:-0.11207                      
##  Median :-0.10819                      
##  Mean   :-0.10916                      
##  3rd Qu.:-0.10443                      
##  Max.   :-0.07538                      
##  time.seconds.body.accelerometer.standard.deviation.X
##  Min.   :-0.9961                                     
##  1st Qu.:-0.9799                                     
##  Median :-0.7526                                     
##  Mean   :-0.5577                                     
##  3rd Qu.:-0.1984                                     
##  Max.   : 0.6269                                     
##  time.seconds.body.accelerometer.standard.deviation.Y
##  Min.   :-0.99024                                    
##  1st Qu.:-0.94205                                    
##  Median :-0.50897                                    
##  Mean   :-0.46046                                    
##  3rd Qu.:-0.03077                                    
##  Max.   : 0.61694                                    
##  time.seconds.body.accelerometer.standard.deviation.Z
##  Min.   :-0.9877                                     
##  1st Qu.:-0.9498                                     
##  Median :-0.6518                                     
##  Mean   :-0.5756                                     
##  3rd Qu.:-0.2306                                     
##  Max.   : 0.6090                                     
##  time.seconds.gravity.accelerometer.mean.X
##  Min.   :-0.6800                          
##  1st Qu.: 0.8376                          
##  Median : 0.9208                          
##  Mean   : 0.6975                          
##  3rd Qu.: 0.9425                          
##  Max.   : 0.9745                          
##  time.seconds.gravity.accelerometer.mean.Y
##  Min.   :-0.47989                         
##  1st Qu.:-0.23319                         
##  Median :-0.12782                         
##  Mean   :-0.01621                         
##  3rd Qu.: 0.08773                         
##  Max.   : 0.95659                         
##  time.seconds.gravity.accelerometer.mean.Z
##  Min.   :-0.49509                         
##  1st Qu.:-0.11726                         
##  Median : 0.02384                         
##  Mean   : 0.07413                         
##  3rd Qu.: 0.14946                         
##  Max.   : 0.95787                         
##  time.seconds.gravity.accelerometer.standard.deviation.X
##  Min.   :-0.9968                                        
##  1st Qu.:-0.9825                                        
##  Median :-0.9695                                        
##  Mean   :-0.9638                                        
##  3rd Qu.:-0.9509                                        
##  Max.   :-0.8296                                        
##  time.seconds.gravity.accelerometer.standard.deviation.Y
##  Min.   :-0.9942                                        
##  1st Qu.:-0.9711                                        
##  Median :-0.9590                                        
##  Mean   :-0.9524                                        
##  3rd Qu.:-0.9370                                        
##  Max.   :-0.6436                                        
##  time.seconds.gravity.accelerometer.standard.deviation.Z
##  Min.   :-0.9910                                        
##  1st Qu.:-0.9605                                        
##  Median :-0.9450                                        
##  Mean   :-0.9364                                        
##  3rd Qu.:-0.9180                                        
##  Max.   :-0.6102                                        
##  time.seconds.body.accelerometer.gyroscope.mean.X
##  Min.   :0.04269                                 
##  1st Qu.:0.07396                                 
##  Median :0.07640                                 
##  Mean   :0.07947                                 
##  3rd Qu.:0.08330                                 
##  Max.   :0.13019                                 
##  time.seconds.body.accelerometer.gyroscope.mean.Y
##  Min.   :-0.0386872                              
##  1st Qu.: 0.0004664                              
##  Median : 0.0094698                              
##  Mean   : 0.0075652                              
##  3rd Qu.: 0.0134008                              
##  Max.   : 0.0568186                              
##  time.seconds.body.accelerometer.gyroscope.mean.Z
##  Min.   :-0.067458                               
##  1st Qu.:-0.010601                               
##  Median :-0.003861                               
##  Mean   :-0.004953                               
##  3rd Qu.: 0.001958                               
##  Max.   : 0.038053                               
##  time.seconds.body.accelerometer.gyroscope.standard.deviation.X
##  Min.   :-0.9946                                               
##  1st Qu.:-0.9832                                               
##  Median :-0.8104                                               
##  Mean   :-0.5949                                               
##  3rd Qu.:-0.2233                                               
##  Max.   : 0.5443                                               
##  time.seconds.body.accelerometer.gyroscope.standard.deviation.Y
##  Min.   :-0.9895                                               
##  1st Qu.:-0.9724                                               
##  Median :-0.7756                                               
##  Mean   :-0.5654                                               
##  3rd Qu.:-0.1483                                               
##  Max.   : 0.3553                                               
##  time.seconds.body.accelerometer.gyroscope.standard.deviation.Z
##  Min.   :-0.99329                                              
##  1st Qu.:-0.98266                                              
##  Median :-0.88366                                              
##  Mean   :-0.73596                                              
##  3rd Qu.:-0.51212                                              
##  Max.   : 0.03102                                              
##  time.seconds.body.jerk.mean.X time.seconds.body.jerk.mean.Y
##  Min.   :-0.20578              Min.   :-0.20421             
##  1st Qu.:-0.04712              1st Qu.:-0.08955             
##  Median :-0.02871              Median :-0.07318             
##  Mean   :-0.03244              Mean   :-0.07426             
##  3rd Qu.:-0.01676              3rd Qu.:-0.06113             
##  Max.   : 0.19270              Max.   : 0.02747             
##  time.seconds.body.jerk.mean.Z time.seconds.body.jerk.standard.deviation.X
##  Min.   :-0.07245              Min.   :-0.9943                            
##  1st Qu.: 0.07475              1st Qu.:-0.9735                            
##  Median : 0.08512              Median :-0.7890                            
##  Mean   : 0.08744              Mean   :-0.6916                            
##  3rd Qu.: 0.10177              3rd Qu.:-0.4414                            
##  Max.   : 0.17910              Max.   : 0.2677                            
##  time.seconds.body.jerk.standard.deviation.Y
##  Min.   :-0.9942                            
##  1st Qu.:-0.9629                            
##  Median :-0.8017                            
##  Mean   :-0.6533                            
##  3rd Qu.:-0.4196                            
##  Max.   : 0.4765                            
##  time.seconds.body.jerk.standard.deviation.Z
##  Min.   :-0.9855                            
##  1st Qu.:-0.9609                            
##  Median :-0.8010                            
##  Mean   :-0.6164                            
##  3rd Qu.:-0.3106                            
##  Max.   : 0.5649                            
##  time.seconds.body.jerk.gyroscope.mean.X
##  Min.   :-0.15721                       
##  1st Qu.:-0.10322                       
##  Median :-0.09868                       
##  Mean   :-0.09606                       
##  3rd Qu.:-0.09110                       
##  Max.   :-0.02209                       
##  time.seconds.body.jerk.gyroscope.mean.Y
##  Min.   :-0.07681                       
##  1st Qu.:-0.04552                       
##  Median :-0.04112                       
##  Mean   :-0.04269                       
##  3rd Qu.:-0.03842                       
##  Max.   :-0.01320                       
##  time.seconds.body.jerk.gyroscope.mean.Z
##  Min.   :-0.092500                      
##  1st Qu.:-0.061725                      
##  Median :-0.053430                      
##  Mean   :-0.054802                      
##  3rd Qu.:-0.048985                      
##  Max.   :-0.006941                      
##  time.seconds.body.jerk.gyroscope.standard.deviation.X
##  Min.   :-0.9965                                      
##  1st Qu.:-0.9800                                      
##  Median :-0.8396                                      
##  Mean   :-0.7036                                      
##  3rd Qu.:-0.4629                                      
##  Max.   : 0.1791                                      
##  time.seconds.body.jerk.gyroscope.standard.deviation.Y
##  Min.   :-0.9971                                      
##  1st Qu.:-0.9832                                      
##  Median :-0.8942                                      
##  Mean   :-0.7636                                      
##  3rd Qu.:-0.5861                                      
##  Max.   : 0.2959                                      
##  time.seconds.body.jerk.gyroscope.standard.deviation.Z
##  Min.   :-0.9954                                      
##  1st Qu.:-0.9848                                      
##  Median :-0.8610                                      
##  Mean   :-0.7096                                      
##  3rd Qu.:-0.4741                                      
##  Max.   : 0.1932                                      
##  time.seconds.body.accelerometer.magnitude.mean
##  Min.   :-0.9865                               
##  1st Qu.:-0.9573                               
##  Median :-0.4829                               
##  Mean   :-0.4973                               
##  3rd Qu.:-0.0919                               
##  Max.   : 0.6446                               
##  time.seconds.body.accelerometer.magnitude.standard.deviation
##  Min.   :-0.9865                                             
##  1st Qu.:-0.9430                                             
##  Median :-0.6074                                             
##  Mean   :-0.5439                                             
##  3rd Qu.:-0.2090                                             
##  Max.   : 0.4284                                             
##  time.seconds.gravity.accelerometer.magnitude.mean
##  Min.   :-0.9865                                  
##  1st Qu.:-0.9573                                  
##  Median :-0.4829                                  
##  Mean   :-0.4973                                  
##  3rd Qu.:-0.0919                                  
##  Max.   : 0.6446                                  
##  time.seconds.gravity.accelerometer.magnitude.standard.deviation
##  Min.   :-0.9865                                                
##  1st Qu.:-0.9430                                                
##  Median :-0.6074                                                
##  Mean   :-0.5439                                                
##  3rd Qu.:-0.2090                                                
##  Max.   : 0.4284                                                
##  time.seconds.body.accelerometer.gyroscope.magnitude.mean
##  Min.   :-0.9928                                         
##  1st Qu.:-0.9807                                         
##  Median :-0.8168                                         
##  Mean   :-0.6079                                         
##  3rd Qu.:-0.2456                                         
##  Max.   : 0.4345                                         
##  time.seconds.body.accelerometer.gyroscope.magnitude.standard.deviation
##  Min.   :-0.9946                                                       
##  1st Qu.:-0.9765                                                       
##  Median :-0.8014                                                       
##  Mean   :-0.5842                                                       
##  3rd Qu.:-0.2173                                                       
##  Max.   : 0.4506                                                       
##  time.seconds.body.jerk.magnitude.mean
##  Min.   :-0.9807                      
##  1st Qu.:-0.9461                      
##  Median :-0.6551                      
##  Mean   :-0.5652                      
##  3rd Qu.:-0.2159                      
##  Max.   : 0.4180                      
##  time.seconds.body.jerk.magnitude.standard.deviation
##  Min.   :-0.9814                                    
##  1st Qu.:-0.9476                                    
##  Median :-0.7420                                    
##  Mean   :-0.6304                                    
##  3rd Qu.:-0.3602                                    
##  Max.   : 0.3000                                    
##  time.seconds.body.jerk.gyroscope.magnitude.mean
##  Min.   :-0.99732                               
##  1st Qu.:-0.98515                               
##  Median :-0.86479                               
##  Mean   :-0.73637                               
##  3rd Qu.:-0.51186                               
##  Max.   : 0.08758                               
##  time.seconds.body.jerk.gyroscope.magnitude.standard.deviation
##  Min.   :-0.9977                                              
##  1st Qu.:-0.9805                                              
##  Median :-0.8809                                              
##  Mean   :-0.7550                                              
##  3rd Qu.:-0.5767                                              
##  Max.   : 0.2502                                              
##  frequency.hz.body.accelerometer.mean.X
##  Min.   :-0.9952                       
##  1st Qu.:-0.9787                       
##  Median :-0.7691                       
##  Mean   :-0.5758                       
##  3rd Qu.:-0.2174                       
##  Max.   : 0.5370                       
##  frequency.hz.body.accelerometer.mean.Y
##  Min.   :-0.98903                      
##  1st Qu.:-0.95361                      
##  Median :-0.59498                      
##  Mean   :-0.48873                      
##  3rd Qu.:-0.06341                      
##  Max.   : 0.52419                      
##  frequency.hz.body.accelerometer.mean.Z
##  Min.   :-0.9895                       
##  1st Qu.:-0.9619                       
##  Median :-0.7236                       
##  Mean   :-0.6297                       
##  3rd Qu.:-0.3183                       
##  Max.   : 0.2807                       
##  frequency.hz.body.accelerometer.standard.deviation.X
##  Min.   :-0.9966                                     
##  1st Qu.:-0.9820                                     
##  Median :-0.7470                                     
##  Mean   :-0.5522                                     
##  3rd Qu.:-0.1966                                     
##  Max.   : 0.6585                                     
##  frequency.hz.body.accelerometer.standard.deviation.Y
##  Min.   :-0.99068                                    
##  1st Qu.:-0.94042                                    
##  Median :-0.51338                                    
##  Mean   :-0.48148                                    
##  3rd Qu.:-0.07913                                    
##  Max.   : 0.56019                                    
##  frequency.hz.body.accelerometer.standard.deviation.Z
##  Min.   :-0.9872                                     
##  1st Qu.:-0.9459                                     
##  Median :-0.6441                                     
##  Mean   :-0.5824                                     
##  3rd Qu.:-0.2655                                     
##  Max.   : 0.6871                                     
##  frequency.hz.body.accelerometer.gyroscope.mean.X
##  Min.   :-0.9946                                 
##  1st Qu.:-0.9828                                 
##  Median :-0.8126                                 
##  Mean   :-0.6139                                 
##  3rd Qu.:-0.2820                                 
##  Max.   : 0.4743                                 
##  frequency.hz.body.accelerometer.gyroscope.mean.Y
##  Min.   :-0.9894                                 
##  1st Qu.:-0.9725                                 
##  Median :-0.7817                                 
##  Mean   :-0.5882                                 
##  3rd Qu.:-0.1963                                 
##  Max.   : 0.2767                                 
##  frequency.hz.body.accelerometer.gyroscope.mean.Z
##  Min.   :-0.9920                                 
##  1st Qu.:-0.9796                                 
##  Median :-0.8707                                 
##  Mean   :-0.7144                                 
##  3rd Qu.:-0.4697                                 
##  Max.   : 0.1578                                 
##  frequency.hz.body.accelerometer.gyroscope.standard.deviation.X
##  Min.   :-0.9951                                               
##  1st Qu.:-0.9847                                               
##  Median :-0.8254                                               
##  Mean   :-0.6121                                               
##  3rd Qu.:-0.2475                                               
##  Max.   : 0.4768                                               
##  frequency.hz.body.accelerometer.gyroscope.standard.deviation.Y
##  Min.   :-0.9905                                               
##  1st Qu.:-0.9737                                               
##  Median :-0.7852                                               
##  Mean   :-0.5707                                               
##  3rd Qu.:-0.1685                                               
##  Max.   : 0.3498                                               
##  frequency.hz.body.accelerometer.gyroscope.standard.deviation.Z
##  Min.   :-0.993108                                             
##  1st Qu.:-0.983747                                             
##  Median :-0.895121                                             
##  Mean   :-0.756489                                             
##  3rd Qu.:-0.543787                                             
##  Max.   :-0.006236                                             
##  frequency.hz.body.jerk.mean.X frequency.hz.body.jerk.mean.Y
##  Min.   :-0.9931               Min.   :-0.9940              
##  1st Qu.:-0.9697               1st Qu.:-0.9700              
##  Median :-0.7300               Median :-0.8141              
##  Mean   :-0.6367               Mean   :-0.6767              
##  3rd Qu.:-0.3387               3rd Qu.:-0.4458              
##  Max.   : 0.4750               Max.   : 0.3288              
##  frequency.hz.body.jerk.mean.Z frequency.hz.body.jerk.standard.deviation.X
##  Min.   :-0.9860               Min.   :-0.9947                            
##  1st Qu.:-0.9624               1st Qu.:-0.9750                            
##  Median :-0.7909               Median :-0.8086                            
##  Mean   :-0.6044               Mean   :-0.7110                            
##  3rd Qu.:-0.2635               3rd Qu.:-0.4813                            
##  Max.   : 0.4924               Max.   : 0.1966                            
##  frequency.hz.body.jerk.standard.deviation.Y
##  Min.   :-0.9944                            
##  1st Qu.:-0.9602                            
##  Median :-0.7964                            
##  Mean   :-0.6454                            
##  3rd Qu.:-0.4154                            
##  Max.   : 0.6462                            
##  frequency.hz.body.jerk.standard.deviation.Z
##  Min.   :-0.9867                            
##  1st Qu.:-0.9643                            
##  Median :-0.8224                            
##  Mean   :-0.6577                            
##  3rd Qu.:-0.3916                            
##  Max.   : 0.5225                            
##  frequency.hz.body.accelerometer.magnitude.mean
##  Min.   :-0.9868                               
##  1st Qu.:-0.9560                               
##  Median :-0.6703                               
##  Mean   :-0.5365                               
##  3rd Qu.:-0.1622                               
##  Max.   : 0.5866                               
##  frequency.hz.body.accelerometer.magnitude.standard.deviation
##  Min.   :-0.9876                                             
##  1st Qu.:-0.9452                                             
##  Median :-0.6513                                             
##  Mean   :-0.6210                                             
##  3rd Qu.:-0.3654                                             
##  Max.   : 0.1787                                             
##  frequency.hz.body.body.accelerometer.gyroscope.magnitude.mean
##  Min.   :-0.9940                                              
##  1st Qu.:-0.9770                                              
##  Median :-0.7940                                              
##  Mean   :-0.5756                                              
##  3rd Qu.:-0.1872                                              
##  Max.   : 0.5384                                              
##  frequency.hz.body.body.accelerometer.gyroscope.magnitude.standard.deviation
##  Min.   :-0.9944                                                            
##  1st Qu.:-0.9752                                                            
##  Median :-0.8126                                                            
##  Mean   :-0.5992                                                            
##  3rd Qu.:-0.2668                                                            
##  Max.   : 0.3163                                                            
##  frequency.hz.body.body.jerk.magnitude.mean
##  Min.   :-0.9865                           
##  1st Qu.:-0.9616                           
##  Median :-0.7657                           
##  Mean   :-0.6671                           
##  3rd Qu.:-0.4087                           
##  Max.   : 0.2040                           
##  frequency.hz.body.body.jerk.magnitude.standard.deviation
##  Min.   :-0.9815                                         
##  1st Qu.:-0.9488                                         
##  Median :-0.7727                                         
##  Mean   :-0.6723                                         
##  3rd Qu.:-0.4277                                         
##  Max.   : 0.2367                                         
##  frequency.hz.body.body.jerk.gyroscope.magnitude.mean
##  Min.   :-0.9976                                     
##  1st Qu.:-0.9813                                     
##  Median :-0.8779                                     
##  Mean   :-0.7564                                     
##  3rd Qu.:-0.5831                                     
##  Max.   : 0.1466                                     
##  frequency.hz.body.body.jerk.gyroscope.magnitude.standard.deviation
##  Min.   :-0.9976                                                   
##  1st Qu.:-0.9802                                                   
##  Median :-0.8941                                                   
##  Mean   :-0.7715                                                   
##  3rd Qu.:-0.6081                                                   
##  Max.   : 0.2878
```

