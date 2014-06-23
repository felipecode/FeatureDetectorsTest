function imvec = loadImages(path)

    cd(path)
    pngFiles = dir('*.png');
    %imvec = zeros(size()
    imvec{length(pngFiles)} = {};
    for k = 1:length(pngFiles)
        filename = pngFiles(k).name;
        I = imread(filename);
        imvec{k} = I;

    end
    cd ../../../
end


