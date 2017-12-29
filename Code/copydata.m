%Step 1: Get directory of all images
directory_name = pwd();

%Step 2: For each entry in hog_style:
%           Copy same name file from current directory to a new directory.
mkdir(fullfile(directory_name, 'Filtered'));
for i = 1:3492
    copyfile(fullfile(directory_name,hog_style{i,1}), fullfile(directory_name,'Filtered'));
end
    