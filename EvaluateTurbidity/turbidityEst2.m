<<<<<<< HEAD
function tmap=turbidityEst2(J,I,Binf,channel)
=======
function tmap=turbidityEst2(J,I,Binf)
>>>>>>> fd31db4c6c653a74b8a452ac63522d4f505aea68

  %[A,I] = double(max(max(I)))./255;
    
    


    
    %gauss = fspecial('gaussian',12);
    %J = imfilter(J,gauss);
    %I = imfilter(I,gauss);
 
   % [posx posy] = Aest(I,15);
    
    
    
<<<<<<< HEAD
    I = double(I(:,:,channel))/255;
    J = double(J(:,:,channel))/255;
    Binf = double(Binf(:,:,channel))/255;
    %[H S J ] = rgb2hsv(J);
    %[H S Binf ] = rgb2hsv(Binf);    
=======
    [H S I ] = rgb2hsv(I);
    [H S J ] = rgb2hsv(J);
    [H S Binf ] = rgb2hsv(Binf);    
>>>>>>> fd31db4c6c653a74b8a452ac63522d4f505aea68
   
    
    %J = double(J)./255;
    %I = double(I)./255;
    
    
   % A = I(posx(1),posy(1));

    
    
    %A = I(posx,posy);
    
    %B = I - A;
    %figure;
    %imshow(B);
    %C = J - A;
    %figure;
    %imshow(C)
    
     for i=1:size(I,1)
        for j=1:size(J,2)
            B(i,j) = I(i,j) - Binf(i,j);
            C(i,j) = J(i,j) - Binf(i,j);
            tmap(i,j) = max([0.001 B(i,j)/C(i,j)]);
            if tmap(i,j) >=1
                tmap(i,j) = 0.988;
            end
        end
    end
    %  tmap = (B./C);
    %tmap = B./C;

    %tmap = 1- tmap;
    %max(max(tmap))
    %tmap = tmap./max(max(tmap));
    %c = tmap(posx,posy);
    %figure
    %imshow(tmap);
    tmap = - log(tmap);
    %figure
    %imshow(tmap);
    %dmax = max(max(tmap));


    %daltMap = tmap./dmax;
    %c = 
    %cmap = tmap./distance;
    
    %imshow(daltMap);
    

<<<<<<< HEAD
    %figure;
    %imshow(tmap);
=======
        figure;
    imshow(tmap);
>>>>>>> fd31db4c6c653a74b8a452ac63522d4f505aea68
    
    %figure
    %imshow(cmap);
   
    
    %t = sum(sum(cmap))/(size(cmap,1)*size(cmap,2));
    
    %c = max(max(cmap));
    
    %figure
    %imshow(tmap);

    
    
end