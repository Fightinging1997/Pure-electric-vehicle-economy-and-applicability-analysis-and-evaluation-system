function [h,m,s] = trans_time(time)
%���ַ��е�Сʱ����������ֿ���

n = strfind(time,":");  %���ֱ�ʶ��

if time(n(1)-2) == ' '
    h = str2num(time(n(1)-1));
else
    h = str2num(time(n(1)-2:n(1)-1));
end

m = str2num(time(n(2)-2:n(2)-1));

s = str2num(time(n(2)+1:n(2)+2));


end

