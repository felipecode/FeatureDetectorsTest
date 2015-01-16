
tvec = [];
for i=2:11
    tvec = [ tvec, turbidityEst2(rgb2gray(imvecl{1}),rgb2gray(imvecl{i}))];
end