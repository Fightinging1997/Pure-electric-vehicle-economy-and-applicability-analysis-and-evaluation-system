function k1 = wenduxishu(cj, w1, w2, w3, w4)
if cj == 4 % 物流车
    a = [0.02993,-0.8607,54.55];
    x = [25 33 5 -5 -15];
    y = a(1)*x.^2+a(2)*x+a(3);
else  % 小车
    b = [0.0239,-0.8929,29];
    x = [25 33 5 -5 -15];
    y = b(1)*x.^2+b(2)*x+b(3);
end
y1 = (w1*y(2) + w2*y(3)+ w3*y(4) + w4*y(5))/100;
k1 = abs(y(1)-y1)/y(1);