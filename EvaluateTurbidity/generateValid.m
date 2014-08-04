function [r c]=generateValid(imvec)

    %[A,I] = double(max(max(I)))./255;
    
    rows = size(imvec{1},1)
    cols = size(imvec{1},2)
    
    Avec = [ ];
    hsvec = {};
    
    for i=1:length(imvec)
        [H S hsvec{i} ] = rgb2hsv (imvec{i});
        %hsvec{i} = double(hsvec{i});
        Avec = [Avec max(max(hsvec{i}))];
    end
    Avec
    r = [];
    c = [];
    length(hsvec)
    rows
    cols
    for i=1:rows
        for j=1:cols

            minT = 1;
            for k=2:length(hsvec)

                image = hsvec{k};
                image1 = hsvec{1};
                I = (image(i,j));
                J = (image1(i,j));
                B = I -Avec(k);
                C = J- Avec(k);
              
                tmap = B/C;
                %tmap
                minT = min([tmap minT]);

            end

            if minT > 0
               
                r = [r i];
                c = [c j];
            end
            
            %minT
            
        end
    end
    

end
