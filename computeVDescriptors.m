function V = computeVDescriptors(im)


    V = zeros(size(im,1),size(im,2),4);
   im = single(im(:,:,1));
% 
       sigma = 1.8;
       k=7;
      

    G1=fspecial('gauss',[round(k*sigma), round(k*sigma)], sigma);

    [Gx,Gy] = gradient(G1);   
    [Gxx,Gxy] = gradient(Gx);
    [Gyx,Gyy] = gradient(Gy);

    
    Lx = conv2(im, Gx, 'same');
    Ly = conv2(im, Gy, 'same');

    
    
    Lxx =conv2(im, Gxx, 'same');
    Lyy =conv2(im, Gyy, 'same');
    Lxy = conv2(im, Gxy, 'same');
    
    
    V(:,:,1) = Lx.*Lx + Ly.*Ly;
    V(:,:,2) = Lxx.*Lx.*Lx + 2*Lxy.*Lx.*Ly + Lyy.*Ly.*Ly;
    V(:,:,3) = Lxx + Lyy;
    V(:,:,4) = Lxx.*Lxx + 2.*Lxy.*Lxy + Lyy.*Lyy;

end

