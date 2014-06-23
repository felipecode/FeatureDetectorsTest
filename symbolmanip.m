

t = exp(-c*d)
I = J*t + A*(1-t)
Ix = diff(I,x)
Iy = diff(I,y)
Ixy = diff(Ix,y)
Ix2 = Ix*Ix
Iy2 = Iy*Iy
Iy2
Ix2y2 =  Ix2*Iy2
Ixy2 = Ixy*Ixy
cim = (Ix2y2 - Ixy2) - k*(Ix2 + Iy2)^2