
[r c ] = generateValid(imvec); 
    vector = [];
    vector(1,:) =r;
    vector(2,:) =c;
%vector = [r;c];
x=0;    
for i=2:20
                
         x= [ x, estimateIDT(imvec{1},imvec{i},0,vector)];

         
end