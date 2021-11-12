function [ff, mec] = calculate(file)

ttt = 20; %% 数据连续点的要求
% 连续数据若中断，说明不符合条件，在出错处，进行数据的判断，连续值是否达到或超过20，若符合，再进行数据储存计算 
%% 文件获取
% handles    structure with handles and user data (see GUIDATA)
% [filename, pathname] = uigetfile({'*.xlsx','excel文件'},'multiselect','on');%查找文件
% file = fullfile(pathname,filename); %完整路径

% dirs = dir('*.xlsx');       %读取该路径所有xls文件
% dirnum = length(dirs);    %计算文件夹里xls文档的个数         
% dircell = struct2cell(dirs)' ;    % 结构体(struct)转换成元胞类型(cell)，转置一下是让文件名按列排列。
% filenames = dircell(:, 1);   % 第一列是文件名


%% 文件内容

% ff = ["开始时间","终止时间","实车速度","能耗","里程"];
ff = [];
mjl = 0;        %月距离
mv = 0;     %月平均速度
js = 0;  
mec = 0;     %能耗累计值
% for k= 1:dirnum           %文件夹个数
%     filename = filenames{k};
    [~,~,raw] = xlsread(file);
    
    len = size(raw, 1);
    count = 0;  %数据计数使用
    
    
    
 %% 判断数据中连续20个片段保证速度和电流不能为0，时间突变不能超过5s，行驶里程差值>0
    for i = 2:(len-1)              %一天内的行驶数据，len-1 是因为数据寻找过程中采用i，i+1
               
        timestart = raw{i,1};
        timeend = raw{i+1,1};
        [h1,m1,s1] = trans_time(timestart); % 时间处理函数
        [h2,m2,s2] = trans_time(timeend);
        
        
        if h2 - h1 >= 2 || h2 - h1 < 0      %数据之间的差别达到小时的概念
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
        if time >= 5 || time < 0        %判断时间问题以及同一时间的两个数据处理问题
            count = 0;      
            continue;
        end

        if strcmp(raw{i,193}, "非充电状态") == 0      %判断电流是否为0
            count = 0;
            continue;
        end
        
        if strcmp(raw{i,229}, "车辆启动状态") == 0      %判断电流是否为0
            count = 0;
            continue;
        end
        
        count = count + 1;
        
        if count == ttt  %ttt开头
            
            ec = 0;
            v = 0; %车速累计值
            ss = 0;
           
            for j = i-ttt+1:i-1 
                
                dy = [raw{j, 195},raw{j+1, 195}];
                dl = [raw{j, 196},raw{j+1, 196}];
                
                allec = dy .* dl;
                
                x = [0, 1];
                D = trapz(x, allec);
                
                ec = ec + D;    %能耗
                
                v = v + raw{j, 231};           %车速
                
                vv = [raw{j, 231},raw{j+1, 231}];
                
                ss = ss + trapz(x,vv)/3600;     %拟合距离
                
%                 s = s + raw{j+1, 251} - raw{j, 251};        %距离     
            end
            
            avec = ec /36000/ss;      %一段间隔的平均百公里电耗
            v = (v + raw{i-1, 231})/count;
            
            if avec<=0 || v == 0
                count = 0;
                continue;
            end
            
            data1 = cat(2, raw(i-ttt,1), raw(i-1,1),v, avec, ss);
            %           开始时间，终止时间， 实车速度，能耗，里程
            ff = cat(1,ff,data1);
            
            count = 0;
            
            mec = mec + avec;
            mv = mv + v;
            mjl = mjl + ss;
            js = js + 1;
            
        end         %%ttt结尾
    end    %一天内的数据
   
% end
mec = mec / js;
% mv = mv / js;
% 
% information = [mec, mjl, mv];
% xlswrite('sj.xlsx', information);