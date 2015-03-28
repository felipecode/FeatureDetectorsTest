% apply a homogrphy considering the image already

function hpoints = applyRotation(image,points,H)



    
    degrees = asind(H(2,1));
    
    pointsImage = zeros(size(image));
    for i=1:size(points,1)
        pointsImage(uint32(points(i,1)),uint32(points(i,2)))=1;
    end
    
    filterImage = imrotate(pointsImage,degrees);
    
    classComp = bwconncomp(filterImage);

     centers = regionprops(classComp, 'Centroid');
     centroids2 = {centers.Centroid};
                 
    hpoints = cell2mat(centroids2');
    
    
    

end