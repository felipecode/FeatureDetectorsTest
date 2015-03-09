
x2 = 0:0.001:1;
degree = 1;


avecharris = [];
bvecharris = [];

avechessian = [];
bvechessian = [];


aveclaplace = [];
bveclaplace = [];


avecsurf = [];
bvecsurf = [];


avecsift = [];
bvecsift = [];


aveckaze = [];
bveckaze = [];


aveccensure = [];
bveccensure = [];


delta =25;
epsilon=8;

for i=100:100:900

    load(strcat(int2str(i),int2str(delta),int2str(epsilon),'F1V'));

    [a,b] =genPoliExp(x,harvec,degree);
    avecharris =  [avecharris a];
    bvecharris =  [ bvecharris b];
    
    [a,b] =genPoliExp(x,hesvec,degree);
    avechessian =  [avechessian a];
    bvechessian =  [ bvechessian b]; 
    
    [a,b] =genPoliExp(x,lapvec,degree);
    aveclaplace =  [aveclaplace a];
    bveclaplace =  [ bveclaplace b]; 
    
    
    [a,b] =genPoliExp(x,hesvec,degree);
    avechessian =  [avechessian a];
    bvechessian =  [ bvechessian b]; 
    
    [a,b] =genPoliExp(x,sift,degree);
    avecsift =  [avecsift a];
    bvecsift =  [ bvecsift b]; 
    
    [a,b] =genPoliExp(x,surf,degree);
    avecsurf =  [avecsurf a];
    bvecsurf =  [ bvecsurf b]; 
    
    [a,b] =genPoliExp(x,kaze,degree);
    aveckaze =  [aveckaze a];
    bvechessian =  [ bveckaze b]; 
    
    [a,b] =genPoliExp(x,censure,degree);
    aveccensure =  [aveccensure a];
    bveccensure =  [ bveccensure b]; 
    

end


