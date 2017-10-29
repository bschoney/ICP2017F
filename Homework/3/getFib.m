function y = getFib(n)
% creating the recursive function to calculate the nth term of fib sequence
% note: the checks on the user inputs are in the fib.m function
    if n<2
        y = n;
    else
        y = getFib(n-1) + getFib(n-2);
    end
    
end


