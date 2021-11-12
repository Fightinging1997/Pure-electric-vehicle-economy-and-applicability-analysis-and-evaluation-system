function [ff, mec] = calculate(file)

ttt = 20; %% �����������Ҫ��
% �����������жϣ�˵���������������ڳ������������ݵ��жϣ�����ֵ�Ƿ�ﵽ�򳬹�20�������ϣ��ٽ������ݴ������ 
%% �ļ���ȡ
% handles    structure with handles and user data (see GUIDATA)
% [filename, pathname] = uigetfile({'*.xlsx','excel�ļ�'},'multiselect','on');%�����ļ�
% file = fullfile(pathname,filename); %����·��

% dirs = dir('*.xlsx');       %��ȡ��·������xls�ļ�
% dirnum = length(dirs);    %�����ļ�����xls�ĵ��ĸ���         
% dircell = struct2cell(dirs)' ;    % �ṹ��(struct)ת����Ԫ������(cell)��ת��һ�������ļ����������С�
% filenames = dircell(:, 1);   % ��һ�����ļ���


%% �ļ�����

% ff = ["��ʼʱ��","��ֹʱ��","ʵ���ٶ�","�ܺ�","���"];
ff = [];
mjl = 0;        %�¾���
mv = 0;     %��ƽ���ٶ�
js = 0;  
mec = 0;     %�ܺ��ۼ�ֵ
% for k= 1:dirnum           %�ļ��и���
%     filename = filenames{k};
    [~,~,raw] = xlsread(file);
    
    len = size(raw, 1);
    count = 0;  %���ݼ���ʹ��
    
    
    
 %% �ж�����������20��Ƭ�α�֤�ٶȺ͵�������Ϊ0��ʱ��ͻ�䲻�ܳ���5s����ʻ��̲�ֵ>0
    for i = 2:(len-1)              %һ���ڵ���ʻ���ݣ�len-1 ����Ϊ����Ѱ�ҹ����в���i��i+1
               
        timestart = raw{i,1};
        timeend = raw{i+1,1};
        [h1,m1,s1] = trans_time(timestart); % ʱ�䴦����
        [h2,m2,s2] = trans_time(timeend);
        
        
        if h2 - h1 >= 2 || h2 - h1 < 0      %����֮��Ĳ��ﵽСʱ�ĸ���
            count = 0;
            continue;
        end
        if h2 - h1 == 1
            m2 = m2 + 60;
        end
        if m2 - m1 >= 2 || m2 - m1 < 0
            count = 0;           
            continue;
        end

        if m2 - m1 == 1
            s2 = s2 + 60;
        end
        
        time = s2 - s1;
        if time >= 5 || time < 0        %�ж�ʱ�������Լ�ͬһʱ����������ݴ�������
            count = 0;      
            continue;
        end

        if strcmp(raw{i,193}, "�ǳ��״̬") == 0      %�жϵ����Ƿ�Ϊ0
            count = 0;
            continue;
        end
        
        if strcmp(raw{i,229}, "��������״̬") == 0      %�жϵ����Ƿ�Ϊ0
            count = 0;
            continue;
        end
        
        count = count + 1;
        
        if count == ttt  %ttt��ͷ
            
            ec = 0;
            v = 0; %�����ۼ�ֵ
            ss = 0;
           
            for j = i-ttt+1:i-1 
                
                dy = [raw{j, 195},raw{j+1, 195}];
                dl = [raw{j, 196},raw{j+1, 196}];
                
                allec = dy .* dl;
                
                x = [0, 1];
                D = trapz(x, allec);
                
                ec = ec + D;    %�ܺ�
                
                v = v + raw{j, 231};           %����
                
                vv = [raw{j, 231},raw{j+1, 231}];
                
                ss = ss + trapz(x,vv)/3600;     %��Ͼ���
                
%                 s = s + raw{j+1, 251} - raw{j, 251};        %����     
            end
            
            avec = ec /36000/ss;      %һ�μ����ƽ���ٹ�����
            v = (v + raw{i-1, 231})/count;
            
            if avec<=0 || v == 0
                count = 0;
                continue;
            end
            
            data1 = cat(2, raw(i-ttt,1), raw(i-1,1),v, avec, ss);
            %           ��ʼʱ�䣬��ֹʱ�䣬 ʵ���ٶȣ��ܺģ����
            ff = cat(1,ff,data1);
            
            count = 0;
            
            mec = mec + avec;
            mv = mv + v;
            mjl = mjl + ss;
            js = js + 1;
            
        end         %%ttt��β
    end    %һ���ڵ�����
   
% end
mec = mec / js;
% mv = mv / js;
% 
% information = [mec, mjl, mv];
% xlswrite('sj.xlsx', information);