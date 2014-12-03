function imSmooth = poissonSmooth(im,sigma)

sizeK = round(3*sigma);
kernel = poissonKernel([ sizeK sizeK],sigma);

imSmooth = conv2(im,kernel,'same');




end