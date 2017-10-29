% Initializing the variables for the calculation
m = input('Enter a real number: ');
p = input('Enter a value greater than zero: ');
x = 1;
% Generating if statement to make sure values work and then calculate
if isreal(m) && p > 0
    y = (1/(sqrt(2*pi)*p)) * exp(-(1/2)*((x-m)/p)^2);
else
    disp(['Make sure your values meet the parameters.'])
end
% Checking my answer with the built-in MATLAB function
normpdf(1,0,2)
