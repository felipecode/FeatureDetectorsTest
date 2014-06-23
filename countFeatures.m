function nRep = countFeatures(points1,points2,mov,imsize)


    maskP1 = zeros(imsize);
    maskP2 = zeros(imsize);
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
%      figure
%      imshow(index);
%      figure;
%      imshow(maskP1);
%      hold on;
%      drawcircles(points2);
%     
    nRep=sum(sum(index));

end