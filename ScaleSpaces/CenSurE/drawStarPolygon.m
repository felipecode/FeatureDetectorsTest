function matrix=drawStarPolygon(nSides,kernelSize)


    degrees = 360/nSides;  % number of degrees to change.
    radius = kernelSize/2;
    centerX= ceil(radius);
    centerY= ceil(radius);
    theta =90;
    pointsX=zeros(nSides,1);
    pointsY= zeros(nSides,1);
    matrix = ones(kernelSize);
    for i=1:nSides
        if theta <0
            thetaVal = theta +360;
        else
            thetaVal = theta;
        end
        [x,y] = pol2cart(degtorad(thetaVal),radius);
        

            pointsX(i) = centerX + x;
            pointsY(i) = centerY - y;

         if pointsX(i) > kernelSize
             pointsX(i) = kernelSize;
         end
         if pointsY(i) > kernelSize
             pointsY(i) = kernelSize;
         end
         
         
        
        
         
      
        
        theta = theta - degrees;
    end

    
    % Conect the points now in a star shape
    
    % First we discover the K, that is the conection type ( How many points
    % we should skip)
    
    if rem(nSides,2) == 0
        factor = nSides/2 - 1;
    else
        factor = floor(nSides/2);
    end
    factor
        
    for i=1:(nSides/2 +1)
       
        pos1 = i + factor;
        pos2 = i - factor;
        if (pos2 <= 0)
           pos2 = nSides + pos2; 
        end

         [myline,mycoords,outmat,X,Y] = bresenham(matrix,[round(pointsX(i)) round(pointsY(i)); round(pointsX(pos1)) round(pointsY(pos1)) ],0);
         matrix = outmat;
         [myline,mycoords,outmat,X,Y] = bresenham(matrix,[round(pointsX(i)) round(pointsY(i)); round(pointsX(pos2)) round(pointsY(pos2)) ],0);
          matrix = outmat;
          
          

    end

    
    matrix = ~logical(matrix);
    matrix = imfill(matrix,'holes');
    matrix = double(matrix);

end