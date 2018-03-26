clear,clc

%% 文件读取
% file_name_in = './data/P201803251539_1_2.md';
file_name_in = './data/WaiHuan.txt';

fidin=fopen(file_name_in,'r');
% fidout=fopen(fileout,'w');
% fprintf(fidout,'%s/n',tline);
% fclose(fidout);

current_line = 0;
start_line = 1e6;
end_line = 2e7;
i = 1;

while ~feof(fidin) % 判断是否为文件末尾 
    line_text = fgetl(fidin); % 从文件读行 
    current_line = current_line+1; 
    
    if current_line > start_line && current_line < end_line
        line_number = double(str2num(line_text));
        Point.x(i) = line_number(1);
        Point.y(i) = line_number(2);
        Point.z(i) = line_number(3);
        i = i+1;
    end
end
fclose(fidin);

%% 
figure(1)
plot3(Point.x, Point.y, Point.z, 'r.')
h1 = xlabel('$$x (m)$$');
h2 = ylabel('$$y (m)$$');
h3 = zlabel('$$z (m)$$');

set([h1, h2, h3],'interpreter','latex');
set([h1, h2, h3],'FontName','Times New Roman','Color','Black');
set(gca,'FontName','Times New Roman','FontSize',10.5);
grid minor

