function e = genPoliExp3(x,vector,degree)

     % First we consider the obtained points as exponential.
     if min(vector) <= 0
         vector =  vector + 0.001;
     end
%      vector(10) = vector(10) + 0.1;
%           vector(11) = vector(11) + 0.1;

     vector = log(vector);
     x = x./max(x);
     p = polyfit(x',vector,degree);
     
     % The part that stays toguether with the lineb 
     a = p(1);
     b = p(2);
     

         x2 = 0:.001:1;
     y2 = a*x2 + b;
      d = zeros(size(vector));
     for i=1:length(x)
        pos = uint32(x(i)*(length(y2)-1)) + 1;
        d(i) = (vector(i) - y2(pos))*(vector(i) - y2(pos));
     end
     

     

  

    MP = mean(y2);
    %vector
    SD= sum(d);

    SMP =sum((vector - MP).^2);
    
    e = 1 - SD/SMP;
     
 
      b = exp(b);
     

     %y2 = b*exp(a*x2);    
     
     %y2 = polyval(p,x2);
     %vector = exp(vector);

     %plot(x,vector,'rd',x2,y2,'b-');

end


