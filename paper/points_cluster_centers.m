clear, clc

figure(1)
points = load('./cluster_data/P2E03/points_cluster.txt');
center = load('./cluster_data/P2E03/centers_cluster.txt');

plot(points(:,1),points(:,2),'k.', 'linewidth',  2)
hold on
plot(center(:,1),center(:,2),'rx', 'linewidth',  2)

h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
legend('聚类点云','聚类中心')
% set(gca,'FontName','Times New Roman','FontSize',10.5);

%%
figure(2)
points2 = load('./cluster_data/P2E04/points_cluster.txt');
center2 = load('./cluster_data/P2E04/centers_cluster.txt');


plot(points2(:,1),points2(:,2),'k.', 'linewidth',  2)
hold on
plot(center2(:,1),center2(:,2),'rx', 'linewidth',  2)


h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
legend('聚类点云','聚类中心')
% set(gca,'FontName','Times New Roman','FontSize',10.5);

%% 
figure(3)
points3 = load('./cluster_data/P2E05/points_cluster.txt');
center3 = load('./cluster_data/P2E05/centers_cluster.txt');


plot(points3(:,1),points3(:,2),'k.', 'linewidth',  2)
hold on
plot(center3(:,1),center3(:,2),'rx', 'linewidth',  2)


h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
legend('聚类点云','聚类中心')
%set(gca,'FontName','Times New Roman','FontSize',10.5);
 %%
figure(4)
noise  = load('./cluster_data/P2E03/noise.txt');
plot(noise(:,1),noise(:,2),'r.', 'linewidth',  2)
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca,'FontName','Times New Roman','FontSize',10.5);
%%
figure(5)
noise2  = load('./cluster_data/P2E04/noise.txt');
plot(noise2(:,1),noise2(:,2),'r.', 'linewidth',  2)
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca,'FontName','Times New Roman','FontSize',10.5);

%%
figure(6)
noise3  = load('./cluster_data/P2E05/noise.txt');
plot(noise3(:,1),noise3(:,2),'r.', 'linewidth',  2)
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca,'FontName','Times New Roman','FontSize',10.5);

