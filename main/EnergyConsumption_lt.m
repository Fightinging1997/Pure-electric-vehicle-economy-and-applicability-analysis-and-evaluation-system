function ElecCon = EnergyConsumption_lt(m, k, h, n1, n2, n3)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
%M;%整备质量

delt_t=1;%时间间隔
g=9.8;%重力加速度
u=0.08;%轮胎滚动阻力系数
A=4;%迎风面积
Cd=0.28;%风阻系数
p=1.2258;%空气密度
R=0.3326;%轮胎半径
precovery=0.3;%回收能耗效率
%TransRatio=12.5;%传动比
%Ft=0;%汽车牵引力
%T=0;%转速
%RPM=0;%扭矩
y_battery=0.95;%电池效率
y_motor=0.90;%发动机效率
AccessoryPower=100;%附件能耗功率
EdSum=0;%片段总能耗
Ed=0;%一秒的能耗
MileageSum=0;%总里程

LowMile=0;
HighMile=0;
MiddleMile=0;
LowEd=0;%低速百公里能耗
HighEd=0;%高速百公里能耗
MiddleEd=0;%中速百公里能耗

% TrafficCharact = n;%1：市内拥挤  2：市内低速  3：市内中速  4: 市内高速   5：郊区
MileUser=100;%用户总里程,单位公里
ElecCon=0;%用户总用电量

load('v2.mat');
load('a2.mat');
load('vstart2.mat');
load('vend2.mat');

%计算低速段
for i=1:309
    %计算发动机效率
    %1秒内的能耗
    Ed=(m*a(i)*v(i)*delt_t+u*m*g*v(i)*delt_t+0.5*A*Cd*p*a(i)*(v(i)^3)*delt_t)/(y_battery*0.75)+AccessoryPower*delt_t;
    
    if vend(i+1)<vstart(i)
         Ed=Ed-0.5*precovery*m*((vstart(i)^2)-(vend(i+1)^2));
    end
    EdSum=EdSum+Ed;  
    MileageSum=v(i)*delt_t+MileageSum;%计算总里程
end

EdSum=100*1000*EdSum/(MileageSum*3600000);

LowMile=MileageSum;
LowEd=EdSum;

Ed=0;
EdSum=0;
MileageSum=0;
%计算中速段
for i=310:1183
    %计算发动机效率
    %1秒内的能耗
    Ed=(m*a(i)*v(i)*delt_t+u*m*g*v(i)*delt_t+0.5*A*Cd*p*a(i)*(v(i)^3)*delt_t)/(y_battery*0.80)+AccessoryPower*delt_t;
    
    if vend(i+1)<vstart(i)
         Ed=Ed-0.5*precovery*m*((vstart(i)^2)-(vend(i+1)^2));
    end
    EdSum=EdSum+Ed;  
    MileageSum=v(i)*delt_t+MileageSum;%计算总里程
end

EdSum=100*1000*EdSum/(MileageSum*3600000);

MiddleMile=MileageSum;
MiddleEd=EdSum;

Ed=0;
EdSum=0;
MileageSum=0;
%计算高速段
for i=1184:1652
    %计算发动机效率
    %1秒内的能耗
    Ed=(m*a(i)*v(i)*delt_t+u*m*g*v(i)*delt_t+0.5*A*Cd*p*a(i)*(v(i)^3)*delt_t)/(y_battery*0.95)+AccessoryPower*delt_t;
    
    if vend(i+1)<vstart(i)
         Ed=Ed-0.5*precovery*m*((vstart(i)^2)-(vend(i+1)^2));
    end
    EdSum=EdSum+Ed;  
    MileageSum=v(i)*delt_t+MileageSum;%计算总里程
end

EdSum=100*1000*EdSum/(MileageSum*3600000);

HighMile=MileageSum;
HighEd=EdSum;

Ed=0;
EdSum=0;
MileageSum=0;
Summile = LowMile + MiddleMile + HighMile;% 总行驶里程
%不同交通特征，对应不同的低中高速度比例

ElecCon = (MileUser*n1*LowEd+MileUser*n2*MiddleEd+MileUser*n3*HighEd)/10000  + (0.01*k*Summile)*m*g*sin(h*pi/180)/(y_battery*y_motor*3.6e+06) ;


