function H=HessianMeasure(im)
    
     im = double(im(:,:,1));
% 
       sigma = 1.8;
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
    %title('IX');
    %imshow(mat2gray(Ix));
    %figure
    %title('Iy');
    %imshow(mat2gray(Iy));
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


    
    H = abs(Ixx.*Iyy - 0.81*(Ixy.*Ixy));
    H((size(im,1)-15):size(im,1),:) = 0;
    H(:,(size(im,2)-15):size(im,2)) = 0;
    H(1:15,:) = 0;
    H(:,1:15) = 0;
    
end