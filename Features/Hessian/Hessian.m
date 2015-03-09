function points=Hessian(im,N,delta)
    
   % im = double(im(:,:,1));
   im = double(im(:,:,1));
% 
       sigma = 1.2;
       k=7;
% 
%     derivative masks
%     s_D = 0.7*sigma;
%     x  = -round(3*s_D):round(3*s_D);
%     dxxmaskg = dxxmask .* exp(-dxxmask.*dxxmask/(2*s_D*s_D)) ./ (s_D*s_D*s_D*sqrt(2*pi));
%     dy = dx';

    G1=fspecial('gauss',[round(k*sigma), round(k*sigma)], sigma);

    [Gx,Gy] = gradient(G1);   
    [Gxx,Gxy] = gradient(Gx);
    [Gyx,Gyy] = gradient(Gy);

    
  %  Ix = conv2(im, dx, 'valid');
  %  Iy = conv2(im, dy, 'valid');
    %Ix(Ix<0) = 0;
    %Iy(Iy<0) = 0;
     %   s_I = s_D;
    %g = fspecial('gaussian',max(1,fix(6*s_I+1)), s_I);
    %im =conv2(im, g, 'valid');
    
    
    Ixx =conv2(im, Gxx, 'same');
    Iyy =conv2(im, Gyy, 'same');
    Ixy = conv2(im, Gxy, 'same');

    % agora s� no smooth.


    
    

    %figure
    %title('Ixx');
    %imshow(mat2gray(Ixx));
    %figure
    %title('Iyy');
    %imshow(mat2gray(Iyy));
    %figure
    
    %title('Ixy');
    %imshow(mat2gray(Ixy));

    
    % Eliminating the features found on borders with the valid option,
    % after that we have to resize the filters



    

    
    
    H = (Ixx.*Iyy - (Ixy.*Ixy));
%     H((size(im,1)-15):size(im,1),:) = 0;
%     H(:,(size(im,2)-15):size(im,2)) = 0;
%     H(1:15,:) = 0;
%     H(:,1:15) = 0;
    %figure;
    %title('Hessian');
    %imshow(mat2gray(H));
        % find local maxima on 3x3 neighborgood
    [r,c,max_local] = findLocalMaximum(H,delta);

    % set threshold 1% of the maximum value
    t = 0.01*max(max_local(:));
    
    % find local maxima greater than threshold
    [rf,cf] = find(max_local>=t);

%     [sortedValues,sortIndex] = sort(max_local(:),'descend');  %# Sort the values in
    
    %sortedValues(1:50)
    %sortIndex'
    %size(sortIndex)
%     maxIndex = sortIndex(1:N);
    %size(maxIndex)s
    %size(max_local)
    %rf = zeros(N,1);
    %cf = zeros(N,1);
    
    %maxIndex
    %size(r)
    %size(c)
    %for i=1:N        
    %    rf(i) = mod(maxIndex(i),size(im,1))+1;
    %    cf(i) = uint16(maxIndex(i)/size(im,1));
        
    %end
    
    

    
    
    % build interest points
    points = [rf,cf];
    

end