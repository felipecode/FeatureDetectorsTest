for i=1:length(harvec)
   
    % Dividir pelo max
    max_value =max([harvec(i) lapvec(i) harvec(i) hesvec(i) harcolor(i) harcolorb(i) siftvec(i) surfvec(i) harlapvec(i) ]);
    

    lapvec(i) = lapvec(i)/max_value;
    heslapvec(i) = heslapvec(i)/max_value;
    harvec(i) = harvec(i)/max_value;
    hesvec(i) = hesvec(i)/max_value;
    harcolor(i) = harcolor(i)/max_value;
    harcolorb(i) = harcolorb(i)/max_value;
    siftvec(i) = siftvec(i)/max_value;
    surfvec(i)= surfvec(i)/max_value;
    harlapvec(i) = harlapvec(i)/max_value;


    % cortar o plot pelo min

    
end