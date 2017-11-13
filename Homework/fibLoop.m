function fibLoop()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp([char(9),'fib(',num2str(n),') = ',num2str(getFib(n))]);
                disp([char(9),'timeit(getFib(',num2str(n),')) = ',num2str(timeit(@()getFib(n)))]);
                fibLoop()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fibLoop()
    end
    
    function fib = getFib(n_int)
       
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fibMinusOne = 1;
            fibMinusTwo = 0;
            for i = 1:n_int-1
                fib = fibMinusTwo + fibMinusOne;
                fibMinusTwo = fibMinusOne;
                fibMinusOne = fib;
            end
        end
       
    end

end