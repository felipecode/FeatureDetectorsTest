function imvec=siftSS(im,nOctaves,imagesPerOctave)

    [mi, ni ]= size(im);
    
    imvec{nOctaves*imagesPerOctave} = 1;

    s = imagesPerOctave -3;

    sigma = 1.2;

    
     
    currentSigma = sigma;
    
    for i=1:nOctaves
       % currentSigma = sigma; 
        for j=1:imagesPerOctave
            
            imvec{(i-1)*imagesPerOctave +j} = vl_imsmooth(im,currentSigma);
            imwrite(imresize(imvec{(i-1)*imagesPerOctave +j},[mi ni]),sprintf('EvaluateScaleSpace/Images/%.2f_sift.png',currentSigma));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          %.2f_sift.png',currentSigma*2^(i)));
            %currentSigma =  2^(1/s)*currentSigma;
            currentSigma =  currentSigma + 0.8;
            
        end
        % Takes the image that has twiece the initial value ( Image number
        % 2)
        %im = imresize(imvec{(i-1)*imagesPerOctave +imagesPerOctave},0.5,'nearest');
    
        currentSigma = currentSigma +0.2;
        currentSigma = currentSigma*2;
    end


end