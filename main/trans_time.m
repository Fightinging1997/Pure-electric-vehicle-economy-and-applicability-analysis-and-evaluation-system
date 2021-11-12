function [h,m,s] = trans_time(time)
%将字符中的小时分钟秒给区分开；

n = strfind(time,":");  %区分标识符

if time(n(1)-2) == ' '
    h = str2num(time(n(1)-1));
else
    h = str2num(time(n(1)-2:n(1)-1));
end

m = str2num(time(n(2)-2:n(2)-1));

s = str2num(time(n(2)+1:n(2)+2));


end

