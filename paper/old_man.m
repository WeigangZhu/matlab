Line_width = 1;
Font_size =16;

%% 中国人口增长
figure(1)
china_people =[
2016 136976
2023 138299
2030 139100
2017 137237
2024 138471
2031 139159
2018 137441
2025 138620
2032  139210
2019  137594
2026 138747
2033 139253
2020 137702
2027 138857
2034 139290
2021 137969
2028 138951
2035 139322
2022 138100
2029 139031
2036 139349];

x =  china_people(:,1) ;
y =  china_people(:,2) ;
plot(x,y, '*')
grid on

%% 中国人口老龄化
figure(2)
old_people = [
2011 1.85
2012 1.94
2013 2.02
2014 2.12
2015 2.21
2025 3
2035 4
2055 4.87];
plot(old_people(:,1), old_people(:,2), 'ro')
hx = xlabel('年份');
hy = ylabel('老龄人口数量（亿人）');
grid on
hold on
plot(old_people(:,1), old_people(:,2), 'r','LineWidth',Line_width )

% set(gca,'FontName','Times New Roman','FontSize',Font_size);

% set(hx,'interpreter','latex');
% set(hx,'FontSize',Font_size,'FontWeight','Bold','FontName','Times New Roman','Color','Black');

figure(3)
bar(old_people(:,1), old_people(:,2))