function robustWebRead()

n = input('Please enter the web address: ');
info = webread(n);

    try
        fid = fopen([info],'r');
        fclose(fid);
        disp('Reading data from the web address...');
    catch
        disp('The file does not exist. Gracefully exiting...');
    end
disp(['Total missing files: ', num2str(noFile)]);
