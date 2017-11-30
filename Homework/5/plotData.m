
dataDirectory = './swift/';
triggerDir = './';
triggerList = fileread([triggerDir, 'triggers.txt']);
triggerList = strsplit(triggerList, '\n');
listlength = length(triggerList);
eventCounter = 0;

figure(); hold on; box on;

for i = 1:listlength
    filename = ['GRB', triggerList{i}, '_ep_flu.txt'];
    dataFile = [dataDirectory, filename];
    if exist(dataFile,'file')
        disp(['Plotting for event number: ', num2str(i)]);
        data = readtable(dataFile);
        data = table2array(data);
        if isempty(data)
            disp('The data file is empty.')
        elseif all(data(:,2)<0.0)
            eventCounter = eventCounter + 1;
            plot( ...
                exp(data(:,2)) ...
                , data(:,1) ...
                , '.' ...
                , 'markersize', 1 ...
                , 'color', 'red' ...
                );
        end
    else
        disp('Missing file - moving on.')
    end
end

set ( ...
    gca ...
    , 'xscale', 'log' ...
    , 'yscale', 'log' ...
    ... , 'xlim', [1e-8, 1e-1] ...
    ... , 'ylim', [1, 10e4] ...
    );
title(['E(Peak) vs Fluence for ' num2str(eventCounter), ' Events']);
xlabel( ...
    'Fluence [ergs/cm^2]' ...
    , 'interpreter', 'tex' ...
    , 'fontsize', 12 ...
    );
ylabel( ...
    'E(Peak)' ...
    , 'interpreter', 'tex' ...
    , 'fontsize', 12 ...
    );
          
saveas(gcf, 'swiftDataPlot.png')