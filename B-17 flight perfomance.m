clear all
clc
disp (' V1,VR,V2 & V STALL B-17 CALCULATOR ')
disp(' all speed show as knot')
disp (' ')
disp (' ')
disp (' ')
disp (' ')
disp (' ')
disp (' ')
disp(' fuel calculation as pound ')
disp (' ')
disp (' ')
M=input(' enter your flight time as min=   ');
Fuel=(17.28*M)+2160
Fuel2=(Fuel/21600)*100
Q=input(' ENTER YOUR GROSS WEIGHT AS POUND=   ');
W=Q*0.4535923;
P=input(' ENTER YOUR AIR DENISITY AS kg/m^3 =      ');                   %all of cl is to clmax with alpha
CL=input(' ENTER YOUR LIFT COFFIECENT AS FLAP =    ');                   %with out flaps CL=0.148
S=131.9223168;                                                              %in 1/3 flpas CL=0.17
w=W*2;                                                                      %in 2/3 flaps CL=0.182
a=P*S*CL;                                                                   %in full flaps CL=0.2024
Z=w/a;
Vstall=sqrt(Z)*1.9438444492;
V1=Vstall*1.1;
VR=Vstall*1.13;
V2=Vstall*1.17;
Vref=Vstall*1.2;
disp('')
disp('')
disp('')
disp(' MAX RANGE SPEED ')
C=0.0571;
K=0.047;
E=sqrt(C/K);
D=P*S*E;
Vcruise=(sqrt((19.62*W)/D))*1.9438444492;
disp('')
disp('')
disp('')
disp('')
disp('')
disp('')
disp('');
disp('');
disp('');
n=input(' Enter your throttel as persent=   ');
vc=input(' Enter your speed as knot=   ');
Vc=vc/1.9438444492;
A=n*1350*4*745*0.9;
B=0.5*1.225*Vc*Vc*Vc*132*0.0571;
C=(2*0.0472*W*9.81*W*9.81)/(1.225*Vc*132);
D=A-B;
G=C/D;
Z=sqrt(G);
Ro=Z*1.225;
disp=('1 mean yes and 0 mean no')
A=input(' Do You Want To Calculate AOA ?  ');
switch A
    case 1
        AOA=1
    case 0
        b=0
end
Fuel
Fuel2
Vstall
V1
VR
V2
Vref
Vc
Ro
