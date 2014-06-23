function [H m1 m2] = homography(im1,im2)

    if ndims(im1) == 3, im1 = rgb2gray(im1); end
    if ndims(im2) == 3, im2 = rgb2gray(im2); end
    addpath vgg/vgg_examples
    addpath vgg/vgg_multiview
    dmax = 100;     % 
    w = 11;  
    points1 =geraFeatures(im1,'harris');
    points2 =geraFeatures(im2,'harris');
    fprintf('Gerou Features');
    [m1,m2] = matchbycorrelation(im1,points1', im2, points2', w, dmax);

    fprintf('Fez o Matching');
    
    x1 = [m1(2,:); m1(1,:); ones(1,length(m1))];
    x2 = [m2(2,:); m2(1,:); ones(1,length(m1))];   

    t = 0.01;
    [H inliers]= ransacfithomography_vgg(x1,x2,t);
    
    rmpath vgg/vgg_examples
    rmpath vgg/vgg_multiview
end