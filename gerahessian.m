hessiantest1 = geraFeatures(im1,'hessian');
hessiantest2 = geraFeatures(im2,'hessian');
hessiantest3 = geraFeatures(im3,'hessian');
hessiantest4 = geraFeatures(im4,'hessian');
hessiantest5 = geraFeatures(im5,'hessian');
hessianVec = [size(hessiantest1,1)];
hessianVec = [hessianVec, countFeatures(hessiantest1,hessiantest2,10,size(rgb2gray(im1)))];
hessianVec = [hessianVec, countFeatures(hessiantest1,hessiantest3,10,size(rgb2gray(im1)))];
hessianVec = [hessianVec, countFeatures(hessiantest1,hessiantest4,10,size(rgb2gray(im1)))];
hessianVec = [hessianVec, countFeatures(hessiantest1,hessiantest5,10,size(rgb2gray(im1)))];
save()
hessiantest1L = geraFeatures(im1l,'hessian');
hessiantest2L = geraFeatures(im2l,'hessian');
hessiantest3L = geraFeatures(im3l,'hessian');
hessiantest4L = geraFeatures(im4l,'hessian');
hessiantest5L = geraFeatures(im5l,'hessian');
hessianVecL = [size(hessiantest1L,1)];
hessianVecL = [hessianVecL, countFeatures(hessiantest1L,hessiantest2L,10,size(rgb2gray(im1l)))];
hessianVecL = [hessianVecL, countFeatures(hessiantest1L,hessiantest3L,10,size(rgb2gray(im1l)))];
hessianVecL = [hessianVecL, countFeatures(hessiantest1L,hessiantest4L,10,size(rgb2gray(im1l)))];
hessianVecL = [hessianVecL, countFeatures(hessiantest1L,hessiantest5L,10,size(rgb2gray(im1l)))];
save()