function fib()
% asking the user to enter the non-negative integer
n = input('Enter a non-negative integer or ''stop'' if you are done. ','s');

% nested if blocks call the getFib() function under the right conditions
if strcmp(n, 'stop') || strcmp(n, 'Stop')
    return
else
    n = str2double(n);
    if isreal(n) && n == round(n) && n >= 0
        disp(['The ' num2str(n) ' term of the Fibnacci sequence is '...
            num2str(getFib(n))]);
        fib()
    else
        disp('Make sure you entered a non-negative integer.')
    end
end
end

    
    
    
 