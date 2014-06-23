aHarVec = [];
aHesVec = [];
aLapVec = [];
aHarCVec = [];
aHarCBVec = [];
aHarLapVec = [];
aHesLapVec = [];
aSiftVec = [];
aSurfVec = [];

aHarDif =[];
aHesDif =[];
aLapDif =[];
aHarCDif =[];
aHarCBDif =[];
aHarLapDif =[];
aHesLapDif =[];
aSiftDif =[];
aSurfDif =[];

degree = 1;
% load('1571C1V.mat');
% geraPlotC1
% aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
% aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
% aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
% aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
% aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
% aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
% aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
% aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
% aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];
% load('2571C1V.mat');
% geraPlotC1
% aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
% aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
% aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
% aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
% aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
% aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
% aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
% aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
% aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];
% load('5071C1V.mat');
% geraPlotC1
% aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
% aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
% aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
% aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
% aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
% aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
% aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
% aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
% aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];
load('15071C1V.mat');
geraPlotC1
aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];

load('30071C1V.mat');
geraPlotC1 


aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];


aHarDif =[aHarDif (aHarVec(end) - aHarVec(end-1))];
aHesDif =[aHesDif (aHesVec(end) - aHesVec(end-1))];
aLapDif =[aLapDif (aLapVec(end) - aLapVec(end-1))];
aHarCDif =[aHarCDif (aHarCVec(end) - aHarCVec(end-1))];
aHarCBDif =[aHarCBDif (aHarCBVec(end) - aHarCBVec(end-1))];
aHarLapDif =[aHarLapDif (aHarLapVec(end) - aHarLapVec(end-1))];
aHesLapDif =[aHesLapDif (aHesLapVec(end) - aHesLapVec(end-1))];
aSiftDif =[aSiftDif (aSiftVec(end) - aSiftVec(end-1))];
aSurfDif =[aSurfDif (aSurfVec(end) - aSurfVec(end-1))];
 

load('40071C1V.mat');
geraPlotC1
aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];

aHarDif =[aHarDif (aHarVec(end) - aHarVec(end-1))];
aHesDif =[aHesDif (aHesVec(end) - aHesVec(end-1))];
aLapDif =[aLapDif (aLapVec(end) - aLapVec(end-1))];
aHarCDif =[aHarCDif (aHarCVec(end) - aHarCVec(end-1))];
aHarCBDif =[aHarCBDif (aHarCBVec(end) - aHarCBVec(end-1))];
aHarLapDif =[aHarLapDif (aHarLapVec(end) - aHarLapVec(end-1))];
aHesLapDif =[aHesLapDif (aHesLapVec(end) - aHesLapVec(end-1))];
aSiftDif =[aSiftDif (aSiftVec(end) - aSiftVec(end-1))];
aSurfDif =[aSurfDif (aSurfVec(end) - aSurfVec(end-1))];
 
load('50071C1V.mat');
geraPlotC1
aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];

aHarDif =[aHarDif (aHarVec(end) - aHarVec(end-1))];
aHesDif =[aHesDif (aHesVec(end) - aHesVec(end-1))];
aLapDif =[aLapDif (aLapVec(end) - aLapVec(end-1))];
aHarCDif =[aHarCDif (aHarCVec(end) - aHarCVec(end-1))];
aHarCBDif =[aHarCBDif (aHarCBVec(end) - aHarCBVec(end-1))];
aHarLapDif =[aHarLapDif (aHarLapVec(end) - aHarLapVec(end-1))];
aHesLapDif =[aHesLapDif (aHesLapVec(end) - aHesLapVec(end-1))];
aSiftDif =[aSiftDif (aSiftVec(end) - aSiftVec(end-1))];
aSurfDif =[aSurfDif (aSurfVec(end) - aSurfVec(end-1))];
 

load('70071C1V.mat');
geraPlotC1
aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];

aHarDif =[aHarDif (aHarVec(end) - aHarVec(end-1))];
aHesDif =[aHesDif (aHesVec(end) - aHesVec(end-1))];
aLapDif =[aLapDif (aLapVec(end) - aLapVec(end-1))];
aHarCDif =[aHarCDif (aHarCVec(end) - aHarCVec(end-1))];
aHarCBDif =[aHarCBDif (aHarCBVec(end) - aHarCBVec(end-1))];
aHarLapDif =[aHarLapDif (aHarLapVec(end) - aHarLapVec(end-1))];
aHesLapDif =[aHesLapDif (aHesLapVec(end) - aHesLapVec(end-1))];
aSiftDif =[aSiftDif (aSiftVec(end) - aSiftVec(end-1))];
aSurfDif =[aSurfDif (aSurfVec(end) - aSurfVec(end-1))];
 
load('90071C1V.mat');
geraPlotC1
aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];

aHarDif =[aHarDif (aHarVec(end) - aHarVec(end-1))];
aHesDif =[aHesDif (aHesVec(end) - aHesVec(end-1))];
aLapDif =[aLapDif (aLapVec(end) - aLapVec(end-1))];
aHarCDif =[aHarCDif (aHarCVec(end) - aHarCVec(end-1))];
aHarCBDif =[aHarCBDif (aHarCBVec(end) - aHarCBVec(end-1))];
aHarLapDif =[aHarLapDif (aHarLapVec(end) - aHarLapVec(end-1))];
aHesLapDif =[aHesLapDif (aHesLapVec(end) - aHesLapVec(end-1))];
aSiftDif =[aSiftDif (aSiftVec(end) - aSiftVec(end-1))];
aSurfDif =[aSurfDif (aSurfVec(end) - aSurfVec(end-1))];
 

% load('120071C1V.mat');
% geraPlotC1
% aHarVec = [aHarVec genPoliExp3(x,harvec,degree)];
% aHesVec = [aHesVec genPoliExp3(x,hesvec,degree)];
% aLapVec = [aLapVec genPoliExp3(x,lapvec,degree)];
% aHarCVec = [aHarCVec genPoliExp3(x,harcolor,degree)];
% aHarCBVec = [aHarCBVec genPoliExp3(x,harcolorb,degree)];
% aHarLapVec = [aHarLapVec genPoliExp3(x,harlapvec,degree)];
% aHesLapVec = [aHesLapVec genPoliExp3(x,heslapvec,degree)];
% aSiftVec = [aSiftVec genPoliExp3(x,siftvec,degree)];
% aSurfVec = [aSurfVec genPoliExp3(x,surfvec,degree)];
% load('150071C1V.mat');
% geraPlotC1
aHarVec 
aHesVec 
aLapVec 
aHarCVec 
aHarCBVec
aHarLapVec 
aSiftVec 
aSurfVec 

aHarDif 
aHesDif 
aLapDif 
aHarCDif 
aHarCBDif 
aHarLapDif 
aHesLapDif
aSiftDif
aSurfDif 

aSum =zeros(6,1);
for i=1:6
    aSum(i) = aHarVec(i) + aHesVec(i) + aLapVec(i) + aHarCVec(i) + aHarCBVec(i) + aHarLapVec(i) + aHesLapVec(i) + aSiftVec(i) + aSurfVec(i);
end
    aSum = aSum./9;

