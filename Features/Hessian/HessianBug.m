function points=HessianBug(im,N,delta)
    
    im = double(im(:,:,1));
    sigma=1.5;
    s_D = 0.7*sigma;
    x  = -round(3*s_D):round(3*s_D);
    dx = x .* exp(-x.*x/(2*s_D*s_D)) ./ (s_D*s_D*s_D*sqrt(2*pi));
    dy = dx';

    Ix = conv2(im, dx, 'valid');
    Iy = conv2(im, dy, 'valid');
    Ixx =conv2(Ix, dx, 'valid');
    Iyy =conv2(Iy, dy, 'valid');
    Ixy = conv2(Ix, dy, 'valid');
    
    % agora s� no smooth.
    s_I = sigma;
    g = fspecial('gaussian',max(1,fix(6*s_I+1)), s_I);
    Ixx =conv2(Ixx, g, 'valid');
    Iyy =conv2(Iyy, g, 'valid');
    Ixy = conv2(Ixy, g, 'valid');
   
    %figure
    %title('IX');
    %imshow(Ix);
    %figure
    %title('Iy');
    %imshow(Iy);
    %figure
    %title('Ixx');
    %imshow(Ixx);
    %figure
    %title('Iyy');
    %imshow(Iyy);
    %figure
    %title('Ixy');
    %imshow(Ixy);

    
    % Eliminating the features found on borders with the valid option,
    % after that we have to resize the filters

    Ixx(size(im,1),size(im,2)) = 0;
    Iyy(size(im,1),size(im,2)) = 0;
    Ixy(size(im,1),size(im,2)) = 0;
    
    
    H = Ixx.*Iyy - Ixy.*Ixy;
    figure
    title('Hessian');
    imshow(mat2gray(H));
        % find local maxima on 3x3 neighborgood
    [r,c,max_local] = findLocalMaximum(H,delta);

    % set threshold 1% of the maximum value
    %t = 0.008*max(max_local(:));

    % find local maxima greater than threshold
    %[r,c] = find(max_local>=t);

    [sortedValues,sortIndex] = sort(max_local(:),'descend');  %# Sort the values in
    
    %sortedValues(1:50)
    %sortIndex'
    %size(sortIndex)
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
        cf(i) = uint16(maxIndex(i)/size(im,1));
        
    end
    
    
    % build interest points
    points = [rf,cf];
    
end