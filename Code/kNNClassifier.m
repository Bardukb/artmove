

kloss = zeros(15,1);
for i = 1:15
    disp('*');
    model = fitcknn(hog,styles, 'NumNeighbors',i);
    disp('modeled'); 
    kloss(i) = resubLoss(model);
    %CVmodel = crossval(model);
    %kloss(i) = kfoldLoss(CVmodel);
end

X = 1:1:15;
figure;
plot(X,kloss);

