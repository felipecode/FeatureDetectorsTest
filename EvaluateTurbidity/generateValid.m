function [r ,c]=generateValid(imvec,BinfVec)

    %[A,I] = double(max(max(I)))./255;
    
    rows = size(imvec{1},1)
    cols = size(imvec{1},2)
    

    
    for i=1:length(imvec)
        [H S imvec{i} ] = rgb2hsv(imvec{i});
        BinfVec{i} = double(rgb2gray(BinfVec{i}))/255;
        
        BinfVec{i} = imresize( BinfVec{i}, size(imvec{i}));
        

    end

    r = [];
    c = [];
    length(imvec)
    rows
    cols
    for i=1:rows
        for j=1:cols

            minT = 1;
            for k=2:length(imvec)

                image = imvec{k};
                image1 = imvec{1};
                I = (image(i,j));
                J = (image1(i,j));
                binfimage = BinfVec{k};
                B = I -binfimage(i,j);
                C = J- binfimage(i,j);
                if C~= 0
                    tmap = B/C;
                else
                    tmap = -1;
                end
                %tmap
                minT = min([tmap minT]);

            end

            if minT > 0
                
                %minT
                r = [r i];
                c = [c j];
            end
            
            
        end
    end
    

end
