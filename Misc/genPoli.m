function [y2,e] = genPoli(x,vector,degree)

     x = x./max(x);
     p = polyfit(x',vector,degree);
     x2 = 0:.001:1;
     y2 = polyval(p,x2);
     %plot(x,vector,'rd',x2,y2,'b-');
     d = zeros(size(vector));
     length(y2);
    for i=1:length(x)
        pos = uint32(x(i)*(length(y2)-1)) + 1;
        d(i) = (vector(i) - y2(pos))*(vector(i) - y2(pos));
    end
  

    MP = mean(y2);
    %vector
    SD= sum(d);

    SMP =sum((vector - MP).^2); 
    
    e = 1 - SD/SMP
end





