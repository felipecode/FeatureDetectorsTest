function fpoints=removeBorderPoints(points,image)
    
    mask = ones(size(image));
    
    mask(image==0) = 0;
    
    pointsImage = zeros(size(image,1),size(image,2),3);
    for i=1:size(points,1)
        pointsImage(uint32(points(i,1)),uint32(points(i,2)),1)=1;
        pointsImage(uint32(points(i,1)),uint32(points(i,2)),2)=points(i,3);
        pointsImage(uint32(points(i,1)),uint32(points(i,2)),3)=points(i,4);
    end
    
 
    
    filterImage =  logical(mask) & logical(pointsImage(:,:,1));
    
    classComp = bwconncomp(filterImage);

     centers = regionprops(classComp, 'Centroid');
     centroids2 = {centers.Centroid};
                 
     %pointsImage(centroids,
     
    fpoints = cell2mat(centroids2');
    aux=fpoints(:,1);
    fpoints(:,1) = fpoints(:,2);
    fpoints(:,2) = aux;

    
    for i=1:size(fpoints,1)
    
        fpoints(i,3) = pointsImage(uint32(fpoints(i,1)),uint32(fpoints(i,2)),2);
        fpoints(i,4) = pointsImage(uint32(fpoints(i,1)),uint32(fpoints(i,2)),3);
        
    end

end