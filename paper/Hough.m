% x0=4;
% y0=2;
% figure(1)
% plot(x0,y0,'*')
% grid on
% hold on 

x0 = 4;
y0 = 8;

x1 = 1;
y1 = 2;

x2 = 3;
y2 = 6;

x3 = 3.5;
y3 = 7;

x4 = 3.5;
y4 = 3;

x5 = 2.5;
y5 = 9;

theta = 0:pi/180:pi;
r0 = x0*cos(theta) + y0*sin(theta);
r1 = x1*cos(theta) + y1*sin(theta);
r2 = x2*cos(theta) + y2*sin(theta);
r3 = x3*cos(theta) + y3*sin(theta);
r4 = x4*cos(theta) + y4*sin(theta);
r5 = x5*cos(theta) + y5*sin(theta);

plot(theta,r0,'r','LineWidth',2)
hold on
plot(theta,r1,'b','LineWidth',2)
plot(theta,r2,'g','LineWidth',2)
plot(theta,r3,'c','LineWidth',2)
plot(theta,r4,'y','LineWidth',2)
plot(theta,r5,'m','LineWidth',2)
grid minor
set(gca,'FontName','Times New Roman','FontSize',16);

h1=xlabel('$$ \theta $$');
h2=ylabel('$$ r $$');

set(h1,'interpreter','latex');
set(h1,'FontName','Times New Roman','Color','Black');

set(h2,'interpreter','latex');
set(h2,'FontName','Times New Roman','Color','Black');


figure(2)
x = [x0, x1, x2];
y = [y0, y1, y2];

xx = [x2, x4, x5];
yy = [y2, y4, y5];


plot(x0,y0,'ro','LineWidth',2)
hold on
plot(x1,y1,'bo','LineWidth',2)
plot(x2,y2,'go','LineWidth',2)
plot(x3,y3,'co','LineWidth',2)
plot(x4,y4,'yo','LineWidth',2)
plot(x5,y5,'mo','LineWidth',2)


plot(x,y,'k-.','LineWidth',2)
plot(xx,yy,'k-.','LineWidth',2)

 xlim([0,6]);
 ylim([0,10]);
set(gca,'FontName','Times New Roman','FontSize',16);
grid minor
h1=xlabel('$$ x $$');
h2=ylabel('$$ y $$');

set(h1,'interpreter','latex');
set(h1,'FontName','Times New Roman','Color','Black');

set(h2,'interpreter','latex');
set(h2,'FontName','Times New Roman','Color','Black');
