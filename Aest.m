function [r c ] = Aest(im,patch_size) 

    if (nargin <1)
        error('Plz set input data');
    end
    if (nargin < 2)
        % seting default removal amount to 95 percent
        removal_amount = 0.95;
    end
    if (nargin < 3)
        % set default patch size to 15
        patch_size = 15
    end

    %% Some initial setup
    fprintf('Removing Water Haze \n');

    %im = imcrop(im)
    im = double(im)./255;
    dims = size(im);
    pixels = dims(1)*dims(2);

    %% Compute the dark channel (non-normalized)

    [dark] = darkchannel(im, patch_size);



    %% Calculate atmospheric light using dark channel

    % fraction of pixels to consider for the atmospheric light calculation
    count = ceil(.01*pixels);

    [~, ix] = sort(reshape(dark, 1, []), 'descend'); % create a vector ix with the dark channel ordered
    ix = ix(1:count);
    flatimage = reshape(im, [], 3);

    newimage = im;
    for index = ix
        [ind1,ind2] = ind2sub(size(dark),index);
        newimage(ind1,ind2,:) = [1 1 0];
    end

    %figure;
    %imshow(newimage);
    r = ind1;
    c = ind2;

end