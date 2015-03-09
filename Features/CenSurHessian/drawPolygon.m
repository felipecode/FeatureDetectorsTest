function matrix=drawPolygon(nSides,kernelSize)


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
         
         
        
         
         
        if( i>1)
            
             [myline,mycoords,outmat,X,Y] = bresenham(matrix,[round(pointsX(i)) round(pointsY(i)); round(pointsX(i-1)) round(pointsY(i-1)) ],0);
               matrix = outmat;
        end


        
        theta = theta - degrees;
    end

                
         [myline,mycoords,outmat,X,Y] = bresenham(matrix,[round(pointsX(nSides)) round(pointsY(nSides)); round(pointsX(1)) round(pointsY(1)) ],0);
           matrix = outmat;

    matrix = ~logical(matrix);
    matrix = imfill(matrix,'holes');
    matrix = double(matrix);
end