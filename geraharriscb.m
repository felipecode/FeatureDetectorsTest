
harriscolorBtest1 = geraFeatures(im1,'harriscolorb');
harriscolorBtest2 = geraFeatures(im2,'harriscolorb');
harriscolorBtest3 = geraFeatures(im3,'harriscolorb');
harriscolorBtest4 = geraFeatures(im4,'harriscolorb');
harriscolorBtest5 = geraFeatures(im5,'harriscolorb');
harriscolorBVec = [size(harriscolorBtest1,1)];
harriscolorBVec = [harriscolorBVec, countFeatures(harriscolorBtest1,harriscolorBtest2,10,size(rgb2gray(im1)))];
harriscolorBVec = [harriscolorBVec, countFeatures(harriscolorBtest1,harriscolorBtest3,10,size(rgb2gray(im1)))];
harriscolorBVec = [harriscolorBVec, countFeatures(harriscolorBtest1,harriscolorBtest4,10,size(rgb2gray(im1)))];
harriscolorBVec = [harriscolorBVec, countFeatures(harriscolorBtest1,harriscolorBtest5,10,size(rgb2gray(im1)))];
save();

 harriscolorBtest1L = geraFeatures(im1l,'harriscolorb');
 harriscolorBtest2L = geraFeatures(im2l,'harriscolorb');
 harriscolorBtest3L = geraFeatures(im3l,'harriscolorb');
 harriscolorBtest4L = geraFeatures(im4l,'harriscolorb');
 harriscolorBtest5L = geraFeatures(im5l,'harriscolorb');
 
harriscolorBVecL = [size(harriscolorBtest1L,1)];
harriscolorBVecL = [harriscolorBVecL, countFeatures(harriscolorBtest1L,harriscolorBtest2L,10,size(rgb2gray(im1l)))];
harriscolorBVecL = [harriscolorBVecL, countFeatures(harriscolorBtest1L,harriscolorBtest3L,10,size(rgb2gray(im1l)))];
harriscolorBVecL = [harriscolorBVecL, countFeatures(harriscolorBtest1L,harriscolorBtest4L,10,size(rgb2gray(im1l)))];
harriscolorBVecL = [harriscolorBVecL, countFeatures(harriscolorBtest1L,harriscolorBtest5L,10,size(rgb2gray(im1l)))];

save();
