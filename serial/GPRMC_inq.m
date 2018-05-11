function GPRMC_inq()
%
% 该函数无参数，运行即启动串口中断检测
% 如果接收到数据，即触发中断回调函数pscallback
% 用ctrl + c 中断程序， 结束程序
%


%% 初始化
% 清屏，清工作区
clear
clc

% 删除任何已经打开的串口
delete(instrfind);

% 设置读取位置，判断是否读取完整的一个包
global pos;
pos = 1;

% 设置GPRMC串的长度
global length_gprmc;
length_gprmc = 72; 

global out;
out = char(ones(1,length_gprmc)*32);


%% 串口初始化
global s;
s = serial('COM4');
s.baudrate = 115200;                % 波特率
s.parity = 'none';                  % 无奇偶校验
s.stopbits = 1;                     % 停止位
s.databits = 8;                     % 数据位                                                                                 
s.timeout = 10;                     % 设置读操作完成时间为10s
s.InputBufferSize = 2560;           % 输入缓冲区大小
s.OutputBufferSize = 2560;          % 输出缓冲区大小
s.ReadAsyncMode = 'continuous';     % 异步通信时，连续读串口数
s.BytesAvailableFcnMode = 'byte';   % 中断触发事件
s.BytesAvailableFcnCount = 1;       % 当缓冲区数据达到1时，就执行回调函数
s.BytesAvailableFcn = @pscalllback; % 回调函数，完成自己指定功能

fopen(s);

end

function pscalllback(s, ~)
%
% 该函数参数默认，不要更改
%


global pos; 
global out;
global length_gprmc;
    
% 读取一个字节
byte = fread (s, 1, 'uint8');
    
% 寻找头 '$'
if( byte == '$' && pos == 1)
    out(pos) = byte;
    pos = pos + 1;
elseif( byte ~= '$' && pos <= length_gprmc + 1 && pos ~= 1)
    out(pos) = byte;
    pos = pos + 1;
end
    
%解析
if(pos == length_gprmc)
	out                 % 输出解析的GPRMC串
	parse_gprmc(out);   % 解析函数
	pos = 1;            % 解析完成之后pos置为1，重新开始下一个包
end
    
end

function parse_gprmc(out)

    a = out(19:30);
    b = out(33:45);
    c = out(48:53);
    A = str2num(a);
    N = str2num(b);
    E = str2num(c);
    A1 = fix(A/100)+mod(A,100)/60;
    N1 = fix(N/100)+mod(N,100)/60;
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
