% CENSURE
%SIFT
%SURF
%KAZE

% params: @radius the radius of the non maximal suprresion


function pointsNMS = harrisnms(im,points,N,radius) 
    

     maskSi = zeros(size(im));


    
    salMap = harris_measure(im);
  
    
    for i=1:size(points,1)
        maskSi(uint32(points(i,1)),uint32(points(i,2)))=salMap(uint32(points(i,1)),uint32(points(i,2)));
    end
    
    %size(points(4,:,:))
    
    % Gambiarra aqui mas bem de leve. Eh pra fazer uma outra funcao
    % funcionar. Mas nada que comprometa
    
   % gauss = fspecial('gaussian',radius)>0;
   % gauss2 = fspecial('gaussian',15.0,1.5);
   % gauss2 = conv2(double(gauss),gauss2,'same');

    
    
    %figure; 
    %imshow(gauss2);
    
    
    %maskSiS = salMap.master_map_resized.*maskSi;
    
  %  maskSiS = conv2(maskSi,gauss2,'same');
    maskSiS = maskSi;
     %figure
   %  imshow(maskSiS);
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
    
    %maxIndex
    %size(r)
    %size(c)
    for i=1:N        
        rf(i) = mod(maxIndex(i),size(im,1))+1;
        cf(i) = uint16(maxIndex(i)/size(im,1))+1;
        
    end
    pointsNMS = [rf cf];
    
