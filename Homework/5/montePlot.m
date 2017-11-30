function out = montePlot(n)

figure(); hold on; box on

nc = 0;

for i = 1:n
    xvalue = rand(1);
    yvalue = rand(1);
    
    if (xvalue^2 + yvalue^2) <= 1
           nc = nc + 1;
    end
    out(i) = 4 .* (nc/i);

end

plot( ...
    out ...
    , 'markersize', 1 ...
    , 'color', 'red' ...
    );
    
set ( ...
    gca ...
    , 'xlim', [0 n] ...
    , 'ylim', [0 4] ...
    );


       
       