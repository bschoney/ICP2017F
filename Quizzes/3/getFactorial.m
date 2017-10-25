function y = getFactorial(x)
if x >= 0
    if x <= 1
        y = 1;
    else
        y = x * getFactorial(x-1);
    end
end