% function for testing the scale space

%imvec = loadImages('Images/Photo1/Cortadas');
% SIFT scale Space

nOctaves=5;
imagesPerOctave=4;

imvecsif=siftSS(double(rgb2gray(imvec))/255,nOctaves,imagesPerOctave);


% SURF scale Space

imvecsur = surfShowSS(double(rgb2gray(imvec))/255,nOctaves,imagesPerOctave);


% Censur Star

imveccen = starPolygonShow(double(rgb2gray(imvec))/255,nOctaves,imagesPerOctave,6);

%imveckaze = kazeSS(double(rgb2gray(imvec))/255,nOctaves,imagesPerOctave);