function [a,b] = genPoliExp2(x,vector,degree)

     % First we consider the obtained points as exponential.
      if min(vector) <= 0
         vector =  vector + 0.001;
     end
     vector = log(vector);
     x = x./max(x);
     p = polyfit(x',vector,degree);
     
     % The part that stays toguether with the lineb 
     a = p(1);
     b = p(2);
     
     b = exp(b);
     
     
     
    
end


