function ElecCon = EnergyConsumption(M, k, delt_h, n1, n2, n3)
%M;%��������
delt_t=1;%ʱ����
g=9.8;%�������ٶ�
u=0.08;%��̥��������ϵ��
A=4;%ӭ�����
Cd=0.25;%����ϵ��
p=1.2258;%�����ܶ�
R=0.3326;%��̥�뾶
precovery=0.3;%�����ܺ�Ч��
%TransRatio=12.5;%������
%Ft=0;%����ǣ����
%T=0;%ת��
%RPM=0;%Ť��
y_battery=0.95;%���Ч��
y_motor=0.90;%������Ч��
AccessoryPower=100;%�����ܺĹ���
EdSum=0;%Ƭ�����ܺ�
Ed=0;%һ����ܺ�
MileageSum=0;%�����


LowMile=0;
HighMile=0;
MiddleMile=0;
LowEd=0;%���ٰٹ����ܺ�
HighEd=0;%���ٰٹ����ܺ�
MiddleEd=0;%���ٰٹ����ܺ�

% TrafficCharact = n;%1������ӵ��  2�����ڵ���  3����������  4: ���ڸ���   5������
MileUser=100;%�û������,��λ����
ElecCon=0;%�û����õ���

% myFun('v.mat');
% myFun('a.mat');
% myFun('vstart.mat');
% myFun('vend.mat');
load('v1.mat');
load('a1.mat');
load('vstart1.mat');
load('vend1.mat');

%������ٶ�
for i=1:674
    %���㷢����Ч��
    %1���ڵ��ܺ�
    Ed=(M*a(i)*v(i)*delt_t+u*M*g*v(i)*delt_t+0.5*A*Cd*p*a(i)*(v(i)^3)*delt_t)/(y_battery*y_motor)+AccessoryPower*delt_t;
    
    if vend(i+1)<vstart(i)
         Ed=Ed-0.5*precovery*M*((vstart(i)^2)-(vend(i+1)^2));
    end
    EdSum=EdSum+Ed;  
    MileageSum=v(i)*delt_t+MileageSum;%���������
end

EdSum=100*1000*EdSum/(MileageSum*3600000);

LowMile=MileageSum;
LowEd=EdSum;

Ed=0;
EdSum=0;
MileageSum=0;
%�������ٶ�
for i=675:1366
    %���㷢����Ч��
    %1���ڵ��ܺ�
    Ed=(M*a(i)*v(i)*delt_t+u*M*g*v(i)*delt_t+0.5*A*Cd*p*a(i)*(v(i)^3)*delt_t)/(y_battery*y_motor)+AccessoryPower*delt_t;
    
    if vend(i+1)<vstart(i)
         Ed=Ed-0.5*precovery*M*((vstart(i)^2)-(vend(i+1)^2));
    end
    EdSum=EdSum+Ed;  
    MileageSum=v(i)*delt_t+MileageSum;%���������
end

EdSum=100*1000*EdSum/(MileageSum*3600000);

MiddleMile=MileageSum;
MiddleEd=EdSum;

Ed=0;
EdSum=0;
MileageSum=0;
%������ٶ�
for i=1367:1800
    %���㷢����Ч��
    %1���ڵ��ܺ�
    Ed=(M*a(i)*v(i)*delt_t+u*M*g*v(i)*delt_t+0.5*A*Cd*p*a(i)*(v(i)^3)*delt_t)/(y_battery*y_motor)+AccessoryPower*delt_t;
    
    if vend(i+1)<vstart(i)
         Ed=Ed-0.5*precovery*M*((vstart(i)^2)-(vend(i+1)^2));
    end
    EdSum=EdSum+Ed;  
    MileageSum=v(i)*delt_t+MileageSum;%���������
end

EdSum=100*1000*EdSum/(MileageSum*3600000);

HighMile=MileageSum;
HighEd=EdSum;

Ed=0;
EdSum=0;
MileageSum=0;
Summile = LowMile + MiddleMile + HighMile;% ����ʻ���
%��ͬ��ͨ��������Ӧ��ͬ�ĵ��и��ٶȱ���
ElecCon = (MileUser*n1*LowEd+MileUser*n2*MiddleEd+MileUser*n3*HighEd)/10000 + (0.01*k*Summile)*M*g*sin(delt_h*pi/180)/(y_battery*y_motor*3.6e+06);
