% You cannot start a variable with an integer; I deleted the 1
a = 2;
% You must have apostrophes around characters
a1 = 'b';
% No error for x = 2
x = 2;
% MATLAB is case sensitive, so I changed the X to x
y = x + 4;
% The semicolon ends the line and disrupts the calculation
pi = 4 * atan(1);
% No error displaying pi at this point
disp(pi)
%{ 
Quotation mark and apostrophe did not match; also, number cannot be 
stored as a string if used for calculations 
%}
pi = 3.14159;
% Changed pi from a string to a double to allow calculation
disp(tan(pi));
%{
No error unless looking for a specific order in which exponents are
performed
%}
c = 4^3^2^3;
% One more closed parenthesis than open parenthesis; added open parenthesis
d = ((c-78564)/(c + 32));
% No error here
year = 2017;
% The number saved in year must be converted to a string for display
disp(['The year is ' num2str(year)]);
% No error here
stuff = {'a' 'b' 4 21 'c'};
% MATLAB starts counting from 1, so cell 0 does not exist
beginning = stuff(1);
% Cannot use 'end' as a variable because it has a built-in function
finish = stuff(5);
% The percentage sign creates comments and is not a mathematical function
discount = 12/100;
% The symbols at the end made the operation incomplete
AMOUNT = 120;
% amount is a double, so characters cannot be stored in this variable
amount = 120;
% Characters must be surrounded by apostrophes
and = 'duck';
% The apostrophe and quotation mark did not match
class = 'INF1100, gr 2';
% No error here; does a logical test to continue if true (x > 0 = true)
continue_ = x > 0;
% fox is not defined as a variable yet, so it cannot be compared
fox = false;
%{ 
No error here; sets wolf equal to fox then compares both variables to the
value true, which outputs a 0 because the variables are not equal to true
%}
wolf = fox == true;
% Syntax error with the semicolon
Persian = ['Persian is a human language'];
% Colon needs to be removed
Spanish = {'Spanish ' 'is ' 'another '  'language'};
% Must use the characters 'Persian' and 'Spanish
disp(['Persian is not the same as Spanish']);