harristest1 = geraFeatures(im1,'harris');
harristest2 = geraFeatures(im2,'harris');
harristest3 = geraFeatures(im3,'harris');
harristest4 = geraFeatures(im4,'harris');
harristest5 = geraFeatures(im5,'harris');
harrisVec = [size(harristest1,1)];
harrisVec = [harrisVec, countFeatures(harristest1,harristest2,10,size(rgb2gray(im1)))];
harrisVec = [harrisVec, countFeatures(harristest1,harristest3,10,size(rgb2gray(im1)))];
harrisVec = [harrisVec, countFeatures(harristest1,harristest4,10,size(rgb2gray(im1)))];
harrisVec = [harrisVec, countFeatures(harristest1,harristest5,10,size(rgb2gray(im1)))];
save()
harristest1L = geraFeatures(im1l,'harris');
harristest2L = geraFeatures(im2l,'harris');
harristest3L = geraFeatures(im3l,'harris');
harristest4L = geraFeatures(im4l,'harris');
harristest5L = geraFeatures(im5l,'harris');
harrisVecL = [size(harristest1L,1)];
harrisVecL = [harrisVecL, countFeatures(harristest1L,harristest2L,10,size(rgb2gray(im1l)))];
harrisVecL = [harrisVecL, countFeatures(harristest1L,harristest3L,10,size(rgb2gray(im1l)))];
harrisVecL = [harrisVecL, countFeatures(harristest1L,harristest4L,10,size(rgb2gray(im1l)))];
harrisVecL = [harrisVecL, countFeatures(harristest1L,harristest5L,10,size(rgb2gray(im1l)))];
save()