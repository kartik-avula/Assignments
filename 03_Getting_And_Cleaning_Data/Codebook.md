# JHU_Data_Science - Course 3 - Getting And Cleaning Data - Assignment Codebook

## Objective
This file seeks to provide additional information about the feature in the tidy data output of the project and the processing on the raw dataset that leads to them.

A more detailed description of the processing flow, raw data and output is included in the README.md file in this folder. 

## Raw Dataset
The raw dataset is obtained from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Further information on the raw data can be found in the following files:
* ./RawDataCodebook/README.txt - Overview of background of data 
* ./RawDataCodebook/features_info.txt - Description of how the various features are derived 
* ./RawDataCodebook/features.txt - List of features 

## Processing
The variables corresponding to mean and standard deviation (total of 66 such variables - 33 for mean, 33 for standard deviation) are extracted from the dataset after some preprocessing. These group-wise (groups based on subject ID and Activity name) average of these variables are computed and written to "Tidy_wearable_data.txt" in tidy data format. 

## Output
Therefore the output tidy data consists of 3 types of features 
* **2 Grouping variables**: subjectID and Activity 
* **33 mean related variables**: Computed by grouping the corresponding X variables in the raw data by the 2 grouping variables. Denoted by "Mean" in variable name. 
* **33 standard deviation related variables**: Computed by grouping the corresponding X variables in the raw data by the 2 grouping variables. Denoted by "STD" in variable name

## List of variables and data type 
Serial No. | Variable Name | Data type 
-----------|---------------|-----------
 1 |  subjectID             | Factor of 30 levels (1 to 30)
 2 |  Activity              | Factor of 6 levels (LAYING, SITTING, STANDING, WALKING,  WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)                                
 3 |  TimeBodyAccelerometerMeanX | numeric                 
 4 |  TimeBodyAccelerometerMeanY | numeric                 
 5 |  TimeBodyAccelerometerMeanZ | numeric                 
 6 |  TimeBodyAccelerometerSTDX | numeric                  
 7 |  TimeBodyAccelerometerSTDY | numeric                  
 8 |  TimeBodyAccelerometerSTDZ | numeric                  
 9 |  TimeGravityAccelerometerMeanX | numeric              
10 |  TimeGravityAccelerometerMeanY | numeric              
11 |  TimeGravityAccelerometerMeanZ | numeric              
12 |  TimeGravityAccelerometerSTDX | numeric               
13 |  TimeGravityAccelerometerSTDY | numeric               
14 |  TimeGravityAccelerometerSTDZ | numeric               
15 |  TimeBodyAccelerometerJerkMeanX | numeric             
16 |  TimeBodyAccelerometerJerkMeanY | numeric             
17 |  TimeBodyAccelerometerJerkMeanZ | numeric             
18 |  TimeBodyAccelerometerJerkSTDX | numeric              
19 |  TimeBodyAccelerometerJerkSTDY | numeric              
20 |  TimeBodyAccelerometerJerkSTDZ | numeric              
21 |  TimeBodyGyroscopeMeanX | numeric                     
22 |  TimeBodyGyroscopeMeanY | numeric                     
23 |  TimeBodyGyroscopeMeanZ | numeric                     
24 |  TimeBodyGyroscopeSTDX | numeric                      
25 |  TimeBodyGyroscopeSTDY | numeric                      
26 |  TimeBodyGyroscopeSTDZ | numeric                      
27 |  TimeBodyGyroscopeJerkMeanX | numeric                 
28 |  TimeBodyGyroscopeJerkMeanY | numeric                 
29 |  TimeBodyGyroscopeJerkMeanZ | numeric                 
30 |  TimeBodyGyroscopeJerkSTDX | numeric                  
31 |  TimeBodyGyroscopeJerkSTDY | numeric                  
32 |  TimeBodyGyroscopeJerkSTDZ | numeric                  
33 |  TimeBodyAccelerometerMagnitudeMean | numeric         
34 |  TimeBodyAccelerometerMagnitudeSTD | numeric          
35 |  TimeGravityAccelerometerMagnitudeMean | numeric      
36 |  TimeGravityAccelerometerMagnitudeSTD | numeric       
37 |  TimeBodyAccelerometerJerkMagnitudeMean | numeric     
38 |  TimeBodyAccelerometerJerkMagnitudeSTD | numeric      
39 |  TimeBodyGyroscopeMagnitudeMean | numeric             
40 |  TimeBodyGyroscopeMagnitudeSTD | numeric              
41 |  TimeBodyGyroscopeJerkMagnitudeMean | numeric         
42 |  TimeBodyGyroscopeJerkMagnitudeSTD | numeric          
43 |  FrequencyBodyAccelerometerMeanX | numeric            
44 |  FrequencyBodyAccelerometerMeanY | numeric            
45 |  FrequencyBodyAccelerometerMeanZ | numeric            
46 |  FrequencyBodyAccelerometerSTDX | numeric             
47 |  FrequencyBodyAccelerometerSTDY | numeric             
48 |  FrequencyBodyAccelerometerSTDZ | numeric             
49 |  FrequencyBodyAccelerometerJerkMeanX | numeric        
50 |  FrequencyBodyAccelerometerJerkMeanY | numeric        
51 |  FrequencyBodyAccelerometerJerkMeanZ | numeric        
52 |  FrequencyBodyAccelerometerJerkSTDX | numeric         
53 |  FrequencyBodyAccelerometerJerkSTDY | numeric         
54 |  FrequencyBodyAccelerometerJerkSTDZ | numeric         
55 |  FrequencyBodyGyroscopeMeanX | numeric                
56 |  FrequencyBodyGyroscopeMeanY | numeric                
57 |  FrequencyBodyGyroscopeMeanZ | numeric                
58 |  FrequencyBodyGyroscopeSTDX | numeric                 
59 |  FrequencyBodyGyroscopeSTDY | numeric                 
60 |  FrequencyBodyGyroscopeSTDZ | numeric                 
61 |  FrequencyBodyAccelerometerMagnitudeMean | numeric    
62 |  FrequencyBodyAccelerometerMagnitudeSTD | numeric     
63 |  FrequencyBodyAccelerometerJerkMagnitudeMean | numeric
64 |  FrequencyBodyAccelerometerJerkMagnitudeSTD | numeric 
65 |  FrequencyBodyGyroscopeMagnitudeMean | numeric        
66 |  FrequencyBodyGyroscopeMagnitudeSTD | numeric         
67 |  FrequencyBodyGyroscopeJerkMagnitudeMean | numeric    
68 |  FrequencyBodyGyroscopeJerkMagnitudeSTD | numeric  


