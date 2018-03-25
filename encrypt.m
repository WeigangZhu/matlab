repeat_number=[100
200
300
400
500
600
700
800
900
1000];
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
43490];

figure(1)
plot(repeat_number,encrypt_time2/1000,'r','LineWidth',2)

grid on
% set(gca,'FontName','Times New Roman','FontSize',16);

h1=xlabel('加密重复次数');
h2=ylabel('加密时间(ms)');
% h1=xlabel('$$ \theta $$');
% h2=ylabel('$$ r $$');
% 
% set(h1,'interpreter','latex');
% set(h1,'FontName','Times New Roman','Color','Black');
% 
% set(h2,'interpreter','latex');
% set(h2,'FontName','Times New Roman','Color','Black');

%%

encrypt_time4 = [ 4517
9080
13652
18217
22784
27350
31917
36482
41049
45614
];

dencrypt_time4 = [ 4531
9096
13668
18239
22812
27383
31955
36526
41098
45669
];



%%
encrypt_time8 = [ 5323
10701
16086
21467
26846
32227
37606
42987
48366
53747
];

dencrypt_time8 = [ 5337
1718
16102
21488
26873
32260
37644
43031
48415
53801
];


%%

encrypt_time16 = [ 7674
15427
23188
30944
38698
46455
54210
61966
69720
77476
];


dencrypt_time16 = [ 7688
15443
23205
30966
38726
46487
54248
62009
69769
77530
];

%%
encrypt_time32 = [ 11685
23488
35300
47106
58912
70719
82525
94331
106137
118794
];


dencrypt_time32 = [ 11699
23505
35316
47127
58939
70752
82562
94373
106236
118053
];

%% 
data_size = [ 8 16 32 64 128];
[A,B]=meshgrid(repeat_number,data_size);

encrypt_final = [encrypt_time2,encrypt_time4,encrypt_time8,encrypt_time16,encrypt_time32]';
dencrypt_final = [dencrypt_time2,dencrypt_time4,dencrypt_time8,dencrypt_time16,dencrypt_time32]';
figure(2)
plot3(A,(B),encrypt_final,'r','LineWidth',2)
hold on
plot3(A,(B),encrypt_final,'bo','LineWidth',2)
grid on

h1=xlabel('加密重复次数');
h2=ylabel('加密字节');
h3=zlabel('加密时间(us)');


figure(3)
plot3(A,(B),dencrypt_final,'k','LineWidth',2)
hold on
plot3(A,(B),dencrypt_final,'g*','LineWidth',2)
grid on

h1=xlabel('解密重复次数');
h2=ylabel('解密字节');
h3=zlabel('解密时间(us)');


%%


average_time = encrypt_final./A./B;
figure(4)
plot3(A,(B),average_time,'r','LineWidth',2)
hold on
plot3(A,(B),average_time,'bo','LineWidth',2)
grid on

h1=xlabel('加密重复次数');
h2=ylabel('加密字节');
h3=zlabel('每字节加密时间(us)');

%%

daverage_time = dencrypt_final./A./B;
figure(5)
plot3(A,(B),daverage_time,'k','LineWidth',2)
hold on
plot3(A,(B),daverage_time,'g*','LineWidth',2)
grid on

h1=xlabel('解密重复次数');
h2=ylabel('解密字节');
h3=zlabel('每字节解密时间(us)');






