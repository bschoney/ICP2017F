
plotinfo = importdata('chain.txt');
plotinfo = struct2array(plotinfo);

plot(...
     plotinfo(:,4) ...
     , 'markersize', 1 ...
     , 'color', 'red' ...
     );
 
 %{
 set( ...
     gca ...
     , 'xlim', [0 j] ...
     );
  %}
     
 
     
 