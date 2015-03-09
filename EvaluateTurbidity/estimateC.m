function c =estimateC(J,I,dmap,r,c,Binf)


    % TODO: add the forward scattering to this equation
   
    

    %4 pixels por mm 4000 per meter. It goes to the exponential as ln of
    %4000
    size(I)
    size(J)
    % Operate the equation

    %Ed = J.*exp(-distance*c_mat);
    
    %Jf = conv2(Ed,psf(10,averageCossine,c),'same');
    
    
    %xi = 1203;
    %xf = xi+50;
    
    %yi= 3409;
    %yf = yi+50;
    
%     for i=1:size(I,1)
%         for j=1:size(J,2)
%             B = I(i,j) - Binf(i,j);
%             C = J(i,j) - Binf(i,j);
%             tmap(i,j) = B/C;
%         end
%     end

    for i=1:size(I,1)
        for j=1:size(I,2)
            B = I(i,j) - Binf(i,j);
            C = J(i,j) - Binf(i,j);
            tmap(i-xi+1,j-yi+1) = B/C;
            tmap(i-xi+1,j-yi+1) = -log(tmap(i-xi+1,j-yi+1));
            tmap(i-xi+1,j-yi+1) =  tmap(i-xi+1,j-yi+1)*8.2940496401;
            tmap(i-xi+1,j-yi+1) =  tmap(i-xi+1,j-yi+1)*dmap(i,j);
        end
    end
    %figure;
    %imwrite(tmap
    %imshowdepth(tmap);
    %  tmap = (B./C);
    %tmap = B./C;
    % Multiply by the distance.

    %tmap = 1- tmap;
    %max(max(tmap))
    %tmap = tmap./max(max(tmap));
    %c = tmap(posx,posy);
    %figure
    %imshow(tmap);
    %tmap = - log(tmap);
    %tmap= tmap*8.2940496401;
    %tmap = tmap./dmap;
    %figure
    %imshow(tmap);
    %dmax = max(max(tmap));


    %daltMap = tmap./dmax;
    %c = 
    %cmap = tmap./distance;
    
    %imshow(daltMap);
    

    
    %figure
    %imshow(cmap);
   
    
    %t = sum(sum(cmap))/(size(cmap,1)*size(cmap,2));

    
    % vectorize tmap
    %turb=0;
    %for i=1:length(r)

     %  turb = turb + tmap(r(i),c(i));

    %end
    
    c = sum(sum(tmap))/(size(tmap,1)*size(tmap,2));
    %c = turb/length(r);
end
