% 

    
     binfvec = loadImages('Images/Black/Cortadas');
     imvec = loadImages('Images/Photo1/Cortadas');
%     [r c ] = generateValid(imvec,binfvec,1); 
%      validPosR = [];
%      validPosR(:,1) =r;
%      validPosR(:,2) =c;
%          [r c ] = generateValid(imvec,binfvec,2); 
%      validPosG = [];
%      validPosG(:,1) =r;
%      validPosG(:,2) =c;
%          [r c ] = generateValid(imvec,binfvec,3); 
%      validPosB = [];
%      validPosB(:,1) =r;
%      validPosB(:,2) =c;

   % showPos(imvec{1},validPos(:,1),validPos(:,2));
    
   % turbidant = turbidityEst2(imvec{1},imvec{7},binfvec{7});
   % turbid = turbidityEst2(imvec{1},imvec{8},binfvec{8});
   % tImage = turbidant./turbid;

  %  validPos =  uniRan(tImage,vector);
  % validPos = vector;
  

    x = [0];
    SDIvec = 0;
    Iim= imvec{1};
    distance = 0.58;
     dmapR = calculateDmap(Iim(:,:,1),distance); 
    [I, spImage] = spAverageImageGray(imvec{1},164);
     [dmap] = spAverageImageWSpImageGray(dmapR,spImage);
    for i=2:length(imvec)
        %SDIvec = [ SDIvec ,100 * floor((1- ssim_index(rgb2gray(imvec{1}),rgb2gray(imvec{i})))*10000)/10000];  
        
        Binf = binfvec{i};
        BinfR= imresize(Binf, size(Iim));
        %BinfR(:,:,2) = imresize(Binf(:,:,2), size(Iim(:,:,2)));
        %BinfR(:,:,3) = imresize(Binf(:,:,3), size(Iim(:,:,3)));
        [Binf  ] = spAverageImageWSpImageGray(BinfR,spImage);
        
       
        [J] = spAverageImageWSpImageGray(imvec{i}, spImage);
        
        %[J, spImage] = spAverageImage(imvec{i} ,96);
         x= [ x, estimateIDT(J,I,Binf,dmap,i,spImage)];

         
    end
    