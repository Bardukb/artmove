i = 1;
length = 5000;
while i<length
    if (strcmp(hog_style{i,3},'Impressionism')==0 && ...
        strcmp(hog_style{i,3},'Realism')==0 && ...
        strcmp(hog_style{i,3},'Romanticism')==0 && ...
        strcmp(hog_style{i,3},'Expressionism')==0 && ...
        strcmp(hog_style{i,3},'Post-Impressionism')==0 && ...
        strcmp(hog_style{i,3},'Surrealism')==0 && ...
        strcmp(hog_style{i,3},'Art Nouveau (Modern)')==0 && ...
        strcmp(hog_style{i,3},'Baroque')==0 && ...
        strcmp(hog_style{i,3},'Symbolism')==0 && ...
        strcmp(hog_style{i,3},'Abstract Expressionism')==0 && ...
        strcmp(hog_style{i,3},'Naïve Art (Primitivism)')==0 && ...
        strcmp(hog_style{i,3},'Neoclassicism')==0 && ...
        strcmp(hog_style{i,3},'Cubism')==0 && ...
        strcmp(hog_style{i,3},'Northern Renaissance')==0 && ...
        strcmp(hog_style{i,3},'Rococo')==0)
        hog(i,:) = [];
        hog_style(i,:) = [];
        length = length-1;
        i = i-1;
    end
    i = i+1;
end

cnt = 1;
for i = 1:3492
    if (strcmp(hog_style{i,3},'Expressionism')==1)
        temp{cnt,1} = hog_style{i,1};
        temp{cnt,2} = hog_style{i,2};
        temp{cnt,3} = hog_style{i,3};
        temp{cnt,4} = hog_style{i,4};
        cnt = cnt + 1;
    end
end
 

arr = zeros(length(temp),1);
for i =1:length(temp)
    arr(i) = temp{i,4};
end

% styles = {'Impressionism','Realism','Expressionism','Post-Impressionism', ...
%             'Surrealism', 'Art Nouveau (Modern)', 'Baroque', 'Symbolism', ...
%             'Abstract Expressionism', 'Naïve Art (Primitivism)','Neoclassicism', ...
%             'Cubism', 'Northern Renaissance','Rococo'};
% sumarray = zeros(15,15);
% for i = 1:15
%     disp(i);
%     cnt = 1;
%     arr = zeros(3492,1);
%     for m = 1:3492
%         if (strcmp(hog_style{i,3},styles{i})==1)
%             arr(cnt) = hog_style{m,4};
%             cnt = cnt + 1;
%         end
%     disp(m);
%     end
%     for n = 1:15
%         disp(n);
%         sumarray(i,n) = sum(arr == n);
%     end
% end
