function infoMat = geraInfoQuantity(N,delta,i_0,i_f)




    % Lets see if it works to load all the vectors first


    % Harris
    % Hessian
    % Laplacian
    % Hessian-Laplace
    % Harris-Laplace
    % Sift
    % Surf



    % Kaze g1
    % Kaze g2
    % Kaze g3





    infoQuantityP1 = zeros(10,1);
    infoQuantityP2 = zeros(10,1);
    infoQuantityP3 = zeros(10,1);

    infoMat = zeros(10,20);
    for i=i_0:i_f



         calcturbcurve;
         y1 = polyval(p,x);
         turb = exp(y1/11);

         load('vecphoto1bil');
         im = imvec{i};
         Vnorm = computeVnorm(im);
         
         VnormCon = uint32(zeros(size(Vnorm,1),size(Vnorm,2)));
         Vnorm =int32(Vnorm);
         
         VnormUint = uint32(Vnorm + 128);
         %for k=1:size(im,1)
       %      for j=1:size(im,2)
          VnormCon=VnormUint(:,:,4).*(2^24)+VnormUint(:,:,3).*(2^16)+VnormUint(:,:,2).*(2^8) + VnormUint(:,:,1);
                 %VnormCon(k,j)
      %       end
     %    end
         VnormConDouble = double(VnormCon);
         
         imen = entropyfilt(VnormConDouble./max(max(VnormConDouble)));
         
         figure; imshow(mat2gray(imen));
         
         clear imvec;
         %im = imread(sprintf('Images/Photo1/Cortadas/%d.jpg',i));
       
         features= geraFeatures(im,'harris',N,delta);  % the subsequent image features
          infoQuantityP1(1) = countEntropy(features,imen);

         features= geraFeatures(im,'hessian',N,delta);  % the subsequent image features
          infoQuantityP1(2) = countEntropy(features,imen);
        
         features= geraFeatures(im,'laplacian',N,delta);  % the subsequent image features
         infoQuantityP1(3) = countEntropy(features,imen);
        
         features= geraFeatures(im,'hessianlap',N,delta);  % the subsequent image features
         infoQuantityP1(4) = countEntropy(features,imen);
        
         features= geraFeatures(im,'harrislap',N,delta);  % the subsequent image features
         infoQuantityP1(5) = countEntropy(features,imen);
        
         features= geraFeatures(im,'sift',N,delta);  % the subsequent image features
         infoQuantityP1(6) = countEntropy(features,imen);
        
         features= geraFeatures(im,'surf',N,delta);  % the subsequent image features
         infoQuantityP1(7) = countEntropy(features,imen);
        
         features= geraFeatures(im,'kazeg1',N,delta,turb(i));  % the subsequent image features
         infoQuantityP1(8) = countEntropy(features,imen);
        
         features= geraFeatures(im,'kazeg2',N,delta,turb(i));  % the subsequent image features
         infoQuantityP1(9) = countEntropy(features,imen);
        
         features= geraFeatures(im,'kazeg3',N,delta,turb(i));  % the subsequent image features
         infoQuantityP1(10) = countEntropy(features,imen);
        



         load('vecphoto2bil');
          im = imvec{i};
         Vnorm = computeVnorm(im);
         
         VnormCon = uint32(zeros(size(Vnorm,1),size(Vnorm,2)));
         Vnorm =int32(Vnorm);
         
         VnormUint = uint32(Vnorm + 128);
         %for k=1:size(im,1)
       %      for j=1:size(im,2)
          VnormCon=VnormUint(:,:,4).*(2^24)+VnormUint(:,:,3).*(2^16)+VnormUint(:,:,2).*(2^8) + VnormUint(:,:,1);
                 %VnormCon(k,j)
      %       end
     %    end
         VnormConDouble = double(VnormCon);
         
         imen = entropyfilt(VnormConDouble./max(max(VnormConDouble)));
         
         figure; imshow(mat2gray(imen));
         
         clear imvec;

         features= geraFeatures(im,'harris',N,delta);  % the subsequent image features
         infoQuantityP2(1) = countEntropy(features,imen);
         
         features= geraFeatures(im,'hessian',N,delta);  % the subsequent image features
         infoQuantityP2(2) = countEntropy(features,imen);
         
         features= geraFeatures(im,'laplacian',N,delta);  % the subsequent image features
         infoQuantityP2(3) = countEntropy(features,imen);
         
         features= geraFeatures(im,'hessianlap',N,delta);  % the subsequent image features
         infoQuantityP2(4) = countEntropy(features,imen);
         
         features= geraFeatures(im,'harrislap',N,delta);  % the subsequent image features
         infoQuantityP2(5) = countEntropy(features,imen);
         
         features= geraFeatures(im,'sift',N,delta);  % the subsequent image features
         infoQuantityP2(6) = countEntropy(features,imen);
         
         infoQuantityP2(7) = countEntropy(features,imen);
         
         features= geraFeatures(im,'kazeg1',N,delta,turb(i));  % the subsequent image features
         infoQuantityP2(8) = countEntropy(features,imen);
         
         features= geraFeatures(im,'kazeg2',N,delta,turb(i));  % the subsequent image features
         infoQuantityP2(9) = countEntropy(features,imen);
         
         features= geraFeatures(im,'kazeg3',N,delta,turb(i));  % the subsequent image features
         infoQuantityP2(10) = countEntropy(features,imen);
         



         load('vecphoto3bil');
         im = imvec{i};
         Vnorm = computeVnorm(im);
         
         VnormCon = uint32(zeros(size(Vnorm,1),size(Vnorm,2)));
         Vnorm =int32(Vnorm);
         
         VnormUint = uint32(Vnorm + 128);
         %for k=1:size(im,1)
       %      for j=1:size(im,2)
          VnormCon=VnormUint(:,:,4).*(2^24)+VnormUint(:,:,3).*(2^16)+VnormUint(:,:,2).*(2^8) + VnormUint(:,:,1);
                 %VnormCon(k,j)
      %       end
     %    end
         VnormConDouble = double(VnormCon);
         
         imen = entropyfilt(VnormConDouble./max(max(VnormConDouble)));
         
         figure; imshow(mat2gray(imen));


        features= geraFeatures(im,'harris',N,delta);  % the subsequent image features
         infoQuantityP3(1) = countEntropy(features,imen);
         
         features= geraFeatures(im,'hessian',N,delta);  % the subsequent image features
         infoQuantityP3(2) = countEntropy(features,imen);
         
         features= geraFeatures(im,'laplacian',N,delta);  % the subsequent image features
         infoQuantityP3(3) = countEntropy(features,imen);
         
         features= geraFeatures(im,'hessianlap',N,delta);  % the subsequent image features
         infoQuantityP3(4) = countEntropy(features,imen);
         
         features= geraFeatures(im,'harrislap',N,delta);  % the subsequent image features
         infoQuantityP3(5) = countEntropy(features,imen);
         
         features= geraFeatures(im,'sift',N,delta);  % the subsequent image features
         infoQuantityP3(6) = countEntropy(features,imen);
         
         features= geraFeatures(im,'surf',N,delta);  % the subsequent image features
         infoQuantityP3(7) = countEntropy(features,imen);
         
         features= geraFeatures(im,'kazeg1',N,delta,turb(i));  % the subsequent image features
         infoQuantityP3(8) = countEntropy(features,imen);
         
         features= geraFeatures(im,'kazeg2',N,delta,turb(i));  % the subsequent image features
         infoQuantityP3(9) = countEntropy(features,imen);
         
         features= geraFeatures(im,'kazeg3',N,delta,turb(i));  % the subsequent image features
         infoQuantityP3(10) = countEntropy(features,imen);
         

         infoMat(:,i) = (infoQuantityP1 + infoQuantityP2 + infoQuantityP3)/3;

         infoQuantity = (infoQuantityP1 + infoQuantityP2 + infoQuantityP3)/3;
         save(sprintf('infoQuantity%d',i),'infoQuantity');
        
%        validFeatures = intersect(features,region,'rows');
%        repVec(i) = countFeatures(validFeatures0,validFeatures,epsilon,size(rgb2gray(imvec{i})));

    end

end

