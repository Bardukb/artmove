%This function selects features based on ranking

no_iterations = 3;

A = hog_cell(~cellfun(@isempty, hog_cell(:,4357)), :);
A_table = cell2mat(A(:,1:4356));
variance_hog = var(A_table);
threshold = 0;
temp = A;
best_accuracy = 0;

for i=1:no_iterations
    A = temp;
    
    % Make threshold var(i)
    threshold = variance_hog(i);
    
    % Trim hogs less than best threshold
    A(:,variance_hog < threshold) = [];
    
    [m,n] = size(A);
    X = A(:,1:n-2);
    X = cell2mat(X);
    Y = A(:,n-1);
    
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
A = temp;
best_threshold = variance_hog(best_i);

% Trim hogs less than best threshold
A(:,variance_hog < best_threshold) = [];



