% Fast Bilateral Filter Using Raised Cosines

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  inImg        :  grayscale image
%  sigma1      : width of spatial Gaussian
%  sigma2      : width of range Gaussian
%  [-w, w]^2  : domain of spatial Gaussian
%  tol             : truncation error
%
%  Author:    Kunal N. Chaudhury.
%  Date:        March 1, 2012.
%  Modified:  June 21, 2014.
%
%  References:
%  [1] K.N. Chaudhury, D. Sage, and M. Unser, "Fast O(1) bilateral
%  filtering using trigonometric range kernels," IEEE Trans. Image Proc.,
%  vol. 20, no. 11, 2011.
%
% [2] K.N. Chaudhury, "Acceleration of the shiftable O(1) algorithm for
% bilateral filtering and non-local means,"  IEEE Transactions on Image Proc., 
% vol. 22, no. 4, 2013.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% load test image
clc, clear all, close all force;
Img    =  double( imread('./images/ckb.jpg') );
[m, n] = size(Img);

% create noisy image (additive Gaussian noise)
sigma  =  20;
inImg  =  Img + sigma * randn(m, n);

% filter parameters
sigma1 = 4;
sigma2 = 30;
tol        = 0.01;

% Set window for spatial Gaussian
w  = 6*sigma1;
if (mod(w,2) == 0)
    w  = w+1;
end

% call bilateral filter
tic;
[outImg, param] =  shiftableBF(inImg, sigma1, sigma2, w, tol);
toc;

% plot results
T  = param.T;
N  = param.N;
M  = param.M;
gamma  =  1 / (sqrt(N) * sigma2);
twoN   =  2^N;

warning('off'); %#ok<WNOFF>

s  = linspace(-T, T, 200);
g  = exp( -s.^2 / (2 * sigma2 *sigma2) );
gApprox  = cos(gamma * s).^N;
if M ==  0
    gTrunc = gApprox;
else
    gTrunc = zeros( 1, length(s) );
    for k = M : N - M
        gTrunc = gTrunc + (nchoosek(N, k) / twoN) * ...
            cos( (2*k - N) * gamma * s  );
    end
end

figure('Units','normalized','Position',[0 0.5 1 0.5]);
plot(s, g, 'b');
hold on,
plot(s, gApprox, 'm'),
hold on,
plot(s, gTrunc, 'r');
axis('tight'), grid('on'),
legend('Gassian','Raised cosine','Truncated raised cosine','FontSize', 10);
title('Comparison of the range kernels', 'FontSize', 10),

peak  = 255;
PSNR0 = 10 * log10(m * n * peak^2 / sum(sum( (inImg - Img).^2)) );
PSNR1 = 10 * log10(m * n * peak^2 / sum(sum((outImg - Img).^2)) );

figure('Units','normalized','Position',[0 0.5 1 0.5]);
colormap gray,
subplot(1,3,1), imshow(uint8(Img)),
title('Original', 'FontSize', 10), axis('image', 'off');
subplot(1,3,2), imshow(uint8(inImg)),
title([ 'Noisy, ', num2str(PSNR0, '%.2f'), 'dB'] , 'FontSize', 10),
axis('image', 'off');
subplot(1,3,3), imshow(uint8(outImg)),
title([ 'Filtered, ', num2str(PSNR1, '%.2f'), 'dB'] , 'FontSize', 10),
axis('image', 'off');





