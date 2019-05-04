s = tf('s');
K = 10;
Td = 0;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
figure(1); step(sys); hold on; title('w/o disturbance');


K = 20;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
step(sys);


K = 50;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
step(sys);


K = 100;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
step(sys); legend('K = 10', 'K = 20', 'K = 50', 'K = 100');



