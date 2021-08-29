clear all, close all, clc

%% Import

data = readtable('Tutorial4_Dataset.csv');

%% Remove Nanas from rows where all positions are nans

% Remove the columns from the table and save them as arrays

% Save the columns to individual arrays
Var = data.Var1;
A = data.A;
B = data.B;
C = data.C;
D = data.D;

% Every second row is full of nans. So we want to remove those all
% together.
% Sometimes a row with data in it contains a nan. 
% In case there was actually meant to be a data point there, lets not
% remove those rows specifically

counter = 1;

for i = 1:length(A)
    
    % Logical values --- isnan? ismissing?
    Varnan = ismissing(Var(i));
    Anan = isnan(A(i));
    Bnan = isnan(B(i));
    Cnan = ismissing(C(i));
    Dnan = isnan(D(i));
    
    if ((Varnan==1) && (Anan==1) && (Bnan==1) && (Cnan==1) && (Dnan==1))
        
        % Do nothing
        
    else
        Varnew(counter) = Var(i);
        Anew(counter) = A(i);
        Bnew(counter) = B(i);
        Cnew(counter) = C(i);
        Dnew(counter) = D(i);
        
        counter = counter + 1;
        
    end
    
end


Varnew = cell2table(Varnew');

Anew = array2table(Anew');
Anew.Properties.VariableNames = {'A'};
Bnew = array2table(Bnew');
Bnew.Properties.VariableNames = {'B'};
Cnew = cell2table(Cnew');
Cnew.Properties.VariableNames = {'C'};
Dnew = array2table(Dnew');
Dnew.Properties.VariableNames = {'D'};

% Horizontal concatenation
datanew = [Varnew, Anew, Bnew, Cnew, Dnew];

% Figure out those missing values? or just remove them

% Clean data --- think outliers


