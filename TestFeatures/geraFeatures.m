% This function generate the feature points for a choosen algorithm
% Parameters

%@im = image
%@algorithm = algorithm that you want to use to detect feature points
%


function qFeatures=geraFeatures(im,algoritmo,N,delta)


    points = zeros(3);
    if strcmp(algoritmo,'harris')
        addpath Harris
        %im = rgb2gray(im);
        
        points=kp_harris(im,N,delta); 
        
        %if length(points) > 5
        %    points = harrisnms(im,points,N,delta);
        %end
        %imshow(im);
        %hold on
        %drawcircles(points);
        %hold off 
        rmpath Harris

   elseif strcmp(algoritmo,'kazeg1')
        addpath Kaze
        %im = rgb2gray(im);

        points = kaze(im,'dthreshold',0.00005,'diffusivity',0);
         points=uint32(points);
               
         % Have to change the X by the y ! Yes. Crazy stuff
        aux=points(:,1);
        points(:,1) = points(:,2);
        points(:,2) = aux;               
                

         
         if length(points) > 5
            
             points = hessiannms(im,points,N,delta);
         end
        %imshow(im);
        %hold on
        %drawcircles(points);
        %hold off 

        rmpath Kaze
        
     elseif strcmp(algoritmo,'kazeg2')
        addpath Kaze
        %im = rgb2gray(im);

        points = kaze(im,'dthreshold',0.00005,'diffusivity',1);
         points=uint32(points);
               
         % Have to change the X by the y ! Yes. Crazy stuff
        aux=points(:,1);
        points(:,1) = points(:,2);
        points(:,2) = aux;               
                

         
         if length(points) > 5
            
             points = hessiannms(im,points,N,delta);
         end
        %imshow(im);
        %hold on
        %drawcircles(points);
        %hold off 

        rmpath Kaze
     elseif strcmp(algoritmo,'kazeg3')
        addpath Kaze
       % im = rgb2gray(im);

        points = kaze(im,'dthreshold',0.00005,'diffusivity',2);
         points=uint32(points);
               
         % Have to change the X by the y ! Yes. Crazy stuff
        aux=points(:,1);
        points(:,1) = points(:,2);
        points(:,2) = aux;               
                

         
         if length(points) > 5
            
             points = hessiannms(im,points,N,delta);
         end
        %imshow(im);
        %hold on
        %drawcircles(points);
        %hold off 

        rmpath Kaze
     
    elseif strcmp(algoritmo,'censtar')

      %  imout = rgb2gray(im);
        Options=struct('tresh',0.0000005,'octaves',5,'init_sample',2,'upright',false,'extended',false,'verbose',false,'nSides',6,'poly',0,'harrisThresh',0.000001);
        points = CenSur(im',Options);
        
        length(points)
        if length(points) > 5
            points = harrisnms(im,points,N,delta);
        end
        %points = points';
        %if length(points) > 5
        %    points = especialnms(imout,points,N,delta);
        %end
%         points=int32(points);
%         points=points';
%         points = especialnms(im,points,N,delta);
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)

    elseif strcmp(algoritmo,'cenpoly')

        %imout = rgb2gray(im);
        Options=struct('tresh',0.0000005,'octaves',5,'init_sample',2,'upright',false,'extended',false,'verbose',false,'nSides',6,'poly',1,'harrisThresh',0.000001);
        points = CenSur(im',Options);
        
        length(points)
        if length(points) > 5
            points = harrisnms(im,points,N,delta);
        end
        %points = points';
        %if length(points) > 5
        %    points = especialnms(imout,points,N,delta);
        %end
%         points=int32(points);
%         points=points';
%         points = especialnms(im,points,N,delta);
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)

     elseif strcmp(algoritmo,'censurehes')
        
       % imout = rgb2gray(im);
        Options=struct('tresh',0.0000005,'octaves',5,'init_sample',2,'upright',false,'extended',false,'verbose',false,'nSides',6,'poly',1,'harrisThresh',0.000001);
        points = CenSurHessian(im',Options);
        
        length(points)
        if length(points) > 5
            points = hessiannms(im,points,N,delta);
        end
        %points = points';
        %if length(points) > 5
        %    points = especialnms(imout,points,N,delta);
        %end
%         points=int32(points);
%         points=points';
%         points = especialnms(im,points,N,delta);
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)
        
        
        
    elseif strcmp(algoritmo,'hessian')
        addpath Hessian
        %im = rgb2gray(im);
        points = Hessian(im,N,delta);
        

        
                
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)
        rmpath Hessian
   elseif strcmp(algoritmo,'hessianbug')
        addpath Hessian
        %im = rgb2gray(im);
        points = HessianBug(im,N,delta);
        

        
                
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points)
        rmpath Hessian
        
    elseif strcmp(algoritmo,'laplacian')
        %im = rgb2gray(im);
        addpath Laplacian
        points = laplacian(im,N,delta);
        
        %if length(points) > 5
        %    points = especialnms(im,points,N,delta);
        %end
%          figure;
%          imshow(im);
%          hold on
%          drawcircles(points)
        rmpath Laplacian
        
    elseif strcmp(algoritmo,'sift')
        

        %im = rgb2gray(im);

        
        %im(950,950) = 0;
        im= single(im);
        points = vl_sift(im);
        points = points';
        im = uint8(im);
        
        % Have to change the X by the y ! Yes. Crazy stuff
        aux=points(:,1);
        points(:,1) = points(:,2);
        points(:,2) = aux;
        if length(points) > 5                
            
             points = hessiannms(im,points,N,delta);
         end


    elseif strcmp(algoritmo,'surf')
        addpath Surf  
        
        %imout = rgb2gray(im);
        pointsStruct = OpenSurf(im');
        
        for i=1:size(pointsStruct,2)
            points(i,1) = pointsStruct(1,i).x;
            points(i,2) = pointsStruct(1,i).y;
            points(i,4) = pointsStruct(1,i).response;
        end
        %points = points';
         
         if length(points) > 5
            
             points = hessiannms(im,points,N,delta);
         end
        
        %figure;
        %imshow(im);
        %hold on
        %drawcircles(points);
        %hold off
        rmpath Surf
    elseif strcmp(algoritmo,'hessianlap')
        addpath HessianLaplace
        %im = rgb2gray(im);
        points=hessianlaplace(im); 
        rmpath HessianLaplace
        points = especialnms(im,points,N,delta);
         %figure
         %imshow(im);
         %hold on
         %drawcircles(points)
       
        
    elseif strcmp(algoritmo,'harrislap')
        addpath HarrisLaplace
        %im = rgb2gray(im);
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
