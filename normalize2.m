for i=1:length(hesvec1)
   
    % Dividir pelo max
    max_value =max([hesvec1(i) hesvec2(i) hesvec3(i) hesvec4(i)  harcolor1(i) harcolor2(i) harcolor3(i) harcolor4(i)]);
    

    hesvec1(i) = hesvec1(i)/max_value;
    hesvec2(i) = hesvec2(i)/max_value;
    hesvec3(i) = hesvec3(i)/max_value;
    hesvec4(i) = hesvec4(i)/max_value;
    
    harcolor1(i) = harcolor1(i)/max_value;
    harcolor2(i) = harcolor2(i)/max_value;
    harcolor3(i) = harcolor3(i)/max_value;
    harcolor4(i) = harcolor4(i)/max_value;

    % cortar o plot pelo min

    
end