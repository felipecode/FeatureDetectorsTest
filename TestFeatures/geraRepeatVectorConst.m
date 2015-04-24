% Just calculate the Repeatability region over a region that is constant.
%

function repVec = geraRepeatVectorConst(detector,imvec,N,delta,epsilon,turbVec)

       


    features0 = geraFeatures(imvec{1},detector,N,delta,1);  % The first extracted features
    %validFeatures0 = intersect(features0,region,'rows');  % the first intersected valid features with a constant region
     
    repVec = zeros(size(imvec,2),1);  % the vector containing the number of repeated features

        
    repVec(1) = N;
    
    for i=2:length(imvec)
        turbVec(i)
         features= geraFeatures(imvec{i},detector,N,delta,turbVec(i-1));  % the subsequent image features
         if ~isempty(features)
             %validFeatures = intersect(features,region,'rows'); 

            % repVec(i) = countFeatures(features0,features,epsilon,size(imvec{i}));

             repVec(i) = countFeatures(features0,features,epsilon,size(imvec{i}));

         else
             repVec(i) = 0;
         end
         repVec
    end
    
end
