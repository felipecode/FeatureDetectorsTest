
function repVec = geraRepeatVector(detector,imvec,N,delta,epsilon)

       
    features = geraFeatures(imvec{1},detector,N,delta);  % The first extracted features
    
    repVec = zeros(size(imvec,2),1);  % the vector containing the number of repeated features

        
    for i=1:length(imvec)

         nFeatures= geraFeatures(imvec{i},detector,N,delta);  % the subsequent image features
         repVec(i) = countFeatures(features,nFeatures,epsilon,size(rgb2gray(imvec{i})));

    end
    
end