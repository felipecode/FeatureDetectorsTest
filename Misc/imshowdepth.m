function imshowdepth(im)

    depth = im;
    depth = double(depth);

    surf(depth, im, 'FaceColor', 'texturemap', 'EdgeColor', 'none' )
