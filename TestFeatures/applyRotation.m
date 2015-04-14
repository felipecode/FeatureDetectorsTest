% apply a homogrphy considering the image already

function hpoints = applyRotation(image,points,H)


        aux=points(:,1);
        points(:,1) = points(:,2);
        points(:,2) = aux;
    
    %degrees = asind(H(2,1));
    
    pointsImage = zeros(size(image));
    for i=1:size(points,1)
        pointsImage(uint32(points(i,2)),uint32(points(i,1)))=1;
    end
    
    filterImage = imtransform(pointsImage,H);
    
    classComp = bwconncomp(filterImage);

     centers = regionprops(classComp, 'Centroid');
     centroids2 = {centers.Centroid};
                 
    hpoints = cell2mat(centroids2');
    
          aux=hpoints(:,1);
          hpoints(:,1) = hpoints(:,2);
          hpoints(:,2) = aux;

end