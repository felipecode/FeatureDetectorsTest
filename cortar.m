% Photo 2
%xi= 332;
%xf = 3890;
%yi = 387;
%yf = 2693;

% Black case
%xi= 523;
%xf = 3796;
%yi = 373;
%yf = 2427;

% Photo 1
%xi = 242;
%xf = 3777;
%yi= 375;
%yf = 2656;

% center 1779/1125


%Photo 3
%xi = 221;
%xf = 3758;
%yi= 348;
%yf = 2628;



for i=1:size(imvec,2)
   
    im =imvec{i};
    imcut = im(yi:yf,xi:xf,:);
    %imcut(:,:,1) = medfilt2(imcut(:,:,1),[15 15]);
    %imcut(:,:,2) = medfilt2(imcut(:,:,2),[15 15]);
    %imcut(:,:,3) = medfilt2(imcut(:,:,3),[15 15]);
    
    %H = fspecial('Gaussian',[45 45],45.5);
    %GaussBlur = imfilter(imcut,H);

    
    
    
    %imcutre = imresize(imcut, [ 2307 3559] ); 
    
    %if i==12
    %    imcutre = imadjust(imcutre,[0; 1],[0.03;1]);
    %end
        %figure;
    %imhist(rgb2gray(imcutre));
    %figure;
    %imshow(double(imcut)/255);
    

    imcut = bfilter2(double(imcut)/255,5,[3 0.1]);
    
    imwrite(imcut,strcat('Images/Photo3/Cortadas/',sprintf('%d.jpg',i)));

end
