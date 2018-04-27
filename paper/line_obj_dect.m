clear,clc
obj = floor(load('./suteng/obj1.txt')* 10);
line = floor(load('./suteng/line.txt'));
obj_len = max(size(obj));
line_len = max(size(line));

%%
f1 = figure(1);
set(f1, 'position', [500, 300, 800, 400]);
plot(obj(:,2), obj(:, 1), 'rx', 'linewidth', 2)
grid on
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',12);
set(gca, 'FontName','Times New Roman','FontSize',12)
% set(gca,'xtick',[-250 -200 -150 -100 -50 0 50 100 150]);
set(gca,'xticklabel',{'-25','-20','-15','-10','-5','0', '5', '10', '15'});
set(gca,'yticklabel',{'-20','-15','-10','-5','0', '5', '10', '15'});

%%
f2 = figure(2);
set(f2, 'position', [500, 300, 800, 400]);

for i = 1:line_len
    hold on
    x0 = line(i,1);
    x1 = line(i,2);
    y0 = line(i,3);
    y1 = line(i,4);
    plot([x0, x1], [y0, y1],'b--',  'linewidth', 2)
end
plot(obj(:,2), obj(:, 1), 'rx', 'linewidth', 2)
grid on
h1 = xlabel('$$x(m)$$');
h2 = ylabel('$$y(m)$$');
grid on
set([h1, h2],'interpreter','latex');
set([h1, h2],'FontName','Times New Roman','Color','Black', 'FontSize',12);
set(gca, 'FontName','Times New Roman','FontSize',12)
set(gca,'xticklabel',{'-25','-20','-15','-10','-5','0', '5', '10', '15'});
set(gca,'yticklabel',{'-20','-15','-10','-5','0', '5', '10', '15'});
