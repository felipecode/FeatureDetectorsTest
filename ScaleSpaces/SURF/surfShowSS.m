function imvec = surfShowSS(img,nOctaves,imagesPerOctave)

   % iimg=IntegralImage_IntegralImage(img);

    % Extract the interest points

  %  FastHessianData.octaves = 5;
  % FastHessianData.init_sample = 2;
 %   FastHessianData.img = iimg;
 
    scaleRatio=7.5;
    boxSize=3;
    boxFilter = fspecial('average',boxSize);
    step=2;
    %imageFilter = conv2(boxFilter,img);

    
    imvec{nOctaves*imagesPerOctave} = 1;
    
    for i=1:nOctaves
        
        for j=1:imagesPerOctave
            
            imvec{(i-1)*imagesPerOctave +j} = conv2(img,boxFilter,'same');
            
            imwrite(imvec{(i-1)*imagesPerOctave +j},sprintf('EvaluateScaleSpace/Images/%.2f_surf.png',(boxSize*3)/scaleRatio));
            boxSize = boxSize +step;
            boxFilter = fspecial('average',boxSize);
        end
        
            boxSize = boxSize*2 +1;
            boxFilter = fspecial('average',boxSize);
    end
            
    
    
%     
% 
%     step=2;
%     w = boxSize;
%     l = fix(w / 3); 
%     b = fix((w - 1) / 2 + 1);
%     inverse_area = 1 / double(w * w); 
%     
%     [ac,ar]=ndgrid(0:rl.width-1,0:rl.height-1);
% ar=ar(:); ac=ac(:);
% 
% get the image coordinates
% r = int32(ar * step);
% c = int32(ac * step);
% 
% Compute response components
% Dxx =   IntegralImage_BoxIntegral(r - l + 1, c - b, 2 * l - 1, w,img) - IntegralImage_BoxIntegral(r - l + 1, c - fix(l / 2), 2 * l - 1, l, img) * 3;
% Dyy =   IntegralImage_BoxIntegral(r - b, c - l + 1, w, 2 * l - 1,img) - IntegralImage_BoxIntegral(r - fix(l / 2), c - l + 1, l, 2 * l - 1,img) * 3;
% Dxy = + IntegralImage_BoxIntegral(r - l, c + 1, l, l,img) + IntegralImage_BoxIntegral(r + 1, c - l, l, l,img) ...
%       - IntegralImage_BoxIntegral(r - l, c - l, l, l,img) - IntegralImage_BoxIntegral(r + 1, c + 1, l, l,img);
%   
%   Dxx = Dxx*inverse_area;
% Dyy = Dyy*inverse_area;
% Dxy = Dxy*inverse_area;
% 
%  imageres = vec2mat(Dxx,2000);
% imageres = imresize(imageres,2);
% 
% figure; imshow(imageres);

end
