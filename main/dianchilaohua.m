function k2 = dianchilaohua(i)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
y=(70.02*exp(-0.002713/2511*i)-0.5437*exp(-0.4359*i/2511))/1.825/(1.139*exp(-0.0006042*i/2511)-0.04871*exp(0.04412*i/2511));
i1 = 0;
y1=(70.02*exp(-0.002713/2511*i1)-0.5437*exp(-0.4359*i1/2511))/1.825/(1.139*exp(-0.0006042*i1/2511)-0.04871*exp(0.04412*i1/2511));
k2 = (y-y1)/y1;
end

