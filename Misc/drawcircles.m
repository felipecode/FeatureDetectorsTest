function drawcircles(points,style,radius)
    if (nargin <1),
     error('Please see help for INPUT DATA.');
    end
    if (nargin<2)
        style='b-';
    end;
    if (nargin<3)
        radius = 2;
    end
    
    NOP=20;
    for i=1:size(points,1)
        
        center = [points(i,2),points(i,1)];
        THETA=linspace(0,2*pi,NOP);
        RHO=ones(1,NOP)*radius;

        [X,Y] = pol2cart(THETA,RHO);
        X=X+center(1);
        Y=Y+center(2);
        H=plot(X,Y,style);
        
    end

end