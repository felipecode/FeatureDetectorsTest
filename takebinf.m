% Take the average of the 20 smaller ones.


binfvec = loadImages('Images/Black/Cortadas');
binfconstvec = [];
for i=1:20
    binfim = double(rgb2gray(binfvec{i}))/255;
    [sortedValues,sortIndex] = sort(binfim(:));  

       binfconstvec = [ binfconstvec sum(sortedValues(1:1500))/1500];
       
end
