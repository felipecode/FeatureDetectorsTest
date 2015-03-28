function fpoints=removeBorderPoints(points,image)

    
    mask = ones(size(image));
    
    mask(image==0) = 0;
    
    pointsImage = zeros(size(image));
    for i=1:size(points,1)
        pointsImage(uint32(points(i,1)),uint32(points(i,2)))=1;
    end
    
 
    
    filterImage =  logical(mask) & logical(pointsImage);
    
    classComp = bwconncomp(filterImage);

     centers = regionprops(classComp, 'Centroid');
     centroids2 = {centers.Centroid};
                 
    fpoints = cell2mat(centroids2');
    aux=fpoints(:,1);
    fpoints(:,1) = fpoints(:,2);
    fpoints(:,2) = aux;


end