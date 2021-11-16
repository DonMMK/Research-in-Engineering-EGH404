%% Clear script %%
%clear ;
clc ;close all ;
  
%% Task 1 
% Perform preliminary checks for data consistency and completeness %

% Import the dataset
data = readtable('n10496262.csv');

%  Remove the NaNs and missing data
data_No_NaNs = data(~any(ismissing(data) , 2), :); 


% Save the columns to individual arrays
A = data_No_NaNs.One;
B = data_No_NaNs.Two;
C = data_No_NaNs.Three;
D = data_No_NaNs.Four;
E = data_No_NaNs.Five;
F = data_No_NaNs.Six;
G = data_No_NaNs.Time;


%% Task 2
% Identify outliers and erroneous entries and address these issues %

% Use the method of 3 standard deviations from the mean
% if there is an outlier in a column remove that turn it into a nan 
% -> turn those NaN into 

% [Out, TF] = rmoutliers(data_No_NaNs , 'mean');

[ColBOut, TFB] = rmoutliers(B , 'mean');
[ColCOut, TFC] = rmoutliers(C , 'mean');

% outlier indices for column D only
idx = isoutlier(D, 'mean');
store = [];

% outlier rows
for i = 1:length(D)
    if idx(i) == 1
        store = [store; i];
    end
end

% removing outlier rows
for j = length(store):-1:1
    A(store(j)) = [];
    B(store(j)) = [];
    C(store(j)) = [];
    D(store(j)) = [];
    E(store(j)) = [];
    F(store(j)) = [];
    disp(j);
end

[ColDOut, TFD] = rmoutliers(D , 'mean');
[ColFOut, TFF] = rmoutliers(F , 'mean');

% Debugger method for identifying outliers in seperate columns
for i = 1: length(TFD)
    
    if TFB(i) == 1
        disp('outlier in Column B')
        
    end
    
    if TFC(i) == 1
        disp('outlier in Column C')
        
    end

    if TFD(i) == 1
        disp('outlier in Column D')
        
    end
    
    if TFF(i) == 1
        disp('outlier in Column F')
        
    end
    
end




%% Task 3 
% Provide a preliminary analysis of the data %
% There are a number of tools available to you for this purpose, e.g.
% descriptive statistics, scatter plots etc. (Scatter -> Line)

% Assign names to the abstract data given in the columns

% Column 1 convert to numeric 
DateNumber = datenum(A);
t = linspace(0, 2, 10^6 + 1); t(end) = [];

% Get Column 1 in days (Time entry minus intial) <- done in excel

% Initial Scatter plots against column 5
figure(1)
title('Column 1 vs Column 5 - Scatter Plot')
xlabel('Column 1')
ylabel('Column 5')
scatter(A,cell2mat(E) )

figure(2)
title('Column 2 vs Column 5 - Scatter Plot')
xlabel('Column 2')
ylabel('Column 5')
scatter(B,cell2mat(E))

figure(3)
title('Column 3 vs Column 5 - Scatter Plot')
xlabel('Column 3')
ylabel('Column 5')
scatter(C,cell2mat(E))

figure(4)
title('Column 4 vs Column 5 - Scatter Plot')
xlabel('Column 4')
ylabel('Column 5')
scatter(D,cell2mat(E))

% Initial Scatter plots against column 6
figure(5)
title('Column 1 vs Column 6 - Scatter Plot')
xlabel('Column 1')
ylabel('Column 6')
scatter(A,F)

figure(6)
title('Column 2 vs Column 6 - Scatter Plot')
xlabel('Column 2')
ylabel('Column 6')
scatter(B,F)

figure(7)
title('Column 3 vs Column 6 - Scatter Plot')
xlabel('Column 3')
ylabel('Column 6')
scatter(C,F)

figure(8)
title('Column 4 vs Column 6 - Scatter Plot')
xlabel('Column 4')
ylabel('Column 6')
scatter(D,F)

figure(9)
title('Column 7 (Time in days) vs Column 6 - Scatter Plot')
xlabel('Column 7')
ylabel('Column 6')
scatter(G,F) % Plotting the Time in days(Column 7) vs Column 6 <- 24 hrs x limit

% Historgram



% Linear Regression thorugh scatter plot
% Get the y = mx + c  <- the significance of model and r square / fit of
% the line. To check the p test of 0.05


% Categorical data 

%% Task 4
% Provide a more detailed analysis of the dataset provided to you to
% establish relationship among the variables in the dataset %

