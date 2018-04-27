clear,clc
load MinPtseClusterNumber_d.mat;
hold on
X = reshape(MinPtseClusterNumber(:,1),[9,4]);
Y = reshape(MinPtseClusterNumber(:,2),[9,4]);
Z = reshape(MinPtseClusterNumber(:,3),[9,4]);
R = reshape(MinPtseClusterNumber(:,4),[9,4]);

xyz = MinPtseClusterNumber;
% surf(X, Y, Z)
figure(1)
grid on
plot3(xyz(:,1),xyz(:,2),xyz(:,3),'rx', 'linewidth',  2)
hold on
plot3(xyz(1:9,1),xyz(1:9,2),xyz(1:9,3),'b--', 'linewidth',  2)
plot3(xyz(10:18,1),xyz(10:18,2),xyz(10:18,3),'b--', 'linewidth',  2)
plot3(xyz(19:27,1),xyz(19:27,2),xyz(19:27,3),'b--', 'linewidth',  2)
plot3(xyz(28:36,1),xyz(28:36,2),xyz(28:36,3),'b--', 'linewidth',  2)

h1 = xlabel('$$MinPts$$');
h2 = ylabel('$$\epsilon$$');
h3 = zlabel('聚类簇数');

set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black','FontSize',10.5);

% set(gca,'FontName','Times New Roman','FontSize',10.5);
view(3)

figure(2)

plot3(xyz(:,1),xyz(:,2),xyz(:,4)/333,'rx', 'linewidth',  2)
hold on
plot3(xyz(1:9,1),xyz(1:9,2),xyz(1:9,4)/333,'b--', 'linewidth',  2)
plot3(xyz(10:18,1),xyz(10:18,2),xyz(10:18,4)/333,'b--', 'linewidth',  2)
plot3(xyz(19:27,1),xyz(19:27,2),xyz(19:27,4)/333,'b--', 'linewidth',  2)
plot3(xyz(28:36,1),xyz(28:36,2),xyz(28:36,4)/333,'b--', 'linewidth',  2)

h1 = xlabel('$$MinPts$$');
h2 = ylabel('$$\epsilon$$');
h3 = zlabel('聚类滤波百分比');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
% set(gca,'FontName','Times New Roman','FontSize',10.5);
view(3)
