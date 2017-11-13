function prime = getLargestPrime(n)

prime = 2;
for i = n:-1:2
    if isprime(i) 
        prime = i;
        break;
    end
end

disp(['The largest prime number below your entry is ' num2str(prime)])
