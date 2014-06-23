function canDist=distDesloca(points1,points2)

    distanceVec = zeros([1,size(points1,1)]);
   
    for i=1:size(points1)
         minimum = 10000000;
        for j=1:size(points2)
            %calcula a distancia entre os pontos
            distance =sqrt((points1(i,1) - points2(j,1)) * (points1(i,1) - points2(j,1)) + (points1(i,2) - points2(j,2)) * (points1(i,2) - points2(j,2)));
            if minimum > distance
                minimum = distance;
                distanceVec(i) = distance; 
            end
        end
        
    end
    distanceVec=sort(distanceVec);
    distanceVec'
end