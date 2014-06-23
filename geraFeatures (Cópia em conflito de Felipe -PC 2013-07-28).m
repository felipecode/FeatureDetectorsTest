function qFeatures=geraFeatures(im,algoritmo)

    points = zeros(3);
    if strcmp(algoritmo,'harris')
        addpath Harris
        points=kp_harris(im); 
         rmpath Harris
        imshow(im);
        hold on
        drawcircles(points,'b-');
       
    elseif strcmp(algoritmo,'hessian')
        addpath Hessian
        points = Hessian(im);
        imshow(im);
        hold on
        drawcircles(points)
        rmpath Hessian
    elseif strcmp(algoritmo,'sift')
        addpath sift_yantaonoemie
        imteste = double(zeros(size(im)));
        im(1723,1723,1)=0;
        [points,descriptors,scalespace,difofg]=do_sift(im'); 
        points = points';
%         size(points)
%         for i=1:size(points,1)
%             imteste(uint16(points(i,1)),uint16(points(i,2)))=points(i,4);
%         end
%         figure
%         imshow(imteste);
%         [r,c,max_local, nada] = nonmaxsuppts(imteste,45.0,20);
%         points = [r c];
        figure
        imshow(im);
        hold on
        drawcircles(points)

        rmpath sift_yantaonoemie
%         addpath sift
%         
%         
%         rmpath sift

    elseif strcmp(algoritmo,'surf')
        addpath Surf    
        pointsStruct = OpenSurf(im);
        %size(pointsStruct,2)
        for i=1:size(pointsStruct,2)
            points(i,1) = pointsStruct(1,i).x;
            points(i,2) = pointsStruct(1,i).y;
        end
        imshow(im);
        hold on
        drawcircles(points)
        hold off
        rmpath Surf
    elseif strcmp(algoritmo,'harrislap')
        addpath HarrisLaplace
        points=kp_harrislaplace(im); 
        imshow(im);
        hold on
        drawcircles(points)
        rmpath HarrisLaplace
    elseif strcmp(algoritmo,'harriscolor')
        addpath ColorHarris
        [EnIm]= ColorHarris(im,1.5,5,0.04,1);
        [r,c,max_local] = findLocalMaximum(EnIm,10.0);
        % set threshold 1% of the maximum value
        t = 0.005*max(max_local(:));

        % find local maxima greater than threshold
        [r,c] = find(max_local>=t);
        % build interest points
        points = [r,c];
        imshow(im);
        hold on
        drawcircles(points);
        hold off
        rmpath ColorHarris
    elseif strcmp(algoritmo,'harriscolorb')
        addpath ColorHarris
        [EnIm]= ColorHarris(im,1.5,5,0.04,1);
        [r,c,max_local] = findLocalMaximum(EnIm,10.0);
        % set threshold 1% of the maximum value
        t = 0.005*max(max_local(:));

        % find local maxima greater than threshold
        [r,c] = find(max_local>=t);
        % build interest points
        points = [r,c];
        imshow(im);
        hold on
        drawcircles(points);
        hold off
        rmpath ColorHarris       
        
    end
    
    qFeatures=points;
end