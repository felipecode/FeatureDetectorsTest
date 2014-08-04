	addpath ../Turbidity' Measure'/

    %graylast = imvec{6};
    %gauss = fspecial('gaussian',10,2);
    %graylast = imfilter(graylast,gauss);
    %[r c] = Aest(graylast,15);
   
    % Good points for the white box case

    %c = [361 462 129 375 759 65 711 175 453]
    %r = [284 200 282 69 478 193 335 434 510]

    % Good points for the water box case
   % 
   
%     for i=1:14
%         croped = imvec{i};
%         imvec{i} = croped(1:300,:,:); 
%         imwrite(imvec{i},strcat('Images/ExpC2/Cortadas/',int2str(i-1)),'png')
%         
%     end
%     
    [r c ] = generateValid(imvec); 
    vector = [];
    vector(:,1) =r;
    vector(:,2) =c;

    
    turbidant = turbidityEst2(imvec{1},imvec{2});
    turbid = turbidityEst2(imvec{1},imvec{3});
    tImage = turbidant./turbid;

    validPos =  uniRan(tImage,vector);
    turbid = turbidant;
    
    for i=4:11
        
        showPos(imvec{1},validPos(:,1),validPos(:,2));        
        turbid = turbidityEst2(imvec{1},imvec{i});
        tImage = turbidant./turbid;
        figure;
        CS = uniRan(tImage,vector);
        
        validPos = intersect(validPos,CS,'rows');
        

        %size(tImage)
        %size(imvec{i})
        turbid = turbidant;
        %x=[x,mean(CS)];
        imshow(tImage);
    end
    
    showPos(imvec{1},validPos(:,1),validPos(:,2));
    x = [0];
    SDIvec = 0;
    for i=2:11
        SDIvec = [ SDIvec ,100 * floor((1- ssim_index(rgb2gray(imvec{1}),rgb2gray(imvec{i})))*10000)/10000];        
         x= [ x, turbidityEst(imvec{1},imvec{i},validPos(:,1),validPos(:,2))];
         
    end
    
    rmpath ../Turbidity' Measure'/