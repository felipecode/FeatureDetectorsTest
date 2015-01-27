function tmap=turbidityEst2(J,I,Binf)

  %[A,I] = double(max(max(I)))./255;
    
    


    
    %gauss = fspecial('gaussian',12);
    %J = imfilter(J,gauss);
    %I = imfilter(I,gauss);
 
   % [posx posy] = Aest(I,15);
    
    
    
    [H S I ] = rgb2hsv(I);
    [H S J ] = rgb2hsv(J);
    [H S Binf ] = rgb2hsv(Binf);    
   
    
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
            if tmap(i,j) == 1
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
    

        figure;
    imshow(tmap);
    
    %figure
    %imshow(cmap);
   
    
    %t = sum(sum(cmap))/(size(cmap,1)*size(cmap,2));
    
    %c = max(max(cmap));
    
    %figure
    %imshow(tmap);

    
    
end