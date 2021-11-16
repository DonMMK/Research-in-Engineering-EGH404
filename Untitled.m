% myData = readtable('n10295399.csv', 'TextType', 'string');
% 
% myData2 = readmatrix (myData);

% cutoff = rmoutliers(myData,'mean');

% myData = csvread('n10295399.csv');


opts = detectImportOptions('n10295399.csv');
opts.ExtraColumnsRule = 'ignore';
% disp(opts)
opts = setvartype(opts,{'Var1','Var2','Var3',},{'categorical','categorical','categorical'});
x = readtable('n10295399.csv',opts);
y =  table2cell(x);