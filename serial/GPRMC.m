function GPRMC()

% 清屏
clc
% 删除任何已经打开的串口
delete(instrfind);
clear s;

% 初始化
buffer_size = 256; % 设置缓冲区大小
read_out = char(ones(1,buffer_size)*32); % 设置缓冲区数据为256个空格
length_gprmc = 71; % GPRMC串的长度
out = char(ones(1,length_gprmc)*32);
T = 0.2; %数据采样频率，单位s


% 设置串口并打开
s = serial('COM4');
set(s,'BaudRate',115200,'StopBits',1,'Parity','none','DataBits',8,'InputBufferSize',buffer_size);
fopen(s);

% 主程序
while(1)

    read_out = char(fread(s,256)');

    for j=1:256
        if(read_out(j) == '$') % 寻找起始位置
            if(j ~=1) % 判断'$'是否出现在第一位 ，如果否，则合并上一次读取被截断数据
                out = [out, read_out(1:j-1)]; 
                parse_gprmc(out); % 运行解析函数
            elseif(j + length_gprmc <= 256) % 如果'$'的位置加上length_gprmc依然小于256，则可以判定该串可以完整读取
                out = read_out(j:j + length_gprmc);
                parse_gprmc(out); % 运行解析函数
            else % 最后一种情况，j位置找到'$', 但最终缓冲区大小没有存放完整的包，则记录不完整的包，对下一次读取的前一部分直接合并成完整的包
                out = read_out(j:end);
            end
            
        end
    end
   

pause(T) % 设置暂停时间T
end

end


function parse_gprmc(out)

    a = out(19:30);
    b = out(33:45);
    c = out(48:53);
    A = str2num(a);
    N = str2num(b);
    E = str2num(c);
    A1 = fix(A/100)+mod(A,100)/60
    N1 = fix(N/100)+mod(N,100)/60
    d = [A1 N1]; 
    % plot(A1,N1,'ro','linewidth',1);
    %*******************经纬度转换为直角坐标***********%
    l1 = A1;  %经度
    l2 = N1;  %纬度
    L  = 6381372*pi*2;%地球周长  
    W  = L;% 平面展开后，x轴等于周长  
    H  = L/2;% y轴约等于周长一半  
    mill = 2.3;% 米勒投影中的一个常数，范围大约在正负2.3之间  
    x1 = l1*pi/180;% 将经度从度数转换为弧度  
    y1 = l2*pi/180;% 将纬度从度数转换为弧度  
    y0 = 1.25*log( tan( 0.25*pi +0.4*y1 ) );% 米勒投影的转换  
    % 弧度转为实际距离  
    x = (W/2)+(W/(2*pi))*x1;  
    y = (H/2)-(H/(2*mill))*y0; 
    % plot(y,x,'ro','linewidth',2)
    %%%转换结束
end