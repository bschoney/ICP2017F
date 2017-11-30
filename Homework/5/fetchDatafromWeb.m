
info = webread('http://www.shahmoradi.org/ICP2017F/homework/5-problems/triggers.txt');
info = strsplit(info, '\n');

dataRepos = 'http://www.shahmoradi.org/ICP2017F/homework/5-problems/swift/';

noFile = 0;
counter = length(info);
dataDir = './swift/';
mkdir(dataDir);
for i = 1:counter
    filename = ['GRB', info{i}, '_ep_flu.txt'];
    dataURL = [dataRepos, filename];
    try
        disp(['Fetching file number: ', num2str(i)]);
        data = webread(dataURL);
        fid = fopen([dataDir, filename],'w');
            fprintf(fid,'%s',data);
        fclose(fid);
    catch
        disp('The file does not exist. Moving on to the next file.');
        noFile = noFile + 1;
    end

end
disp(['Total missing files: ', num2str(noFile)]);