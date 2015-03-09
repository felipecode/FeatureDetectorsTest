function responseMap=CenSurHessian_buildResponseMap(FastHessianData)

% Calculate responses for the first 4 FastHessianData.octaves:
% Oct1: 9,  15, 21, 27
% Oct2: 15, 27, 39, 51
% Oct3: 27, 51, 75, 99
% Oct4: 51, 99, 147,195
% Oct5: 99, 195,291,387

% Deallocate memory and clear any existing response layers
responseMap=[]; j=0;

FastHessianData.init_sample =1;
% Get image attributes
w = (size(FastHessianData.img,2) / FastHessianData.init_sample);
h = (size(FastHessianData.img,1)/ FastHessianData.init_sample);
s = (FastHessianData.init_sample);

% Calculate approximated determinant of hessian values
if (FastHessianData.octaves >= 1)
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w,   h,   1,   1);
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w, h, 1, 2);
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w, h, 1, 3);
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w, h, 1, 4);
end

if (FastHessianData.octaves >= 2)
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w , h , 1, 7);
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w , h , 1, 8);
end

if (FastHessianData.octaves >= 3)
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w, h, 1, 15);
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w , h, 1, 16);
end

if (FastHessianData.octaves >= 4)
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w, h , 1, 31);
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w , h , 1, 32);
end

if (FastHessianData.octaves >= 5)
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w , h , 1, 63);
    j=j+1; responseMap{j}=FastHessian_ResponseLayer(w , h , 1, 64);
end
 
% Extract responses from the image
for i=1:length(responseMap);
    responseMap{i}=CenSurHessian_buildResponseLayer(responseMap{i},FastHessianData);
end


