data15 = readtable('burnett2015.csv');
data15new = readmatrix('burnett2015.csv');

data16 = readtable('burnett2016.csv');
data16new = readmatrix('burnett2016.csv');

data17 = readtable('burnett2017.csv');
data17new = readmatrix('burnett2017.csv');

data18 = readtable('burnett2018.csv');
data18new = readmatrix('burnett2018.csv');

data19 = readtable('burnett2019.csv');
data19new = readmatrix('burnett2019.csv');

data20 = readtable('burnettreal.csv');
data20new = readmatrix('burnettreal.csv');


P15 = data15(:,1);
P16 = data16(:,1);
P17 = data17(:,1);
P18 = data18(:,1);
P19 = data19(:,1);
P20 = data20(:,1);

G15 = table2array(P15); 
G16 = table2array(P16);
G17 = table2array(P17);
G18 = table2array(P18);
G19 = table2array(P19);
G20 = table2array(P20);


rounded_to_day=datetime(year(G15),month(G15),day(G15));
rounded=datetime(year(rounded_to_day),month(rounded_to_day),day(rounded_to_day));
[G15,ID15] = findgroups((rounded_to_day));

y15 = splitapply(@mean,data15new(:,3),G15);
lb15 = fillgaps(y15);


rounded_to_day=datetime(year(G16),month(G16),day(G16));
rounded16=datetime(year(rounded_to_day),month(rounded_to_day),day(rounded_to_day));
[G16,ID16] = findgroups((rounded_to_day));

y16 = splitapply(@mean,data16new(:,3),G16);
lb16 = fillgaps(y16);

rounded_to_day=datetime(year(G17),month(G17),day(G17));
rounded17=datetime(year(rounded_to_day),month(rounded_to_day),day(rounded_to_day));
[G17,ID17] = findgroups((rounded_to_day));

y17 = splitapply(@mean,data17new(:,3),G17);
lb17 = fillgaps(y17);

rounded_to_day=datetime(year(G18),month(G18),day(G18));
rounded18=datetime(year(rounded_to_day),month(rounded_to_day),day(rounded_to_day));
[G18,ID18] = findgroups((rounded_to_day));

y18 = splitapply(@mean,data18new(:,3),G18);
lb18 = fillgaps(y18);

rounded_to_day=datetime(year(G19),month(G19),day(G19));
rounded19=datetime(year(rounded_to_day),month(rounded_to_day),day(rounded_to_day));
[G19,ID19] = findgroups((rounded_to_day));

y19 = splitapply(@mean,data19new(:,3),G19);
lb19 = fillgaps(y19);

rounded_to_day=datetime(year(G20),month(G20),day(G20));
rounded20=datetime(year(rounded_to_day),month(rounded_to_day),day(rounded_to_day));
[G20,ID20] = findgroups((rounded_to_day));

y20 = splitapply(@mean,data20new(:,3),G20);
lb20 = fillgaps(y20);
month1 = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];


figure(1) 
plot(ID15,lb15,'DisplayName','2015');
hold on  
grid on
plot(ID16,lb16,'DisplayName','2016');
plot(ID17,lb17,'DisplayName','2017');
plot(ID18,lb18,'DisplayName','2018');
plot(ID19,lb19,'DisplayName','2019');
plot(ID20,lb20,'DisplayName','2020');


% xticks([1,2,3,4,5,6,7,8,9,10,11,12]);
% xticklabels(month1);
xlabel('Month');
ylabel('Temperature (C)');
title('Daily Average Temperatures from 01th January 2015 to 30th September 2020')
legend