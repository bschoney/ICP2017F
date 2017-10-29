function out = PrimeOutput()
% asking the user to give a number to check
n = input('Enter a number greater than 1 to see if it prime: ');
% makes sure the value entered is a number greater than 1
if isnumeric(n) && (n > 1)
    out = isPrime(n,n-1); % calls isPrime w/ intial values n and n-1
    if out == 0
        disp('The value is not prime.')
    else
        disp('The value is prime.')
    end
else
    disp('Please enter a number greater than 1')
end
end



