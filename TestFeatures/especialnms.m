% Compute the non maxima supression. Uses the saliency map to compute.
% UPDATE : Now with less gambiarra ! :P

% params: @radius the radius of the non maximal suprresion


function pointsNMS = especialnms(im,points,N,radius,measure) 
    

     maskSi = zeros(size(im));


    

  
    
    for i=1:size(points,1)
        maskSi(uint32(points(i,1)),uint32(points(i,2)))=measure(i);
    end
    
    %size(points(4,:,:))

    
    %figure; 
    %imshow(gauss2);
    
    
    %maskSiS = salMap.master_map_resized.*maskSi;
    
    maskSiS = maskSi;
    % figure
    % imshow(maskSiS);
%     
    [r,c,max_local] = findLocalMaximum(maskSiS,radius);
    %length(r)
    
    
    if(N > length(r))
       
        N = length(r);
        
    end
    
    [sortedValues,sortIndex] = sort(max_local(:),'descend');  %# Sort the values in
    maxIndex = sortIndex(1:N);
    %size(maxIndex)s
    %size(max_local)
    rf = zeros(N,1);
    cf = zeros(N,1);
    response =  sortedValues(1:N);
    %maxIndex
    %size(r)
    %size(c)
    for i=1:N        
        rf(i) = mod(maxIndex(i),size(im,1))+1;
        cf(i) = uint16(maxIndex(i)/size(im,1))+1;
    end
    pointsNMS = [rf cf response];
    