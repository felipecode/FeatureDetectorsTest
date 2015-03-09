function imvec=kazeSS(im,nOctaves,imagesPerOctave)

    [mi, ni ]= size(im);
    
    imvec{nOctaves*imagesPerOctave} = 1;

    s = imagesPerOctave;
    imagesPerOctave = s+3;
    sigma = 1.2;
    time =0;
    prev = im;     
    
    smoothed= vl_imsmooth(im,sigma);
    %imshow(imvec{(i-1)*imagesPerOctave +j});
    [Gmag, Gdir] = imgradient(smoothed,'sobel');
    %imshow(Gmag);
    sortedmag = sort(Gmag);
    size_gmag = size(Gmag);
    total_size = size_gmag(1) * size_gmag(2);
    k = floor(total_size * 0.3);
    k = sortedmag(k);
        
            
    for i=1:nOctaves

        
        for j=1:imagesPerOctave
             % imvec{(i-1)*imagesPerOctave +j}


            size_im = size(im);
            pos = 1;
            
            image = imvec{(i-1)*imagesPerOctave + j};
            
            c = zeros(size(im));
            
            for p=1:size_im(1)
                for l=1:size_im(2)
                    c(p,l) =exp(-(Gmag(p,l)^2)/k^2);
                end
            end

            
           % image = imvec{(i-1)*imagesPerOctave + j};
%             c = zeros(size(im));
%             for p=1:size_im(1)
%                 for l=1:size_im(2)
%                     if abs(Gmag(p,l)) > 0                  
%                         c(p,l) = 1 - exp(-3.315/((abs(Gmag(p,l))/k)^8));
%                     else
%                         c(p,l) = 1;
%                     end
% 
%                 end
%                 
%             end
            
            % The positoon of the current kaze scale space.
            change = (ones(size(im))./(im - 0.1*c.*prev));
           
            %change = change./max(max(change));
            imvec{(i-1)*imagesPerOctave +j} = change.*prev ; 
            time = time +0.8;
            %imshow(im_cp);
            %imresize(imvec{(i-1)*imagesPerOctave +j},[mi ni]);
            imwrite(imvec{(i-1)*imagesPerOctave +j},sprintf('EvaluateScaleSpace/Images/%.2f_kaze.png',time));
            
            prev = imvec{(i-1)*imagesPerOctave +j};
                     
        end
        % Takes the image that has twiece the initial value ( Image number
        % 2)
        

    end


end