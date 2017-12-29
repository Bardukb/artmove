class_size = 15;
length = 1000; %length(directory)-2; %5000;
classes = {'Impressionism'; 'Realism'; 'Romanticism'; 'Expressionism'; ...
            'Post-Impressionism'; 'Surrealism'; 'Art Nouveau (Modern)'; ...
            'Baroque'; 'Symbolism'; 'Abstract Expressionism'; ...
            'Naive Art (Primitivism)'; 'Neoclassicism'; 'Cubism'; ...
            'Northern Renaissance'; 'Rococo'};
hog_size = 4356;
Y = cell(class_size*length,1);
hog = zeros(class_size*length, hog_size);
        
for j = 1:class_size
    % Extract HOG features of images in the current directory
    cd(classes{j});
    fprintf('Currently doing: %s\n', classes{j}); 
    directory = dir();
    directory(1) = [];
    directory(1) = [];
    fprintf('There are %d images in this directory\n', size(directory,1));
    i = 1;
    while i <= (length)
        if (mod(i,100)==0)
            fprintf('*');
        end
        try
            I1 = imread(directory(i).name);
            Y{((j-1)*length)+i,1} = classes{j};
            hog(((j-1)*length)+i,1:end) = extractHOGFeatures(I1);
        catch
            fprintf(directory(i).name);
            warning('Problem with the image!');
        end
        i = i + 1;
    end
    cd('..');
end

% % Extract SURF features
% I = rgb2gray(imread('11.jpg'));
% points = detectSURFFeatures(I);
% 
% [features, validPoints] = extractFeatures(I,points);
% 
% % Visualize 10 strongest SURF features, including their scale, and 
% % orientation which was determined during the descriptor extraction
% % process.
% tenStrongestPoints = selectStrongest(validPoints,10);
% figure
% imshow(I)
% hold on
% plot(tenStrongestPoints,'showOrientation',true)

% I1 = imresize(imread(directory(3,1).name), [100 100]);
% [hog, visualization] = extractHOGFeatures(I1);
% subplot(1,2,1);
% imshow(I1);
% subplot(1,2,2);
% plot(visualization);
