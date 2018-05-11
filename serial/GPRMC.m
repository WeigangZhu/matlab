function GPRMC()

% ����
clc
% ɾ���κ��Ѿ��򿪵Ĵ���
delete(instrfind);
clear s;

% ��ʼ��
buffer_size = 256; % ���û�������С
read_out = char(ones(1,buffer_size)*32); % ���û���������Ϊ256���ո�
length_gprmc = 71; % GPRMC���ĳ���
out = char(ones(1,length_gprmc)*32);
T = 0.2; %���ݲ���Ƶ�ʣ���λs


% ���ô��ڲ���
s = serial('COM4');
set(s,'BaudRate',115200,'StopBits',1,'Parity','none','DataBits',8,'InputBufferSize',buffer_size);
fopen(s);

% ������
while(1)

    read_out = char(fread(s,256)');

    for j=1:256
        if(read_out(j) == '$') % Ѱ����ʼλ��
            if(j ~=1) % �ж�'$'�Ƿ�����ڵ�һλ ���������ϲ���һ�ζ�ȡ���ض�����
                out = [out, read_out(1:j-1)]; 
                parse_gprmc(out); % ���н�������
            elseif(j + length_gprmc <= 256) % ���'$'��λ�ü���length_gprmc��ȻС��256��������ж��ô�����������ȡ
                out = read_out(j:j + length_gprmc);
                parse_gprmc(out); % ���н�������
            else % ���һ�������jλ���ҵ�'$', �����ջ�������Сû�д�������İ������¼�������İ�������һ�ζ�ȡ��ǰһ����ֱ�Ӻϲ��������İ�
                out = read_out(j:end);
            end
            
        end
    end
   

pause(T) % ������ͣʱ��T
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