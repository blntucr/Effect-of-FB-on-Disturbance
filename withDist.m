s = tf('s');
K = 10;
Td = 1/s;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
figure(2); step(sys,10); hold on; title('with disturbance');

ss_value10 = 1.1;

K = 20;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
step(sys);

ss_value20 = 1.05;


K = 50;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
step(sys);

ss_value50 = 1.02;

K = 100;
s1 = (K+s*(11+Td))/(s^2+12*s+K);
sys = tf(s1.Numerator,s1.Denominator);
step(sys); legend('K = 10', 'K = 20', 'K = 50', 'K = 100');
a = stepinfo(sys);
