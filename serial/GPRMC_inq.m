function GPRMC_inq()
%
% �ú����޲��������м����������жϼ��
% ������յ����ݣ��������жϻص�����pscallback
% ��ctrl + c �жϳ��� ��������
%


%% ��ʼ��
% �������幤����
clear
clc

% ɾ���κ��Ѿ��򿪵Ĵ���
delete(instrfind);

% ���ö�ȡλ�ã��ж��Ƿ��ȡ������һ����
global pos;
pos = 1;

% ����GPRMC���ĳ���
global length_gprmc;
length_gprmc = 72; 

global out;
out = char(ones(1,length_gprmc)*32);


%% ���ڳ�ʼ��
global s;
s = serial('COM4');
s.baudrate = 115200;                % ������
s.parity = 'none';                  % ����żУ��
s.stopbits = 1;                     % ֹͣλ
s.databits = 8;                     % ����λ                                                                                 
s.timeout = 10;                     % ���ö��������ʱ��Ϊ10s
s.InputBufferSize = 2560;           % ���뻺������С
s.OutputBufferSize = 2560;          % �����������С
s.ReadAsyncMode = 'continuous';     % �첽ͨ��ʱ��������������
s.BytesAvailableFcnMode = 'byte';   % �жϴ����¼�
s.BytesAvailableFcnCount = 1;       % �����������ݴﵽ1ʱ����ִ�лص�����
s.BytesAvailableFcn = @pscalllback; % �ص�����������Լ�ָ������

fopen(s);

end

function pscalllback(s, ~)
%
% �ú�������Ĭ�ϣ���Ҫ����
%


global pos; 
global out;
global length_gprmc;
    
% ��ȡһ���ֽ�
byte = fread (s, 1, 'uint8');
    
% Ѱ��ͷ '$'
if( byte == '$' && pos == 1)
    out(pos) = byte;
    pos = pos + 1;
elseif( byte ~= '$' && pos <= length_gprmc + 1 && pos ~= 1)
    out(pos) = byte;
    pos = pos + 1;
end
    
%����
if(pos == length_gprmc)
	out                 % ���������GPRMC��
	parse_gprmc(out);   % ��������
	pos = 1;            % �������֮��pos��Ϊ1�����¿�ʼ��һ����
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
    %*******************��γ��ת��Ϊֱ������***********%
    l1 = A1;  %����
    l2 = N1;  %γ��
    L  = 6381372*pi*2;%�����ܳ�  
    W  = L;% ƽ��չ����x������ܳ�  
    H  = L/2;% y��Լ�����ܳ�һ��  
    mill = 2.3;% ����ͶӰ�е�һ����������Χ��Լ������2.3֮��  
    x1 = l1*pi/180;% �����ȴӶ���ת��Ϊ����  
    y1 = l2*pi/180;% ��γ�ȴӶ���ת��Ϊ����  
    y0 = 1.25*log( tan( 0.25*pi +0.4*y1 ) );% ����ͶӰ��ת��  
    % ����תΪʵ�ʾ���  
    x = (W/2)+(W/(2*pi))*x1;  
    y = (H/2)-(H/(2*mill))*y0; 
    % plot(y,x,'ro','linewidth',2)
    %%%ת������
end
