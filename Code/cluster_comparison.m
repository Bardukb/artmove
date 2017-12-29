clear current_cluster current_style i styles sumarray

% clusters are columns and styles are rows in sumarray

styles = {'Impressionism','Realism', 'Romanticism','Expressionism','Post-Impressionism', ...
            'Surrealism', 'Art Nouveau (Modern)', 'Baroque', 'Symbolism', ...
            'Abstract Expressionism', 'Naïve Art (Primitivism)','Neoclassicism', ...
            'Cubism', 'Northern Renaissance','Rococo'};
        
        
sumarray = zeros(15,15);
for i = 1:length(hog_style)
    current_style = hog_style{i,3};
    current_cluster = hog_style{i,4};
    if (strcmp(current_style, styles{1})==1)
        sumarray(1,current_cluster) = sumarray(1,current_cluster) + 1;
    elseif (strcmp(current_style, styles{2})==1)
        sumarray(2,current_cluster) = sumarray(2,current_cluster) + 1;
    elseif (strcmp(current_style, styles{3})==1)
        sumarray(3,current_cluster) = sumarray(3,current_cluster) + 1;
    elseif (strcmp(current_style, styles{4})==1)
        sumarray(4,current_cluster) = sumarray(4,current_cluster) + 1;
    elseif (strcmp(current_style, styles{5})==1)
        sumarray(5,current_cluster) = sumarray(5,current_cluster) + 1;
    elseif (strcmp(current_style, styles{6})==1)
        sumarray(6,current_cluster) = sumarray(6,current_cluster) + 1;
    elseif (strcmp(current_style, styles{7})==1)
        sumarray(7,current_cluster) = sumarray(7,current_cluster) + 1;
    elseif (strcmp(current_style, styles{8})==1)
        sumarray(8,current_cluster) = sumarray(8,current_cluster) + 1;
    elseif (strcmp(current_style, styles{9})==1)
        sumarray(9,current_cluster) = sumarray(9,current_cluster) + 1;
    elseif (strcmp(current_style, styles{10})==1)
        sumarray(10,current_cluster) = sumarray(10,current_cluster) + 1;
    elseif (strcmp(current_style, styles{11})==1)
        sumarray(11,current_cluster) = sumarray(11,current_cluster) + 1;
    elseif (strcmp(current_style, styles{12})==1)
        sumarray(12,current_cluster) = sumarray(12,current_cluster) + 1;
    elseif (strcmp(current_style, styles{13})==1)
        sumarray(13,current_cluster) = sumarray(13,current_cluster) + 1;
    elseif (strcmp(current_style, styles{14})==1)
        sumarray(14,current_cluster) = sumarray(14,current_cluster) + 1;
    elseif (strcmp(current_style, styles{15})==1)
        sumarray(15,current_cluster) = sumarray(15,current_cluster) + 1;
    end
end

[max_cluster,idx] = max(sumarray');
max_cluster = max_cluster';
idx = idx';



