function approx = monteApprox(n)

   nc = 0;
   ntotal = n;
   for i = 1:ntotal
       
       xvalue = rand(1);
       yvalue = rand(1);
       
       if (xvalue^2 + yvalue^2) <= 1
           nc = nc + 1;
       end
       
   end
   
   approx = 4 .* (nc/ntotal);
   disp(['The value of pi approximates to ' num2str(approx)...
       ' using a Monte Carlo approximation.']);
         