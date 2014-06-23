function points=especialnms2(points,radius)


distances = zeros(size(points,1));

for i=1:size(points,1)
    for j=i:size(points,1)
        distances(i,j) = sqrt((points(i,1) - points(j,1))^2  + (points(i,2) - points(j,2))^2);
        distances(j,i) = distances(i,j);
    end
    
end

distances(1,:) = sort(distances(1,:))


        
        
        

% calcula a distancia entre os pontos
