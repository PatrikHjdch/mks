values = csvread("ntc.csv");
ad = (values(:,2) ./ (values(:,2)+10)) * 2^10;
t = values(:,1);
p = polyfit(ad, t,  10);
ad2 = 0:1023;
t2 = round(polyval(p, ad2), 1);
dlmwrite('data.dlm', t2*10, ',');

figure;
plot(ad, t, 'bo');
hold on;
plot(ad2,t2, 'r');