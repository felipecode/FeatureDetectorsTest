function idt = estimateIDT(J,I,Binf,validR,validG,validB)

    % Set distance of the scene, for our experiment is always 0.58
    distance = 0.58;
    
    % Take just the luminance
    %[H S I ] = rgb2hsv(I);
    %[H S J ] = rgb2hsv(J);
    %Binf = double(rgb2gray(Binf))/255;    
    Binf = double(Binf)/255;
    J = double(J)/255;
    I = double(I)/255;
    Binf = imresize(Binf, size(I(:,:,1)));
    dmap = calculateDmap(J,distance);
    
    % Estimate turbid noise


        
    
    cR = estimateC(J(:,:,1),I(:,:,1),dmap,validR(:,1),validR(:,2),Binf(:,:,1));
    fprintf('cR = %f',cR);
    cG = estimateC(J(:,:,2),I(:,:,2),dmap,validG(:,1),validG(:,2),Binf(:,:,2));
    fprintf('cG = %f',cG);
    cB = estimateC(J(:,:,3),I(:,:,3),dmap,validB(:,1),validB(:,2),Binf(:,:,3));
    fprintf('cB = %f',cB);
    
    

    % Binf estimation for now is just the max;
 
    
    
    averageCossine = 0.75;
    % calculate the image with just the turbid noise
    
    TR = calculateTurbidImage(J(:,:,1),cR,dmap,averageCossine,Binf(:,:,1)); 
    averageCossine = 0.714;
    TG = calculateTurbidImage(J(:,:,2),cG,dmap,averageCossine,Binf(:,:,2)); 
    
    averageCossine = 0.681;
    TB = calculateTurbidImage(J(:,:,3),cB,dmap,averageCossine,Binf(:,:,3)); 
    
    
    T(:,:,1) = TR;
    T(:,:,2) = TG;
    T(:,:,3) = TB;
    
    %idtR = 100 * floor((1- ssim_index(J(:,:,1)/max(max(J(:,:,1))),TR))*10000)/10000
    
    %idtG = 100 * floor((1- ssim_index(J(:,:,2)/max(max(J(:,:,2))),TG))*10000)/10000
    %idtB = 100 * floor((1- ssim_index(J(:,:,3)/max(max(J(:,:,3))),TB))*10000)/10000
    
    idtR = calculateError(J(:,:,1),TR,'MSE')
    idtG = calculateError(J(:,:,2),TG,'MSE')
    idtB = calculateError(J(:,:,3),TB,'MSE')
    
    
    idt = (idtR + idtG + idtB)/2;
    
end
