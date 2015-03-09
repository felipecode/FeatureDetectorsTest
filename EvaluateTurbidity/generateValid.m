function [r ,c]=generateValid(imvec,BinfVec,channel)

    %[A,I] = double(max(max(I)))./255;
    
    rows = size(imvec{1},1);
    cols = size(imvec{1},2);
    
    imvecss{length(imvec)} = 1;
    binfvecss{length(imvec)} = 1;
    
    for i=1:length(imvec)
        image = imvec{i};
        imvecss{i} = double(image(:,:,channel))/255;
        image = BinfVec{i};
        binfvecss{i} = double(image(:,:,channel))/255;        
        binfvecss{i} = imresize( binfvecss{i}, size(imvecss{i}));        
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

                image = imvecss{k};
                image1 = imvecss{1};
                I = (image(i,j));
                J = (image1(i,j));
                binfimage = binfvecss{k};
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
