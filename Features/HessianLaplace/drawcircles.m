function drawcircles(points)

    for i=1:size(points,1)
        
        circle([points(i,2),points(i,1)],points(i,3),1000);
        
    end

end