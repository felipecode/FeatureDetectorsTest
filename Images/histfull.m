function ime = histfull(im1)
im1R = im1(:,:,1);
im1G = im1(:,:,2);
im1B = im1(:,:,3);

im1Re=histeq(im1R,256);
im1Be=histeq(im1B,256);
im1Ge=histeq(im1G,256);
im1(:,:,1) = im1Re;
im1(:,:,2) = im1Ge;
im1(:,:,3) = im1Be;
ime = im1;

