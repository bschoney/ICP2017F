rng(131313)
numstud = 99;

StudentData = readtable('students.csv');

IDorder = randperm(numstud);

groups = cell(3, numstud/3);

for i = 1:numstud/3
    groups(:,i) = [StudentData{IDorder(i),2},StudentData{IDorder(i+numstud/3),2}, ...
        StudentData{IDorder(i+2*numstud/3),2},];
end

% xlswrite does not work on Macs, so I have commented out this code
% I think Dr. Shahmoradi is aware of this problem
%{
filename = 'StudentGroups.xlsx';
A = groups;
xlswrite(filename, A);
%}

