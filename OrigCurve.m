clear all
close all

%    Copyright (C) 2023 Mathias Reichle, Jeremias Arf
%
%    This code generates the NURBS boundary curves of a symmetric violin with
%    F-holes. The corpus consists of the NURBS called line 91 to BoundaryCorpus_08 and
%    the F-holes consist of the NURBS called BoundaryFhole_01 to BoundaryFhole_12. The NURBS are 
%    maximal of degree 3.  The functions nrbmak and the plot functions in
%    line 155 to 193 can be obtained by the Toolbox of GeoPDEs provided in 
%    the repository http://rafavzqz.github.io/geopdes/ . 



%% B-Spline 1
KV1 = [0.0D0,0.0D0,0.0D0,0.0D0,2.292571408443804D0,4.585142816887608D0,4.585142816887608D0,4.585142816887608D0,4.585142816887608D0];
Coor1 = [0.44D0,0.0D0,0.0D0; 0.44D0,1.506026513376705D0,0.0D0; 0.7409365552747927D0, 3.165383555761513D0,0.0D0; ...
    0.9299262048197038D0,3.760248441530749D0,0.0D0; 1.529541882348761D0,4.085423104014477D0,0.0D0];
BoundaryFhole_01 = nrbmak(Coor1',KV1);

%% B-Spline 2
KV2 = [0.0D0,0.0D0,0.0D0,0.0D0,1.0435771733827D0,2.087154346765399D0,3.130731520148099D0,4.174308693530798D0,5.217885866913497D0,6.261463040296197D0,7.305040213678897D0,8.348617387061596D0,9.392194560444295D0,9.392194560444295D0,9.392194560444295D0,9.392194560444295D0];
Coor2 = [-0.44D0,0.0D0,0.0D0;
-0.44D0,1.110842737986218D0,0.0D0;
-0.1626737153307956D0,2.73822233692978D0,0.0D0;
0.2757953006476725D0,3.656000754154279D0,0.0D0;
1.146532605760227D0,4.435081500833933D0,0.0D0;
2.532838052057848D0,4.234582779261963D0,0.0D0;
2.77816698354921D0,3.559686219298497D0,0.0D0;
2.767707983042155D0,2.905562681984906D0,0.0D0;
2.071708044712114D0,2.754651614577154D0,0.0D0;
1.541524735223883D0,2.954612983848094D0,0.0D0;
1.49597323478566D0,3.644543684350166D0,0.0D0;
1.956703101180494D0,3.707549718124866D0,0.0D0];
BoundaryFhole_02 = nrbmak(Coor2',KV2);

%% B-Spline 3
KV3 = [0.0D0,0.0D0,0.0D0,0.0D0,0.599332022467944D0,0.599332022467944D0,0.599332022467944D0,0.599332022467944D0];
Coor3 = [1.529541882348761D0,4.085423104014477D0,0.0D0;
1.861031046641458D0,3.947070301829143D0,0.0D0;
1.932442389877001D0,3.811764598856534D0,0.0D0;
1.956703101180494D0,3.707549718124866D0,0.0D0];
BoundaryFhole_03 = nrbmak(Coor3',KV3);

    BoundaryFhole_03.knots = BoundaryFhole_03.knots-BoundaryFhole_03.knots(1);
    BoundaryFhole_03.knots = BoundaryFhole_03.knots./BoundaryFhole_03.knots(end);




%% Check on Point Symmetry
Coor4 = Coor1*(-1);
Coor5 = Coor2*(-1);
Coor6 = Coor3*(-1);

BoundaryFhole_04 = nrbmak(Coor4',KV1);
BoundaryFhole_05 = nrbmak(Coor5',KV2);
BoundaryFhole_06 = nrbmak(Coor6',KV3);

BoundaryFhole_06.knots = BoundaryFhole_06.knots-BoundaryFhole_06.knots(1);
BoundaryFhole_06.knots = BoundaryFhole_06.knots./BoundaryFhole_06.knots(end);


%% Corpus

%% BSP 1

KV91 = [0.0D0,0.0D0,0.0D0,0.0D0,6.781566199257052D0,13.5631323985141D0,20.34469859777116D0,20.34469859777116D0,20.34469859777116D0,20.34469859777116D0];
Coor91 = [5.358379513144107D0,22.88641560779777D0,0.0D0;-0.4412149956596174D0,22.91806246907232D0,0.0D0;-5.095657872951623D0,18.03089744791572D0,0.0D0;-4.657263655744284D0,13.01600675680144D0,0.0D0;-4.555871225160335D0,12.39329912430645D0,0.0D0;-5.471604981555291D0,11.79449476808493D0,0.0D0];
BoundaryCorpus_01 = nrbmak(Coor91',KV91);

BoundaryCorpus_01.knots = BoundaryCorpus_01.knots-BoundaryCorpus_01.knots(1);
BoundaryCorpus_01.knots = BoundaryCorpus_01.knots./BoundaryCorpus_01.knots(end);

%% BSP 2                     
KV92 = [0.0D0,0.0D0,1.073659317949408D0,1.073659317949408D0];
Coor92 = [-6.896702301724559D0,-0.2170397876274439D0,0.0D0;-6.336842640229492D0,0.6990942039099388D0,0.0D0];
BoundaryCorpus_02 = nrbmak(Coor92',KV92);


BoundaryCorpus_02.knots = BoundaryCorpus_02.knots-BoundaryCorpus_02.knots(1);
BoundaryCorpus_02.knots = BoundaryCorpus_02.knots./BoundaryCorpus_02.knots(end);


%% BSP 3

KV93 = [0.0D0,0.0D0,0.0D0,0.0D0,5.530357559022067D0,11.06071511804413D0,16.5910726770662D0,16.5910726770662D0,16.5910726770662D0,16.5910726770662D0];
Coor93 = [-6.336842640229492D0,0.6990942039099388D0,0.0D0;-3.486647999890959D0,-0.4206251190801935D0,0.0D0;-2.265136011174441D0,2.124191524079206D0,0.0D0;-1.705276349679373D0,5.076178830144109D0,0.0D0;-3.333959001301391D0,9.707745120694216D0,0.0D0;-5.471604981555291D0,11.79449476808493D0,0.0D0];
BoundaryCorpus_03 = nrbmak(Coor93',KV93);

BoundaryCorpus_03.knots = BoundaryCorpus_03.knots-BoundaryCorpus_03.knots(1);
BoundaryCorpus_03.knots = BoundaryCorpus_03.knots./BoundaryCorpus_03.knots(end);


%% BSP 4

KV94 = [0.0D0,0.0D0,0.0D0,0.0D0,7.097515738968208D0,14.19503147793642D0,21.29254721690462D0,28.39006295587283D0,35.48757869484104D0,35.48757869484104D0,35.48757869484104D0,35.48757869484104D0];
Coor94 = [5.358379513144107D0,-22.19669981848182D0,0.0D0;-2.316481512642177D0,-22.16677833300114D0,0.0D0;-7.761939960398756D0,-18.08165262260643D0,0.0D0;-10.30675660355816D0,-12.78843400483488D0,0.0D0;-8.220006956167449D0,-5.255776741083054D0,0.0D0;-6.998494967450934D0,-3.321716092281911D0,0.0D0;-5.878775644460795D0,-1.794826106386269D0,0.0D0;-6.896702301724559D0,-0.2170397876274439D0,0.0D0];
BoundaryCorpus_04 = nrbmak(Coor94',KV94);

BoundaryCorpus_04.knots = BoundaryCorpus_04.knots-BoundaryCorpus_04.knots(1);
BoundaryCorpus_04.knots = BoundaryCorpus_04.knots./BoundaryCorpus_04.knots(end);


Mid = nrbeval(BoundaryCorpus_04,0);
Coor1(:,1) = Coor1(:,1) - Mid(1);
Coor2(:,1) = Coor2(:,1) - Mid(1);
Coor3(:,1) = Coor3(:,1) - Mid(1);
Coor4(:,1) = Coor4(:,1) - Mid(1);
Coor5(:,1) = Coor5(:,1) - Mid(1);
Coor6(:,1) = Coor6(:,1) - Mid(1);
Coor91(:,1) = Coor91(:,1) - Mid(1);
Coor92(:,1) = Coor92(:,1) - Mid(1);
Coor93(:,1) = Coor93(:,1) - Mid(1);
Coor94(:,1) = Coor94(:,1) - Mid(1);
BoundaryFhole_01.coefs(1,:) = BoundaryFhole_01.coefs(1,:)-Mid(1);
BoundaryFhole_02.coefs(1,:) = BoundaryFhole_02.coefs(1,:)-Mid(1);
BoundaryFhole_03.coefs(1,:) = BoundaryFhole_03.coefs(1,:)-Mid(1);
BoundaryFhole_04.coefs(1,:) = BoundaryFhole_04.coefs(1,:)-Mid(1);
BoundaryFhole_05.coefs(1,:) = BoundaryFhole_05.coefs(1,:)-Mid(1);
BoundaryFhole_06.coefs(1,:) = BoundaryFhole_06.coefs(1,:)-Mid(1);
BoundaryCorpus_01.coefs(1,:) = BoundaryCorpus_01.coefs(1,:)-Mid(1);
BoundaryCorpus_02.coefs(1,:) = BoundaryCorpus_02.coefs(1,:)-Mid(1);
BoundaryCorpus_03.coefs(1,:) = BoundaryCorpus_03.coefs(1,:)-Mid(1);
BoundaryCorpus_04.coefs(1,:) = BoundaryCorpus_04.coefs(1,:)-Mid(1);

BoundaryFhole_07 = BoundaryFhole_01;
BoundaryFhole_08 = BoundaryFhole_02;
BoundaryFhole_09 = BoundaryFhole_03;
BoundaryFhole_10 = BoundaryFhole_04;
BoundaryFhole_11 = BoundaryFhole_05;
BoundaryFhole_12 = BoundaryFhole_06;

BoundaryCorpus_05 = BoundaryCorpus_01;
BoundaryCorpus_06 = BoundaryCorpus_02;
BoundaryCorpus_07 = BoundaryCorpus_03;
BoundaryCorpus_08 = BoundaryCorpus_04;



BoundaryFhole_07.coefs(1,:) = BoundaryFhole_01.coefs(1,:)*(-1);
BoundaryFhole_08.coefs(1,:) = BoundaryFhole_02.coefs(1,:)*(-1);
BoundaryFhole_09.coefs(1,:) = BoundaryFhole_03.coefs(1,:)*(-1);
BoundaryFhole_10.coefs(1,:) = BoundaryFhole_04.coefs(1,:)*(-1);
BoundaryFhole_11.coefs(1,:) = BoundaryFhole_05.coefs(1,:)*(-1);
BoundaryFhole_12.coefs(1,:) = BoundaryFhole_06.coefs(1,:)*(-1);
BoundaryCorpus_05.coefs(1,:) = BoundaryCorpus_01.coefs(1,:)*(-1);
BoundaryCorpus_06.coefs(1,:) = BoundaryCorpus_02.coefs(1,:)*(-1);
BoundaryCorpus_07.coefs(1,:) = BoundaryCorpus_03.coefs(1,:)*(-1);
BoundaryCorpus_08.coefs(1,:) = BoundaryCorpus_04.coefs(1,:)*(-1);

clear Coor1 Coor2 Coor3 Coor4 Coor5 Coor6 Coor91 Coor92 Coor93 Coor94
clear KV1 KV2 KV3 KV4 KV5 KV6 KV91 KV92 KV93 KV94 Mid

% This is only required for the plot:

nrbkntplot(BoundaryCorpus_01, 30);
hold on
nrbkntplot(BoundaryCorpus_02, 30);
hold on
nrbkntplot(BoundaryCorpus_03, 30);
hold on
nrbkntplot(BoundaryCorpus_04, 30);
hold on
nrbkntplot(BoundaryFhole_01, 30);
hold on
nrbkntplot(BoundaryFhole_02, 30);
hold on
nrbkntplot(BoundaryFhole_03, 30);
hold on
nrbkntplot(BoundaryFhole_04, 30);
hold on
nrbkntplot(BoundaryFhole_05, 30);
hold on
nrbkntplot(BoundaryFhole_06, 30);
hold on
nrbkntplot(BoundaryFhole_07, 30);
hold on
nrbkntplot(BoundaryFhole_08, 30);
hold on
nrbkntplot(BoundaryFhole_09, 30);
hold on
nrbkntplot(BoundaryFhole_10, 30);
hold on
nrbkntplot(BoundaryFhole_11, 30);
hold on
nrbkntplot(BoundaryFhole_12, 30);
hold on
nrbkntplot(BoundaryCorpus_05, 30);
hold on
nrbkntplot(BoundaryCorpus_06, 30);
hold on
nrbkntplot(BoundaryCorpus_07, 30);
hold on
nrbkntplot(BoundaryCorpus_08, 30);


