

function repeatabilityRotation(detector,imvec,original,homoVec,N,delta,epsilon)
    features0 = geraFeatures(original,detector,N,delta);  % The first extracted features
 
     
    repVec = zeros(size(imvec,2),1);  % the vector containing the number of repeated features

        
    repVec(1) = N;
    
    
    
    size(features0)
    

    for i=2:length(imvec)

         features= geraFeatures(imvec{i-1},detector,N,delta);  % the subsequent image features
         size(features)
         repVec
         if ~isempty(features)
             %validFeatures = intersect(features,region,'rows'); 
            
             repVec(i) = countFeatures(applyRotation(original,features0,homoVec{i-1}),features,epsilon,size(imvec{i-1}));

            % repVec(i) = countFeatures(applyRotation(imvec{i},features0,homoVec{i}),features,epsilon,size(rgb2gray(imvec{i})));

         else
             repVec(i) = 0;
         end
         %repVec
    end
    
    
end