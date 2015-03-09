function rl=CenSurHessian_buildResponseLayer(rl,CenSurData)
% This function FastHessian_buildResponseLayer will ..
%
% [rl] = FastHessian_buildResponseLayer( rl,FastHessianData )
%  
%  inputs,
%    rl : 
%    FastHessianData : 
%  
%  outputs,
%    rl : 
%  
% Function is written by D.Kroon University of Twente ()
step =1;
%step = fix( rl.step);                      % step size for this filter
b = fix((rl.filter - 1) / 2 + 1);         % border for this filter
l = fix(rl.filter / 3);                   % lobe for this filter (filter size / 3)
w = fix(rl.filter);                       % filter size

inverse_area = 1 / double((2*rl.filter +1) * (2*rl.filter +1));          % normalisation factor
img=CenSurData.img;

[ac,ar]=ndgrid(0:rl.width-1,0:rl.height-1);
ar=ar(:); ac=ac(:);

% get the image coordinates
r = int32(ar * step);
c = int32(ac * step);

% Compute response components
if CenSurData.poly 
    centerMatrix = drawPolygon(CenSurData.nSides,2*rl.filter +1);

    surroundMatrix = drawPolygon(CenSurData.nSides,4*rl.filter +1);
else
     centerMatrix = drawStarPolygon(CenSurData.nSides,2*rl.filter +1);

    surroundMatrix = drawStarPolygon(CenSurData.nSides,4*rl.filter +1);
    
end

cResp = conv2(img,centerMatrix,'same');
sResp = conv2(img,surroundMatrix,'same');
CenResp = sResp - cResp;

%CenResp =   IntegralImage_HexaIntegral(r - l + 1, c - b, 2 * l - 1, w,img) - IntegralImage_HexaIntegral(r - l + 1, c - fix(l / 2), 2 * l - 1, l, img);

% Normalise the filter responses with respect to their size

% Take also the harris responses for each pixel. This will be tested
% if it is below a certain threshold


    % interest point response
    
H = HessianMeasure(CenResp);

     
CenResp = CenResp*inverse_area;

sx=size(img,1);
A = CenResp(max(r +(c)*sx,1));

rl.responses = A;     
     
rl.harrisResponses = H(max(r +(c)*sx,1));


% Get the determinant of hessian response & laplacian sign
%rl.responses = (Dxx .* Dyy - 0.81 * Dxy .* Dxy);
%rl.laplacian = (Dxx + Dyy) >= 0;
