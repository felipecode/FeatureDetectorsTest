% 

    
    binfvec = loadImages('Images/Black/Cortadas');
    [r c ] = generateValid(imvec,binfvec,1); 
     validPosR = [];
     validPosR(:,1) =r;
     validPosR(:,2) =c;
         [r c ] = generateValid(imvec,binfvec,2); 
     validPosG = [];
     validPosG(:,1) =r;
     validPosG(:,2) =c;
         [r c ] = generateValid(imvec,binfvec,3); 
     validPosB = [];
     validPosB(:,1) =r;
     validPosB(:,2) =c;

   % showPos(imvec{1},validPos(:,1),validPos(:,2));
    
   % turbidant = turbidityEst2(imvec{1},imvec{7},binfvec{7});
   % turbid = turbidityEst2(imvec{1},imvec{8},binfvec{8});
   % tImage = turbidant./turbid;

  %  validPos =  uniRan(tImage,vector);
  % validPos = vector;
  

    %x = [0];
    SDIvec = 0;
    for i=2:20
        SDIvec = [ SDIvec ,100 * floor((1- ssim_index(rgb2gray(imvec{1}),rgb2gray(imvec{i})))*10000)/10000];        
         %x= [ x, estimateIDT(imvec{1},imvec{i},binfvec{i},validPosR,validPosG,validPosB)];

         
    end
    