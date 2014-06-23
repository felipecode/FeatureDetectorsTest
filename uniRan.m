function bestCS = uniRan(transimage,vector)
    
    prob = 0.05;


    bestCS = []; 
    bestSTD = 1000;
    bestSize =0;
    probCS =1 ;
        %parada = ;
    ganhos = 0;
    totais = 0;

            
            
     while probCS > prob
    %% Hypotesis Step ( Just Select A randon point from the set)
    
        [y,idx] = datasample(vector,5);
        vector(idx,:) = [];

        avgVector = zeros(5,1);
        for i=1:5

             avgVector(i) =  transimage(y(i));

        end

        mediaTrans = mean(avgVector);
        stdDev = std(avgVector)*2.5;
        

        %% Now You verify the distance between the selected point and a threshold
   
        CS = zeros(size(vector));
        CSimage = zeros(length(vector),1);
        % optimize
        tamanho =1;
        %size(vector)


        for i=1:length(vector)
            %vector(:,i)
            if (transimage(vector(i,1),vector(i,2)) - mediaTrans) <= stdDev

                CS(tamanho,:) =  vector(i,:);
                
                CSimage(tamanho) = transimage(vector(i,1),vector(i,2));
                tamanho = tamanho + 1;
            end
           



        end
         %% remove the new inliers
        % 'CS'

        %size(CS)
        meanCS = mean(CSimage);
        
        tamanho;
        apagar = zeros(tamanho,1); % vetor com elementos a serem apagados
        for i=1:tamanho-1
                
            if (CSimage(i) - meanCS) > stdDev

                apagar(i) = 1;
                    
            end
            
        end
        % vai apagar
        % Media
        sizeCS=0;
        soma=0;
        for i=1:tamanho-1
            if apagar(i) ~= 1
                soma = soma + CSimage(i);
                sizeCS =  sizeCS + 1;
            end
            
            
        end 
        meanCS = soma/sizeCS;
        
        % STD
        soma =0;
        sizeCS =1;
        fprintf('apagou %d \n',tamanho-sizeCS);
        for i=1:tamanho-1
            
            if apagar(i) ~= 1
                CS(sizeCS,:) = CS(i,:);
                soma = soma + (CSimage(i) - meanCS)^2;
                sizeCS = sizeCS +1;
            end
            
        end
        %'cc2'
        stdCS = sqrt(soma/sizeCS);

            
        %sizeCS;
        if stdCS < bestSTD

            bestCS = CS;
            bestSTD = stdCS
            bestSize = sizeCS
            %length(bestCS);
            ganhos = ganhos +1;
        end

        
        totais = totais +1;
        
        probCS = ganhos /totais
        
     end
    bestCS(bestSize:end,:) = [];
    bestSTD
    
    
end