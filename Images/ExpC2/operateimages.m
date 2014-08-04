




for k = 0
    str = int2str(k);
    cd(str);
    sumIm = zeros(2250,3000,3);
    sumIm = uint32(sumIm);
    files = dir;
    filesvec = {files.name};
    for i = 3:length(filesvec)-1
                
        im = imread(filesvec{i});
        
        for j = 1:3
           
            sumIm(:,:,j) = sumIm(:,:,j) + uint32(im(:,:,j));
            
        end
        
    end
    sumIm(:,:,1)=sumIm(:,:,1)./(length(filesvec)-2);
    sumIm(:,:,2)=sumIm(:,:,2)./(length(filesvec)-2);
    sumIm(:,:,3)=sumIm(:,:,3)./(length(filesvec)-2);
    
    
    imwrite(uint8(sumIm),'media.jpg');

    cd ../
    
    
end