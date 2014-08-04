function pointsNMS = especialnms(im,points,N,radius) % <-- gambiarra
    maskSi = zeros(size(im));
for i=1:size(points,1)
    maskSi(uint16(points(i,1)),uint16(points(i,2)))=points(i,4);
end

    
    addpath gbvs
    %salMap = ittikochmap(im);
    %size(points)
    %maskSi(size(salMap.master_map_resized,1),size(salMap.master_map_resized,2)) = 0; % make dimensions equal
    %maskSi(size(points,1),size(points,2)) = 0;
    %salMap.master_map_resized(size(maskSi,1),size(maskSi,2)) = 0; % make dimensions equal
    %points(size(maskSi,1),size(maskSi,2)) = 0;
    
    size(maskSi)
    %size(points(4,:,:))

    gauss = fspecial('gaussian',15)>0;
    gauss2 = fspecial('gaussian',15,1.5);
    gauss2 = conv2(double(gauss),gauss2,'same');
    %figure
    %imshow(maskSi)
    
    
    
    %figure; 
    %imshow(gauss2);
    
    
    %maskSiS = salMap.master_map_resized.*maskSi;
    
    maskSiS = conv2(maskSi,gauss2,'same');
    % figure
    % imshow(maskSiS);
%     
    [r,c,max_local] = findLocalMaximum(maskSiS,radius);
    
    
    [sortedValues,sortIndex] = sort(max_local(:),'descend');  %# Sort the values in
    maxIndex = sortIndex(1:N);
    %size(maxIndex)s
    %size(max_local)
    rf = zeros(N,1);
    cf = zeros(N,1);
    
    %maxIndex
    %size(r)
    %size(c)
    for i=1:N        
        rf(i) = mod(maxIndex(i),size(im,1))+1;
        cf(i) = uint16(maxIndex(i)/size(im,1))+1;
        
    end
    pointsNMS = [rf cf];
    
    rmpath gbvs