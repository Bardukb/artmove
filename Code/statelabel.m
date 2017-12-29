import csv.*

%the matrix containing image info (3-5000)
dirs_size = 5000;

%the features extracted for each image in dirs
hog_size = 5000;

%convert matrix to cell for saving labels in it
hog_cell = num2cell(hog);

%open sorted csv as a text file
path_to_csv = '/Users/duygudurmus/Desktop/mlproject/train_info_sorted.txt';

%read it as table
data = readtable(path_to_csv);

%convert table to cell for getting styles from it
data_cell = table2cell(data);

%disp(data_cell{1,1})
dirs_filenames = extractfield(dirs, 'name');
%disp(dirs_filenames{3});

count = 0;
for i=3:dirs_size
        %check if filename in dirs equals to filename in train_info_sorted
       if(strcmp(dirs_filenames{i},data_cell{i-2,1}))
           %add a new col (specifying style) to corresponding row 
           hog_cell{i-2,4357} = data_cell{i-2,4};
           count = count + 1;
       end
end

%check if the styles are correct: hog_style [dirs filename, train_info filename, style]
hog_style = cell(5000,3);
for k=1:dirs_size
    hog_style{k,1} = dirs_filenames{k+2};
    hog_style{k,2} = data_cell{k,1};
    hog_style{k,3} = hog_cell{k,4357};
end

















