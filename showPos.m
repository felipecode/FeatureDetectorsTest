function showPos(image,r,c)


  
    for i=1:length(r)
       
        image(r(i),c(i),:) = [255 255 0 ];
        
    end
    figure
    imshow(image);
    
end