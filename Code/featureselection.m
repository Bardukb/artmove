variance_hog = zeros(1,4456);
variance_hog = var(hog);
threshold = 0;
temp = hog;

for i=1:4356
    hog = temp;
    
    % Make threshold var(i)
    threshold = variance_hog(i);
    
    % Trim hogs less than threshold
    hog(:,variance_hog < threshold) = [];
    
    % Apply KNN
    model = fitcknn(hog,hog_style(:,3),'NumNeighbors',3);
    
    % Find accuracy
    kloss(i) = resubLoss(model);
    
    if(kloss(i) > best_accuracy)
        best_accuracy = kloss(i);
        best_i = i;
    end
   
end
