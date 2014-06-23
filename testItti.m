salvec = [];
for i=1:11
     
    salMap = ittikochmap(imvecl{i});
    salvec = [ salvec sum(sum(salMap.master_map)) ];
    figure;
    imshow( salMap.master_map_resized)

end