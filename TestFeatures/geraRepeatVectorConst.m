% Just calculate the Repeatability region over a region that is constant.
%

function repVec = geraRepeatVectorConst(detector,imvec,N,delta,epsilon,region)

       
    features0 = geraFeatures(imvec{1},detector,N,delta);  % The first extracted features
    validFeatures0 = intersect(features0,region,'rows');  % the first intersected valid features with a constant region
     
    repVec = zeros(size(imvec,2),1);  % the vector containing the number of repeated features

        
    repVec(1) = 1;
    
    for i=2:length(imvec)

         features= geraFeatures(imvec{i},detector,N,delta);  % the subsequent image features
         if ~isempty(features)
             validFeatures = intersect(features,region,'rows'); 
             repVec(i) = countFeatures(validFeatures0,validFeatures,epsilon,size(rgb2gray(imvec{i})));
         else
             repVec(i) = 0;
         end
         
    end
    
end
