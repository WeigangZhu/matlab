clear,clc
lidarpoint = load('P201803251443_1_2.md');

Pedge = max(size(lidarpoint));
Ledge = 1;
figure(1)
plot3(lidarpoint(Ledge:Pedge,1),lidarpoint(Ledge:Pedge,2),lidarpoint(Ledge:Pedge,3),'r.');
hold on
grid on

j=1;
for i=1:Pedge
    if(lidarpoint(i,3)>0)
        point.x(j) = lidarpoint(i,1);
        point.y(j) = lidarpoint(i,2);
        point.z(j) = lidarpoint(i,3);
        j = j+1;
    end
end
figure(3)
plot3(point.x, point.y, point.z, 'ro')

figure(2)
objectpoint = load('O201803251444_1_2.md');
Oedge = max(size(objectpoint));
% Ledge = 1;
hold on 
plot(lidarpoint(Ledge:Pedge,1),lidarpoint(Ledge:Pedge,2), 'r*')

plot(objectpoint(Ledge:Oedge,1),objectpoint(Ledge:Oedge,2),'bo');
j = 1;
grid on

for i=1:Oedge
    
    if((objectpoint(i,4)^2 + objectpoint(i,5)^2)^0.5 >0.1)
        Obj.x(j) = objectpoint(j,1);
        Obj.y(j) = objectpoint(j,2);
        j = j+1;
    end
    % objectpoint(i,4)
end

FOedge = max(size(Obj.x))
plot(Obj.x,Obj.y,'kx');




















