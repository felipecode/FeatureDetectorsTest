function features1=sift_detector(img)

%img1 = imread(img);

%figure(1);
%image(img);
%colormap(gray(256));
%title('ima1.jpg');

drawnow;
addpath Sift/MatlabSIFT
% Detect the SIFT features:
fprintf(1,'Computing the SIFT features for ima1.jpg...\n')
[features1,pyr1,imp1,keys1] = detect_features(img,1.5,0,0.3);
rmpath Sift/MatlabSIFT
%figure(2);
%showfeatures(features1,img1);
%title('SIFT features of image ima1.jpg');
drawnow;

end