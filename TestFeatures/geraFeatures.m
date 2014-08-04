% This function generate the feature points for a choosen algorithm
% Parameters

%@im = image
%@algorithm = algorithm that you want to use to detect feature points
%


function qFeatures=geraFeatures(im,algoritmo,N,delta)


    points = zeros(3);
    if strcmp(algoritmo,'harris')
        addpath Harris
        im = rgb2gray(im);
        
        points=kp_harris(im,N,delta); 
        rmpath Harris

    elseif strcmp(algoritmo,'kaze')
        addpath Kaze
        im = rgb2gray(im);
        points = kaze(im,'dthreshold',0.0);
%         points=int32(points);
%         points=points';
%         points = especialnms(im,points,N,delta);
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)
        rmpath Kaze
     
        elseif strcmp(algoritmo,'censure')
        addpath Censure
        im = rgb2gray(im);
        points = censure(im,300);
%         points=int32(points);
%         points=points';
%         points = especialnms(im,points,N,delta);
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)
        rmpath Censure
        
    elseif strcmp(algoritmo,'hessian')
        addpath Hessian
        im = rgb2gray(im);
        points = Hessian(im,N,delta);
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)
        rmpath Hessian
        
    elseif strcmp(algoritmo,'laplacian')
        im = rgb2gray(im);
        addpath Laplacian
        points = laplacian(im,N,delta);
%         figure;
%         imshow(im);
%         hold on
%         drawcircles(points)
        rmpath Laplacian
        
    elseif strcmp(algoritmo,'sift')
        
        % TODO: Totally change this SIFT ! Vl_feat instead.
        addpath SIFT_YantaoNoemie
        im = rgb2gray(im);
        %figure
        %imshow(im);
        
        im(950,950) = 0;
        [points,descriptors,scalespace,difofg]=do_sift(im'); 
        points = points';
        
        points = especialnms(im,points,N,delta);


        %hold on
        %drawcircles(points)

        rmpath SIFT_YantaoNoemie


    elseif strcmp(algoritmo,'surf')
        addpath Surf  
        
        imout = rgb2gray(im);
        pointsStruct = OpenSurf(imout');
        
        for i=1:size(pointsStruct,2)
            points(i,1) = pointsStruct(1,i).x;
            points(i,2) = pointsStruct(1,i).y;
            points(i,4) = pointsStruct(1,i).response;
        end
        %points = points';
        
        points = especialnms(imout,points,N,delta);
        
        
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points);
        %hold off
        rmpath Surf
    elseif strcmp(algoritmo,'hessianlap')
        addpath HessianLaplace
        im = rgb2gray(im);
        points=hessianlaplace(im); 
        rmpath HessianLaplace
        points = especialnms(im,points,N,delta);
         %figure
         %imshow(im);
         %hold on
         %drawcircles(points)
       
        
    elseif strcmp(algoritmo,'harrislap')
        addpath HarrisLaplace
        im = rgb2gray(im);
        points=kp_harrislaplace(im); 
        %fprintf('Points');
        %size(points)
        rmpath HarrisLaplace
        points = especialnms(im,points,N,delta);
         %figure
         %imshow(im);
         %hold on
         %drawcircles(points)
        

        
    elseif strcmp(algoritmo,'harriscolor')
        addpath ColorHarris
        [EnIm]= ColorHarris(im,1.5,5,0.04,1);
        [r,c,max_local] = findLocalMaximum(EnIm,delta);
        % set threshold 1% of the maximum value
        [sortedValues,sortIndex] = sort(max_local(:),'descend');  %# Sort the values in

        maxIndex = sortIndex(1:N);

        rf = zeros(N,1);
        cf = zeros(N,1);

        %maxIndex
        %size(r)
        %size(c)
        for i=1:N        
            rf(i) = mod(maxIndex(i),size(im,1))+1;
            cf(i) = uint16(maxIndex(i)/size(im,1))+1;

        end
    
        points = [rf,cf];
         %figure
         %imshow(im);
         %hold on
         %drawcircles(points);
         %hold off
        rmpath ColorHarris
    elseif strcmp(algoritmo,'harriscolorb')
        addpath ColorHarris
        
        [O1,O2,O3]=RGB2O(im);

        % simple color boosting matrix with a multiplication of factor 5 in the color direction
        [RR,GG,BB]=O2RGB(5*O1,5*O2,O3);
        boost_im=zeros(size(im));
        boost_im(:,:,1)=RR;boost_im(:,:,2)=GG;boost_im(:,:,3)=BB;
        
        
        [EnIm]= ColorHarris(boost_im,1.5,5,0.04,1);
        [r,c,max_local] = findLocalMaximum(EnIm,delta);
        % set threshold 1% of the maximum value
        [sortedValues,sortIndex] = sort(max_local(:),'descend');  %# Sort the values in

        maxIndex = sortIndex(1:N);

        rf = zeros(N,1);
        cf = zeros(N,1);

        %maxIndex
        %size(r)
        %size(c)
        for i=1:N        
            rf(i) = mod(maxIndex(i),size(im,1))+1;
            cf(i) = uint16(maxIndex(i)/size(im,1))+1;

        end
    
        points = [rf,cf];

         %figure
         %imshow(im);
         %hold on
         %drawcircles(points);
         %hold off
        
        rmpath ColorHarris       
        
    end
    
    qFeatures=points;
end
