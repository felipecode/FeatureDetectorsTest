function imvec = loadImages(path)

    cd(path)
    pngFiles = dir('*.jpg');
    %imvec = zeros(size()
    imvec{length(pngFiles)} = {};
    for k = 1:length(pngFiles)
        filename = pngFiles(k).name;
        I = imread(filename);
        imvec{k} = I;

    end
    cd ../../../
end


