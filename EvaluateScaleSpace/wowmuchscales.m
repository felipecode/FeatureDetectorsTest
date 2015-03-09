

% Generate for sift

T0_1 = imread('Images/Photo1/Cortadas/1.jpg');

T0_2 = imread('Images/Photo1/Cortadas/1.jpg');

T0_3 = imread('Images/Photo1/Cortadas/1.jpg');

T11_1 = imread('Images/Photo1/Cortadas/a11.jpg');

T11_2 = imread('Images/Photo1/Cortadas/a11.jpg');

T11_3 = imread('Images/Photo1/Cortadas/a11.jpg');

nOctaves =5;
imagesPerOctave =4;

T0_1 = double(rgb2gray(T0_1))/255;
T0_2 = double(rgb2gray(T0_2))/255;
T0_3 = double(rgb2gray(T0_3))/255;

T11_1 = double(rgb2gray(T11_1))/255;
T11_2 = double(rgb2gray(T11_2))/255;
T11_3 = double(rgb2gray(T11_3))/255;

imvec1=siftSS(T11_1,nOctaves,imagesPerOctave-3);

imvec2=siftSS(T11_2,nOctaves,imagesPerOctave-3);

imvec3=siftSS(T11_3,nOctaves,imagesPerOctave-3);


sSDIvec1 = [];
sSDIvec2 = [];
sSDIvec3 = [];

for i=1:length(imvec1)
    
    sSDIvec1 = [ sSDIvec1 ,100 * floor((1- ssim_index(T0_1,imresize(imvec1{i},size(T0_1),'nearest')))*10000)/10000];
    sSDIvec2 = [ sSDIvec2 ,100 * floor((1- ssim_index(T0_2,imresize(imvec2{i},size(T0_1),'nearest')))*10000)/10000];
    sSDIvec3 = [ sSDIvec3 ,100 * floor((1- ssim_index(T0_3,imresize(imvec3{i},size(T0_1),'nearest')))*10000)/10000];
   % sSDIvec1 = [sSDIvec1 calculateError(T0_1,imresize(imvec1{i},size(T0_1),'nearest'),'MSE')];
   % sSDIvec2 = [sSDIvec2 calculateError(T0_2,imresize(imvec1{i},size(T0_1),'nearest'),'MSE')];
   % sSDIvec3 = [sSDIvec3 calculateError(T0_3,imresize(imvec1{i},size(T0_1),'nearest'),'MSE')];
    
end


% Generate for SURF

imvec1 = surfShowSS(T0_1,nOctaves,imagesPerOctave);
imvec2 = surfShowSS(T0_2,nOctaves,imagesPerOctave);
imvec3 = surfShowSS(T0_3,nOctaves,imagesPerOctave);

suSDIvec1 = [];
suSDIvec2 = [];
suSDIvec3 = [];

for i=1:length(imvec1)
    
    suSDIvec1 = [ suSDIvec1 ,100 * floor((1- ssim_index(T0_1,imresize(imvec1{i},size(T0_1))))*10000)/10000];
    suSDIvec2 = [ suSDIvec2 ,100 * floor((1- ssim_index(T0_2,imresize(imvec2{i},size(T0_1))))*10000)/10000];
    suSDIvec3 = [ suSDIvec3 ,100 * floor((1- ssim_index(T0_3,imresize(imvec3{i},size(T0_1))))*10000)/10000];
    
end



% Generate for CenSURE

nSides =6;

imvec1= polygonShow(T11_1,nOctaves,imagesPerOctave,nSides);
%imvec2= polygonShow(T11_2,nOctaves,imagesPerOctave,nSides);
%imvec3= polygonShow(T11_3,nOctaves,imagesPerOctave,nSides);

cpSDIvec1 = [];
cpSDIvec2 = [];
cpSDIvec3 = [];
for i=1:length(imvec1)
    
    cpSDIvec1 = [ cpSDIvec1 ,100 * floor((1- ssim_index(T0_1,imvec1{i}))*10000)/10000];
   % cpSDIvec2 = [ cpSDIvec2 ,100 * floor((1- ssim_index(T0_2,imvec2{i}))*10000)/10000];
   % cpSDIvec3 = [ cpSDIvec3 ,100 * floor((1- ssim_index(T0_3,imvec3{i}))*10000)/10000];
    
end


% Generate for CenSURSTAR


imvec1 = starPolygonShow(T0_1,nOctaves,imagesPerOctave,nSides);
imvec2 = starPolygonShow(T0_1,nOctaves,imagesPerOctave,nSides);
imvec3 = starPolygonShow(T0_1,nOctaves,imagesPerOctave,nSides);

csSDIvec1 = [];
csSDIvec2 = [];
csSDIvec3 = [];

for i=1:length(imvec1)
    
    csSDIvec1 = [ csSDIvec1 ,100 * floor((1- ssim_index(T0_1,imvec1{i}))*10000)/10000];
    csSDIvec2 = [ csSDIvec2 ,100 * floor((1- ssim_index(T0_2,imvec2{i}))*10000)/10000];
    csSDIvec3 = [ csSDIvec3 ,100 * floor((1- ssim_index(T0_3,imvec3{i}))*10000)/10000];
    
    
end
