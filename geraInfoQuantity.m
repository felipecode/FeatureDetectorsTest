% Just calculate the quanity of information for each turbidity level
%

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
        
            
         load('vecphoto1bil');
         im = imvec{i};
         Vnorm = computeVnorm(im);
         clear imvec;
         %im = imread(sprintf('Images/Photo1/Cortadas/%d.jpg',i));
         global MemoPoints;
         MemoPoints = -1*ones(size(im,1),size(im,2));
         
     
         features= geraFeatures(im,'harris',N,delta);  % the subsequent image features
         infoQuantityP1(1) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'hessian',N,delta);  % the subsequent image features
         infoQuantityP1(2) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'laplacian',N,delta);  % the subsequent image features
         infoQuantityP1(3) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'hessianlap',N,delta);  % the subsequent image features
         infoQuantityP1(4) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'harrislap',N,delta);  % the subsequent image features
         infoQuantityP1(5) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'sift',N,delta);  % the subsequent image features
         infoQuantityP1(6) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'surf',N,delta);  % the subsequent image features
         infoQuantityP1(7) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'kazeg1',N,delta);  % the subsequent image features
         infoQuantityP1(8) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'kazeg2',N,delta);  % the subsequent image features
         infoQuantityP1(9) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         features= geraFeatures(im,'kazeg3',N,delta);  % the subsequent image features
         infoQuantityP1(10) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',1,i),'MemoPoints');
         
         
         
         load('vecphoto2bil');
         im = imvec{i};
         clear imvec;
         MemoPoints = -1*ones(size(im,1),size(im,2));
         features= geraFeatures(im,'harris',N,delta);  % the subsequent image features
         infoQuantityP2(1) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'hessian',N,delta);  % the subsequent image features
         infoQuantityP2(2) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'laplacian',N,delta);  % the subsequent image features
         infoQuantityP2(3) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'hessianlap',N,delta);  % the subsequent image features
         infoQuantityP2(4) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'harrislap',N,delta);  % the subsequent image features
         infoQuantityP2(5) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'sift',N,delta);  % the subsequent image features
         infoQuantityP2(6) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'surf',N,delta);  % the subsequent image features
         infoQuantityP2(7) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');         
         features= geraFeatures(im,'kazeg1',N,delta);  % the subsequent image features
         infoQuantityP2(8) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'kazeg2',N,delta);  % the subsequent image features
         infoQuantityP2(9) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         features= geraFeatures(im,'kazeg3',N,delta);  % the subsequent image features
         infoQuantityP2(10) = computeEntropy(features,Vnorm);
         save(sprintf('MemoPoints%d_%d',2,i),'MemoPoints');
         
         
         
         load('vecphoto3bil');
         im = imvec{i};
         clear imvec;
         
         MemoPoints = -1*ones(size(im,1),size(im,2));
         features= geraFeatures(im,'harris',N,delta);  % the subsequent image features
         infoQuantityP3(1) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'hessian',N,delta);  % the subsequent image features
         infoQuantityP3(2) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'laplacian',N,delta);  % the subsequent image features
         infoQuantityP3(3) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'hessianlap',N,delta);  % the subsequent image features
         infoQuantityP3(4) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'harrislap',N,delta);  % the subsequent image features
         infoQuantityP3(5) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'sift',N,delta);  % the subsequent image features
         infoQuantityP3(6) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'surf',N,delta);  % the subsequent image features
         infoQuantityP3(7) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'kazeg1',N,delta);  % the subsequent image features
         infoQuantityP3(8) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'kazeg2',N,delta);  % the subsequent image features
         infoQuantityP3(9) = computeEntropy(features,Vnorm);
         features= geraFeatures(im,'kazeg3',N,delta);  % the subsequent image features
         infoQuantityP3(10) = computeEntropy(features,Vnorm);
         
         infoMat(:,i) = (infoQuantityP1 + infoQuantityP2 + infoQuantityP3)/3;
         
         
         
%        validFeatures = intersect(features,region,'rows'); 
%        repVec(i) = countFeatures(validFeatures0,validFeatures,epsilon,size(rgb2gray(imvec{i})));

    end
    
end
