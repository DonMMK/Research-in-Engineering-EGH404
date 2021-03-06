% Clear script 
clear all; close all; clc;

% import data
data = readtable('Tutorial4_Dataset.csv');

% filter out the first column (the strings)

% Take all the rows of the first column and set to null
data(:,1) = [];

% Removing any row that has nan values 
% Save the resulting table to a new variable so we can compare
data2 = data(~any(ismissing(data) , 2) , :); 

%% disassociate the data 
% Consider column A 
% Take hte first column and set to a variable
ColA = data2(:,1); % This is a table
ColA = table2array(ColA); % Convert to an array

%% create a plot
figure(1);
axis on
title('plot 1')
plot(ColA);

%% perform outlier test on column A 

% mean
meancolA = mean(ColA);
% max and min values

% median 

% Standard deviation
StandardA = std(ColA);
% IQR

%% Remove nans 
% Save the columns to individual arrays
Var = data.Var1;

A = data.A;
B = data.B;
C = data.C;
D = data.D;


for i = 1:length(data) 
    % logical values -- isnan? missing? 
    Varnan = ismissing(Var);
    Anan = isnan(A(i)); 
    
    if ( (Varnan == 1) && (Anan == 1) && (Cnan == 1) && (Dnan == 1))
        
    else
        
    end
end






