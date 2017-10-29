function totalSize = sizeDirectory(path)
% using the built-in function, dir, to get information about variable, path
s = dir(path);
% using built-in function, sum to sum the array of bytes
totalSize = sum([s.bytes]);
% displaying the total bytes in the directory path
disp(['The total number of bytes is ' num2str(totalSize)])

end