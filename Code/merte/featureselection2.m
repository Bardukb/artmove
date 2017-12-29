%This function selects features based on ranking

% X is hog feature matrix , Y is corresponding labels to feature matrix
no_iterations = 10;

variance_hog = var(X);
threshold = 0;
temp = X;
best_accuracy = 0;

for i=1:no_iterations
    X = temp;
    
    % Make threshold var(i)
    threshold = variance_hog(i);
    
    % Trim hogs less than best threshold
    X(:,variance_hog < threshold) = [];
    
    % Apply KNN
    model = fitcknn(X,Y,'NumNeighbors',3);
    
    % Find accuracy
    kloss(i) = resubLoss(model);
    
    % Save best accuracy and i belongs to it
    if(kloss(i) > best_accuracy)
        best_accuracy = kloss(i);
        best_i = i;
    end
   
end

% Determine best threshold
X = temp;
best_threshold = variance_hog(best_i);

% Trim hogs less than best threshold
X(:,variance_hog < best_threshold) = [];