% 这个文件是处理16线激光雷达部分数据的
load T_grid_point.mat
len = max(size(T_point.x));

% temp.x = zeros(1,len);
% temp.y = zeros(1,len);
% temp.z = zeros(1,len);

j = 1;
for i = 1:len
    if T_point.z(i) > -0.8
        temp.x(j) = T_point.x(i);
        temp.y(j) = T_point.y(i);
        temp.z(j) = T_point.z(i);
        j = j + 1;
    end
end
figure(1)
plot(temp.y,temp.x , 'r.')
hold on 

plot(0,0,'kx')

h1 = xlabel('$$x (m)$$');
h2 = ylabel('$$y (m)$$');


set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black');
set(gca,'FontName','Times New Roman','FontSize',10.5);
grid on


figure(2)
plot(T_point.y,T_point.x, 'r.')
hold on 

plot(0,0,'kx')

h1 = xlabel('$$x (m)$$');
h2 = ylabel('$$y (m)$$');

set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black');
set(gca,'FontName','Times New Roman','FontSize',10.5);
grid on
