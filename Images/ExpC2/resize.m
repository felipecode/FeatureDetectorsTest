pngFiles = dir('*.jpg');
 
for k = 1:length(pngFiles)
    filename = pngFiles(k).name;
    I = imread(filename);
    I = imresize(I,0.4);
    imwrite(I,filename);
end