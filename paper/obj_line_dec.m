clear,clc
close all
%%
obj = floor(load('./obj_line/obj.txt'));
line1 = load('./obj_line/T2L5G05.txt');
line2 = load('./obj_line/T2L5G10.txt');
line3 = load('./obj_line/T2L5G15.txt');
line4 = load('./obj_line/T2L5G20.txt');
line_min1 = load('./obj_line/T2L5G05_min.txt');
line_min2 = load('./obj_line/T2L5G10_min.txt');
line_min3 = load('./obj_line/T2L5G15_min.txt');
line_min4 = load('./obj_line/T2L5G20_min.txt');

font_size = 12;
%%
f1 = figure(1);
p1 = plot(obj(:,1), obj(:,2), 'kx', 'linewidth', 2);
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',font_size);
set(gca, 'FontName','Times New Roman','FontSize',font_size)

hold on

len1 = max(size(line1));

for i = 1:len1
    
    X1= [line1(i, 1), line1(i,3)];
    Y1= [line1(i, 2), line1(i,4)];
    px = plot(X1, Y1, 'b--', 'linewidth', 2);
    px.HandleVisibility = 'off';
    
end
px.HandleVisibility = 'on';
xL0 = line_min1(1,1);
yL0 = line_min1(1,2);
xL1 = line_min1(1,3);
yL1 = line_min1(1,4);
xR0 = line_min1(1,5);
yR0 = line_min1(1,6);
xR1 = line_min1(1,7);
yR1 = line_min1(1,8);
plot([xL0, xL1], [yL0, yL1], 'r', 'linewidth', 2)
p3 = plot([xR0, xR1], [yR0, yR1], 'r', 'linewidth', 2);
p3.HandleVisibility ='off';
L= legend('点云', '可能的直线', '最终的直线');
L.Location = 'best';
L.FontName = '宋体';

saveas(f1, './line_dec_lineGAP/5.emf');
%%
f2 = figure(2);
plot(obj(:,1), obj(:,2), 'kx', 'linewidth', 2)
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',font_size);
set(gca, 'FontName','Times New Roman','FontSize',font_size)

hold on

len2 = max(size(line2));

for i = 1:len2
    
    X1= [line2(i, 1), line2(i,3)];
    Y1= [line2(i, 2), line2(i,4)];
    px2 = plot(X1, Y1, 'b--', 'linewidth', 2);
    px2.HandleVisibility = 'off';
    
end
px2.HandleVisibility = 'on';
xL0 = line_min2(1,1);
yL0 = line_min2(1,2);
xL1 = line_min2(1,3);
yL1 = line_min2(1,4);
xR0 = line_min2(1,5);
yR0 = line_min2(1,6);
xR1 = line_min2(1,7);
yR1 = line_min2(1,8);
plot([xL0, xL1], [yL0, yL1], 'r', 'linewidth', 2)
p3 = plot([xR0, xR1], [yR0, yR1], 'r', 'linewidth', 2);
p3.HandleVisibility ='off';
L= legend('点云', '可能的直线', '最终的直线');
L.Location = 'best';
L.FontName = '宋体';

saveas(f2, './line_dec_lineGAP/10.emf');

%%
f3 = figure(3);

plot(obj(:,1), obj(:,2), 'kx', 'linewidth', 2)
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',font_size);
set(gca, 'FontName','Times New Roman','FontSize',font_size)

hold on

len3 = max(size(line3));

for i = 1:len3
    
    X1= [line3(i, 1), line3(i,3)];
    Y1= [line3(i, 2), line3(i,4)];
    px3 = plot(X1, Y1, 'b--', 'linewidth', 2);
    px3.HandleVisibility = 'off';
    
end
px3.HandleVisibility = 'on';

xL0 = line_min3(1,1);
yL0 = line_min3(1,2);
xL1 = line_min3(1,3);
yL1 = line_min3(1,4);
xR0 = line_min3(1,5);
yR0 = line_min3(1,6);
xR1 = line_min3(1,7);
yR1 = line_min3(1,8);
plot([xL0, xL1], [yL0, yL1], 'r', 'linewidth', 2)
p3 = plot([xR0, xR1], [yR0, yR1], 'r', 'linewidth', 2);
p3.HandleVisibility ='off';
L= legend('点云', '可能的直线', '最终的直线');
L.Location = 'best';
L.FontName = '宋体';

saveas(f3, './line_dec_lineGAP/15.emf');

%%
f4 = figure(4);
plot(obj(:,1), obj(:,2), 'kx', 'linewidth', 2)
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',font_size);
set(gca, 'FontName','Times New Roman','FontSize',font_size)

hold on

len4 = max(size(line4));

for i = 1:len4
    
    X1= [line4(i, 1), line4(i,3)];
    Y1= [line4(i, 2), line4(i,4)];
    px4 = plot(X1, Y1, 'b--', 'linewidth', 2);
    px4.HandleVisibility = 'off';
    
end
px4.HandleVisibility  = 'on';
xL0 = line_min4(1,1);
yL0 = line_min4(1,2);
xL1 = line_min4(1,3);
yL1 = line_min4(1,4);
xR0 = line_min4(1,5);
yR0 = line_min4(1,6);
xR1 = line_min4(1,7);
yR1 = line_min4(1,8);
plot([xL0, xL1], [yL0, yL1], 'r', 'linewidth', 2)
p3 = plot([xR0, xR1], [yR0, yR1], 'r', 'linewidth', 2);
p3.HandleVisibility ='off';
L= legend('点云', '可能的直线', '最终的直线');
L.Location = 'best';
L.FontName = '宋体';
saveas(f4, './line_dec_lineGAP/20.emf');