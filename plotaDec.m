
resFeat = zeros(1,5);
for i=1:3
    
    im = imread(strcat(strcat('dia', num2str(i)),'.jpg'));
    resFeat(i) = contaFeatures(im,'harris');
    
end
resFeat