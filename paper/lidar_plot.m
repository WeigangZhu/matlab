lidarpoint = load('lidar_filter001.txt');
% lidarin = load('file.txt');
edge = 20;
Ledge = 1;
figure(1)
plot3(lidarpoint(Ledge:edge,1),lidarpoint(Ledge:edge,2),lidarpoint(Ledge:edge,3),'r*');
hold on
grid on
% figure(2)
% plot3(lidarin(:,1),lidarin(:,2),lidarin(:,3),'r.');
% grid on
% for i=1:max(size(lidarin))
%     plot3(lidarin(i,1),lidarin(i,2),lidarin(i,3),'*','color',[1,1,lidarin(i,4)]/255);
%     hold on
% end
lidar_minus=load('1-.txt');
plot(lidar_minus(:,1),lidar_minus(:,2))