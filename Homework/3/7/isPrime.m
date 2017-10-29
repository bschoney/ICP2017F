function y = isPrime(n,i)
%{
checking if the divisor got from n-1 down to i;
if mod(n,i) was not equal to zero anywhere from n-1 to i = 1, it can be
concluded the number is prime
%}
if i == 1
    y = true;
    return
elseif mod(n,i) == 0 % if mod(n,i)=0, the number is divisible and not prime
    y = false;
    return
else
    y = isPrime(n,i-1); % calls function again, reducing the divisor by 1
end

end





