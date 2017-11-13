function output = timeFib(n)

        if isreal(n)
            if n>=0 && round(n)==n
                outputruntime = timeit(@()timeFibLoop(n));
                outputfib = timeFibLoop(n);
                output.n = n;
                output.fib = outputfib;
                output.runtime = outputruntime;
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
    end
    
    function fib = timeFibLoop(n)
       
        if n == 0
            fib = 0;
        elseif n == 1
            fib = 1;
        else
            fibMinusOne = 1;
            fibMinusTwo = 0;
            for i = 1:n-1
                fib = fibMinusTwo + fibMinusOne;
                fibMinusTwo = fibMinusOne;
                fibMinusOne = fib;
            end
        end
       
end
