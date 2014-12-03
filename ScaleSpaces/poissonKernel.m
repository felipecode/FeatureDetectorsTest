function kernel = poissonKernel(h,sigma)


     siz   = (h-1)./2;
     
     [x,y] = meshgrid(-siz(2):siz(2),-siz(1):siz(1));
     
     h =sigma./(2*3.1415*(sigma^2 + abs(x.*x + y.*y)).^(3/2));
     
    % arg   = -(x.*x + y.*y)/(2*std*std);

    % h     = exp(arg);
     %h(h<eps*max(h(:))) = 0;

     sumh = sum(h(:));
     if sumh ~= 0
       h  = h/sumh;
     end
     kernel = h;
end     
     
     