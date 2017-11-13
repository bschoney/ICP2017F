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
                fiboutput = fib;
                number = i;
            end
            fibruntime = timeit(@()getFib(n));
             fib.n = number;
             fib.fibonacci = fiboutput;
             fib.runtime = fibruntime;
       
        end
             
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