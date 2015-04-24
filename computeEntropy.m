function information=computeEntropy(points,Vnorm)

 
global MemoPoints;

totalPoints = size(Vnorm,1)*size(Vnorm,2);

information = 0;
%for each point

%MemoPoints

for i=1:length(points)

    % Take a patch
    
    %Vpatch = Vnorm(points(i,1)-1:points(i,1)+1,points(i,2)-1:points(i,2)+1,:);
    
    entropyPatch =0;
    points=int32(points);
    size(points)
    %VpatchVec = reshape(Vpatch,size(Vpatch,1)*size(Vpatch,2), 4);

    
        %for j=1:length(VpatchVec)
    if(MemoPoints(points(i,1)-1,points(i,2)-1) == -1) 
    
        Vpoint = Vnorm(points(i,1)-1,points(i,2)-1,:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1)-1,points(i,2)-1) = prob;
         entropyPatch = entropyPatch -prob*log(prob);   
    else
        prob = MemoPoints(points(i,1)-1,points(i,2)-1);
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end
        
    if(MemoPoints(points(i,1),points(i,2)-1) == -1) 
        Vpoint = Vnorm(points(i,1),points(i,2)-1,:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1),points(i,2)-1) = prob;
         entropyPatch = entropyPatch -prob*log(prob);    
    else
        prob = MemoPoints(points(i,1),points(i,2)-1);
        entropyPatch = entropyPatch -prob*log(prob);
         %'memo'
    end

    if(MemoPoints(points(i,1)+1,points(i,2)-1) == -1) 
        Vpoint = Vnorm(points(i,1)+1,points(i,2)-1,:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1)+1,points(i,2)-1) = prob;
         entropyPatch = entropyPatch -prob*log(prob);    
    else
        prob = MemoPoints(points(i,1)+1,points(i,2)-1);
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end
    
    
    
    if(MemoPoints(points(i,1)-1,points(i,2)) == -1) 
        Vpoint = Vnorm(points(i,1)-1,points(i,2),:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1)-1,points(i,2)) = prob;
         entropyPatch = entropyPatch -prob*log(prob);    
    else
        prob = MemoPoints(points(i,1)-1,points(i,2));
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end

    if(MemoPoints(points(i,1),points(i,2)) == -1)        
        Vpoint = Vnorm(points(i,1),points(i,2),:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1),points(i,2)) = prob;
         entropyPatch = entropyPatch -prob*log(prob);    
    else
        prob = MemoPoints(points(i,1),points(i,2));
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end

    if(MemoPoints(points(i,1)+1,points(i,2)) == -1) 
        Vpoint = Vnorm(points(i,1)+1,points(i,2),:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1)+1,points(i,2)) = prob;
         entropyPatch = entropyPatch -prob*log(prob);    
    else
        prob = MemoPoints(points(i,1)+1,points(i,2));
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end

    if(MemoPoints(points(i,1)-1,points(i,2)+1) == -1) 
        Vpoint = Vnorm(points(i,1)-1,points(i,2)+1,:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1)-1,points(i,2)+1) = prob;
         entropyPatch = entropyPatch -prob*log(prob);    
    else
        prob = MemoPoints(points(i,1)-1,points(i,2)+1);
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end
    
    
    if(MemoPoints(points(i,1),points(i,2)+1) == -1)
        Vpoint = Vnorm(points(i,1),points(i,2)+1,:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1),points(i,2)+1) = prob;
         entropyPatch = entropyPatch -prob*log(prob);    
    else
        prob = MemoPoints(points(i,1),points(i,2)+1);
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end    
        
        
    if(MemoPoints(points(i,1)+1,points(i,2)+1) == -1) 
        Vpoint = Vnorm(points(i,1)+1,points(i,2)+1,:);       
        count = sum(sum(Vnorm(:,:,1) == Vpoint(1) & Vnorm(:,:,2) == Vpoint(2) & Vnorm(:,:,3) == Vpoint(3) & Vnorm(:,:,4) == Vpoint(4)));
        prob =count/totalPoints;
            
        MemoPoints(points(i,1)+1,points(i,2)+1) = prob;
         entropyPatch = entropyPatch -prob*log(prob);
         
        
    else
        prob = MemoPoints(points(i,1)+1,points(i,2)+1);
        entropyPatch = entropyPatch -prob*log(prob);
        % 'memo'
    end        
        
        
        
            
        
        %end
         
        information = information + entropyPatch
    %else
   
end
        
    % DO a memoization.
    
    
end


