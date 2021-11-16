clc ;close all ;

HiringData = readtable('Hiring.csv');
AutomatbleData = readtable('Automatable.csv');

H1=histogram(table2array(AutomatbleData(:,2)))