function nRep = countFeatures(points1,points2,mov,imsize)

      

     
      
    maskP1 = zeros(imsize);
    maskP2 = zeros(imsize);
    


%       figure;
%       imshow(maskP1);
%       hold on;
%    
%       
%       drawcircles(points1,'g',8);
%       
%       
% 
%       drawcircles(points2,'r',8);
%       
%       hold off;
      
    for i=1:size(points1,1)
        maskP1(uint16(points1(i,1))+1,uint16(points1(i,2))+1)=1;
    end
    for i=1:size(points2,1)
        maskP2(uint16(points2(i,1))+1,uint16(points2(i,2))+1)=1;
    end
    maskP1(size(maskP2,1),size(maskP2,2)) = 0;
    maskP2(size(maskP1,1),size(maskP1,2)) = 0;
    mask = fspecial('disk',mov)>0;
    maskP1 = ordfilt2(maskP1, sum(mask(:)), mask);

    index = maskP1==maskP2 & maskP1==1;

%     
    nRep=sum(sum(index));

%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % 
%     [idx, dist] = rangesearch(points1(:,1:2),points2(:,1:2),epsilon);
%     
%     index1 = cell2mat(idx');
%     
%    % indexr=index2(randperm(length(index)));
%     
%     locs1 = points1(index1,:);
%   %  
%     emptyCells = cellfun(@isempty,idx);
%     index2 = find(emptyCells==0);
%    % I = imread('Images/Photo3/Cortadas/1.jpg');
%    % I = rgb2gray(I);
%     
%     % indexr=index2(randperm(length(index2)));
%     
%     locs2 = points2(index2,:);
%     
%     
%     
%     %locs2(:,1) = randi(imsize(1)-11,size(locs2,1),1);
%     %locs2(:,2) = randi(imsize(2)-11,size(locs2,1),1);
%     
%     %locs2(locs2(:,1)<11,1) =11;
%     %locs2(locs2(:,2)<11,2) =11;
%     
%     
%    % pMatches = testMatches(I,locs1,locs2,2)
%     
%    % global erroreps;
%    % erroreps = [ erroreps pMatches];
%     
%     
%     
%     nRep = size(locs1,1);
%     nRep
%     
%    maskP1 = zeros(imsize);
%    figure;
%    imshow(maskP1);
%    hold on
%    drawcircles(points1(:,1:2),'g',1);
%    drawcircles(points2(:,1:2),'r',2);
%    %locsnr = points1(pairs,:);
%    %drawcircles(locsnr,'b',1);
%    hold off
%     
%     maskP1 = zeros(imsize);
%     maskP2 = zeros(imsize);
%     
%     
%     
%       figure;
%       imshow(maskP1);
% 
%       hold on;
%       
%       
%       
%       
% 
%       
%       
%       hold off;
%       
%     for i=1:size(points1,1)
%         maskP1(uint16(points1(i,1))+1,uint16(points1(i,2))+1)=1;
%     end
%     for i=1:size(points2,1)
%         maskP2(uint16(points2(i,1))+1,uint16(points2(i,2))+1)=1;
%     end
%     maskP1(size(maskP2,1),size(maskP2,2)) = 0;
%     maskP2(size(maskP1,1),size(maskP1,2)) = 0;
%     mask = fspecial('disk',mov)>0;
%     maskP1 = ordfilt2(maskP1, sum(mask(:)), mask);
% 
%     index = maskP1==maskP2 & maskP1==1;

%     
%     nRep=sum(sum(index));

end