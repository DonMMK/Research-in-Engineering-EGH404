%Task1

data = readtable('n10295399.csv');
%p2 = readmatrix ('n10295399.csv'3,:);
data.Properties.VariableNames = {'Location' 'Temperature' 'Rainfall' 'People' 'SensorA' 'SensorB'};
rainfall = data(:,2:6);

outrem =  filloutliers(rainfall,'previous','mean');

rainfall.Properties.VariableNames = {'Temperature' 'Rainfall' 'People' 'SensorA' 'SensorB'};
%Minimum values
minval_temp = min(rainfall.Temperature); 
minval_rainfall = min(rainfall.Rainfall);
minval_people = min(rainfall.People); 
minval_sensorA = min(rainfall.SensorA); 
minval_sensorB = min(rainfall.SensorB); 

%Maximum values
maxval_temp = max(rainfall.Temperature); 
maxval_rainfall = max(rainfall.Rainfall);
maxval_people = max(rainfall.People); 
maxval_sensorA = max(rainfall.SensorA); 
maxval_sensorB = max(rainfall.SensorB); 


%Average value
avgval_temp = mean(rainfall.Temperature); 
avgval_rainfall = mean(rainfall.Rainfall);
avgval_people = mean(rainfall.People); 
avgval_sensorA = mean(rainfall.SensorA); 
avgval_sensorB = mean(rainfall.SensorB); 


%Provide Box and whiskers plot 
figure (1)
boxplot(table2array(rainfall(:,2:3)));

%Create Scatter plot 
figure (2)
scatter(rainfall.Rainfall,rainfall.SensorB);

 %Task 6 

 figure (3)
 SensorA_range = maxval_sensorA - minval_sensorA;
 
 A_size =  SensorA_range/10;
  
 histogram(rainfall.SensorA, 14);
 
 %Task 7 
 AssendT = sortrows(data, 'Location');
 
 



