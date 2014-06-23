% Example of color Harris detector and of color boosted Harris detector.
%
% Note that a straight forward extention from luminance to color yields only
% few changes (compare fig.2 & 4) This is caused by the fact that also in the RGB-image most
% contrast changes are in the luminance direction. Only in the case of
% iso-luminance large differences are expected.
%
% By applying color boosting the color information content of detected points is
% increased. We here obtain the color boosting by a simple multiplication
% of the color channels (O1,O2) by a boosting factor. For a more accurate
% computation of the boosting factors see article:
%
% LITERATURE:
% J. van de Weijer, Th. Gevers, J-M Geusebroek
% "Boosting Color Saliency in Image Feature Detection"
% IEEE Trans. Pattern Analysis and Machine Intelligence,
% vol. 27 (4), April 2005.

input_im=double(imread('../Images/dia2redS.jpg'));          % corel image
sigma_g=1.5;
sigma_a=5;
nPoints=30;

% compute Harris Energy
[EnIm]= ColorHarris(input_im,sigma_g,sigma_a,0.04,1);

% extract corners in total nPoints
[x_max,y_max,corner_im,num_max]=getmaxpoints(EnIm,nPoints);

% visualize corners 
output_im=visualize_corners(input_im,corner_im);

figure(1);imshow(uint8(input_im));
figure(2);imshow(uint8(output_im));title('color Harris');

% use color statistics to focus on rare-events;
[O1,O2,O3]=RGB2O(input_im);

% simple color boosting matrix with a multiplication of factor 5 in the color direction
[RR,GG,BB]=O2RGB(5*O1,5*O2,O3);
boost_im=zeros(size(input_im));
boost_im(:,:,1)=RR;boost_im(:,:,2)=GG;boost_im(:,:,3)=BB;

% compute Harris Energy
[EnIm]= ColorHarris(boost_im,sigma_g,sigma_a,0.04,1);

% extract corners in total nPoints
[x_max,y_max,corner_im2,num_max]=getmaxpoints(EnIm,nPoints);

% visualize corners 
output_im2=visualize_corners(input_im,corner_im2);
figure(3);imshow(uint8(output_im2));title('color boosted Harris');

% compute Harris Energy
luminance_im=make_image(sum(input_im,3),sum(input_im,3),sum(input_im,3));
[EnIm]= ColorHarris(luminance_im,sigma_g,sigma_a,0.04,1);

% extract corners in total nPoints
[x_max,y_max,corner_im2,num_max]=getmaxpoints(EnIm,nPoints);

% visualize corners 
output_im3=visualize_corners(input_im,corner_im2);

figure(4);imshow(uint8(output_im3));title('Luminance Image');