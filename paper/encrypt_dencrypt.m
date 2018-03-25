repeat_number=[100
200
300
400
500
600
700
800
900
1000
1100
1200
1300
1400
1500
1600
1700
1800
1900
2000];
%%
encrypt_time2 = [ 4300
8643
12996
17342
21690
26035
30383
34729
39074
43422
47768
52148
56497
60789
65154
69456
73847
78194
82541
86942
];


dencrypt_time2 = [
4315
8662
13016
17369
21724
26076
30430
34784
39136
43490
47905
52214
56586
60904
65299
69655
74012
78417
82778
87052];

figure(1)
plot(1:length(repeat_number),encrypt_time2./repeat_number,'r','LineWidth',2)
hold on

plot(1:length(repeat_number),dencrypt_time2./repeat_number,'b-.','LineWidth',2)

grid on
% set(gca,'FontName','Times New Roman','FontSize',16);

h1=xlabel('测试次序');
h2=ylabel('8字节加密时间(us)');
legend('加密','解密')

