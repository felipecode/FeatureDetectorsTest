function points = hessianlaplace(img)
    % Extract keypoints using Harris-Laplace algorithm
    %
    % Author :: Vincent Garcia
    % Date   :: 05/12/2007
    %
    % INPUT
    % =====
    % img    : the graylevel image
    %
    % OUTPUT
    % ======
    % points : the interest points extracted
    %
    % REFERENCES
    % ==========
    % K. Mikolajczyk and C. Schmid. Scale & affine invariant interest point detectors.
    % International Journal of Computer Vision, 2004
    %
    % EXAMPLE
    % =======
    % points = kp_harrislaplace(img)
    
    % IMAGE PARAMETERS
    img         = double(img(:,:,1));
    img_height  = size(img,1);
    img_width   = size(img,2);

    % SCALE PARAMETERS
    sigma_begin = 1.8;
    sigma_step  = 1.2;
    sigma_nb    = 13;
    sigma_array = (sigma_step.^(0:sigma_nb-1))*sigma_begin
    

    % PART 1 : Hessian
    hessian_pts = zeros(0,4);
    for i=1:sigma_nb

        % scale (standard deviation)
        s_I = sigma_array(i);   % int�gration scale
        %s_D = 0.7*s_I;          % derivative scale %0.7

        
        k=7;
    % 
    %     derivative masks
    %     s_D = 0.7*sigma;
    %     x  = -round(3*s_D):round(3*s_D);
    %     dxxmaskg = dxxmask .* exp(-dxxmask.*dxxmask/(2*s_D*s_D)) ./ (s_D*s_D*s_D*sqrt(2*pi));
    %     dy = dx';

        G1=fspecial('gauss',[round(k*s_I), round(k*s_I)], s_I);

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


        Ixx =conv2(img, Gxx, 'same');
        Iyy =conv2(img, Gyy, 'same');
        Ixy = conv2(img, Gxy, 'same');
    
    
    

        %resizing filters
        
        %Ixx(size(img,1),size(img,2)) = 0;
        %Iyy(size(img,1),size(img,2)) = 0;
        %Ixy(size(img,1),size(img,2)) = 0;
        
        H = (Ixx.*Iyy - 0.81*(Ixy.*Ixy));
        H((size(img,1)-15):size(img,1),:) = 0;
        H(:,(size(img,2)-15):size(img,2)) = 0;
        H(1:15,:) = 0;
        H(:,1:15) = 0;
        
        % find local maxima on neighborgood
        [l,c,max_local] = findLocalMaximum(H,1);%3*s_I

        % set threshold 1% of the maximum value
        t = 0.0001*max(max_local(:));

        % find local maxima greater than threshold
        [l,c] = find(max_local>=t);
        res = zeros(size(l)); for k=1:length(l) res(k) =max_local(l(k),c(k));  end
        % build interest points
        n = size(l,1);
        
        hessian_pts(end+1:end+n,:) = [l,c,repmat(i,[n,1]),res];
        
       

        %hessian_pts(1,3)
    end
    

    % PART 2 : LAPLACE
    % compute scale-normalized laplacian operator
    laplace_snlo = zeros(img_height,img_width,sigma_nb);
    for i=1:sigma_nb
        s_L = sigma_array(i);   % scale
        laplace_snlo(:,:,i) = s_L*s_L*imfilter(img,fspecial('log', floor(6*s_L+1), s_L),'replicate');
    end
    % verify for each of the initial points whether the LoG attains a maximum at the scale of the point
    n   = size(hessian_pts,1);
    cpt = 0;
    points = zeros(n,4);
    for i=1:n
        l = hessian_pts(i,1);
        c = hessian_pts(i,2);
        s = hessian_pts(i,3);
        val = laplace_snlo(l,c,s);
        if s>1 && s<sigma_nb
            if val>laplace_snlo(l,c,s-1) && val>laplace_snlo(l,c,s+1)
                cpt = cpt+1;
                points(cpt,:) = hessian_pts(i,:);
            end
        elseif s==1
            if val>laplace_snlo(l,c,2)
                cpt = cpt+1;
                points(cpt,:) = hessian_pts(i,:);
            end
        elseif s==sigma_nb
            if val>laplace_snlo(l,c,s-1)
                cpt = cpt+1;
                points(cpt,:) = hessian_pts(i,:);
            end
        end
    end
    points(cpt+1:end,:) = [];
    
    % SET SCALE TO 3*SIGMA FOR DISPLAY
    points(:,3) = 3*sigma_array(points(:,3));
end