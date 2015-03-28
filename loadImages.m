function imvec = loadImages(path)

<<<<<<< HEAD

    pngFiles = dir(strcat(path,'/*.jpg'));
=======
    cd(path)
    pngFiles = dir('*.jpg');
>>>>>>> fd31db4c6c653a74b8a452ac63522d4f505aea68
    %imvec = zeros(size()
    imvec{length(pngFiles)} = {};
    for k = 1:length(pngFiles)
        filename = pngFiles(k).name;
        I = imread(strcat(path,'/',filename));
        I = rgb2gray(I);
        sigma=5.5;
        window=7;
        H = fspecial('gaussian',[round(window*sigma), round(window*sigma)],sigma);
        %Ilarge = uint8(zeros(size(I,1)+1,size(I,2)+2));
        
        %Ilarge(1:size(I,1),1:size(I,2))  = I;
        
        %Ilarge = clahs(Ilarge,7,4,'cliplimit',3,'PreserveMaxMin');
        %I = Ilarge(1:size(I,1),1:size(I,2));
        %figure; imshow(I);
        GaussBlur = imfilter(I,H,'same');
        %figure; imshow(GaussBlur);
        imvec{k} = GaussBlur;

    end

end


