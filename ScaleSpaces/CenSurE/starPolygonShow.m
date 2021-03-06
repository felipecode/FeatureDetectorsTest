function imvec = starPolygonShow(img,nOctaves,imagesPerOctave,nSides)

   % iimg=IntegralImage_IntegralImage(img);

    % Extract the interest points

  %  FastHessianData.octaves = 5;
  % FastHessianData.init_sample = 2;
 %   FastHessianData.img = iimg;
    boxSize=3;
    h=drawStarPolygon(nSides,boxSize);
    polyFilter = h./sum(sum(h));
 
    scaleRatio=7.5;
   
    step=2;
    %imageFilter = conv2(boxFilter,img);


    
    imvec{nOctaves*imagesPerOctave} = 1;
    
    for i=1:nOctaves
        
        for j=1:imagesPerOctave
            
            imvec{(i-1)*imagesPerOctave +j} = conv2(img,polyFilter,'same');
            
            imwrite(imvec{(i-1)*imagesPerOctave +j},sprintf('EvaluateScaleSpace/Images/%.2f_cenS%d.png',(boxSize*3)/scaleRatio,nSides));
            boxSize = boxSize +step;
            h=drawStarPolygon(nSides,boxSize);
            polyFilter = h./sum(sum(h));
        end
        
            boxSize = boxSize*2 +1;
            h=drawStarPolygon(nSides,boxSize);
            polyFilter = h./sum(sum(h));
    end
            
    
   

end
