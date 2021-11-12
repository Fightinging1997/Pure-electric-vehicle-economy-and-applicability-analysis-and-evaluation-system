function varargout = pingheng(varargin)
% PINGHENG MATLAB code for pingheng.fig
%      PINGHENG, by itself, creates a new PINGHENG or raises the existing
%      singleton*.
%
%      H = PINGHENG returns the handle to a new PINGHENG or the handle to
%      the existing singleton*.
%
%      PINGHENG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PINGHENG.M with the given input arguments.
%
%      PINGHENG('Property','Value',...) creates a new PINGHENG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pingheng_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pingheng_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pingheng

% Last Modified by GUIDE v2.5 11-Jun-2020 18:05:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pingheng_OpeningFcn, ...
                   'gui_OutputFcn',  @pingheng_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before pingheng is made visible.
function pingheng_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pingheng (see VARARGIN)
set(gcf,'numbertitle','off','name','经济性分析');
% Choose default command line output for pingheng
global sumc sums
set(handles.bian,'visible','off');
handles.output = hObject;
set(handles.edit7,'string',num2str(sumc));
set(handles.edit8,'string',num2str(sums));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes pingheng wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pingheng_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global number numbers jun1 jun2
cd = length(number);
% sum1 = 0;
% sum2 = 0;
% if cd == 1
%     jun1 = q;
%     jun2 = numbers(1);
% else  
%     for i = 1:(cd-1)
%         cha = number(i+1)-number(i);
%         sum1 = sum1 + cha;
%     end
%     jun1 = sum1/(cd-1);
%     for i = 1:(cd-1)
%         cha = numbers(i+1)-numbers(i);
%         sum2 = sum2 + cha;
%     end
%     jun2 = sum2/(cd-1);
% end    
s = number(end);
i = numbers(end);
if s>=i                       %成本大于收入
    if (jun1>=jun2)&&(s>=i)            %成本大于收入且成本的增加大于收入的增加
        set(handles.edit1,'string','N'); 
        set(handles.edit4,'string','N');
        set(handles.edit5,'string','N');
        set(handles.edit6,'string','N');
        set(handles.bian,'visible','on');
    else                       %成本大于收入且成本的增加小于收入的增加
        tt = handles.tt;
        abcd = handles.abcd;
        abc = handles.abc;
        year = 2020+tt-1+(abc(end-1)-abcd(end-1))/(jun2-jun1);
        set(handles.edit1,'string',year);
        set(handles.bian,'visible','off');
        roi = (abcd(end)/abc(end))*100;
        set(handles.edit4,'string',round(roi,1));
        ai = (abc(end-1)-abcd(end-1))/(jun2-jun1);
        set(handles.edit5,'string',num2str(round(abc(end-1)+jun1*ai)));
        set(handles.edit6,'string',num2str(round(abcd(end-1)+jun2*ai)));
    end
else             %成本小于收入
    for i=2:cd
        if number(i)<=numbers(i) 
%             if i == 2              %购置第一年时成本小于收入，分情况
%                 if c==1
%                     bs = number(1)/(numbers(2)-numbers(1)-number(2)+number(1));
%                     year = 2020-cd+1+bs;
%                 else
%                     year = 2020-cd+1;
%                 end
%                     set(handles.edit1,'string',year);
%                     roi = (numbers(2)/number(2))*100;
%                     set(handles.edit4,'string',round(roi,1));
%                     set(handles.edit5,'string',num2str(round(number(1)+(number(2)-number(1))*bs)));
%                     set(handles.edit6,'string',num2str(round(numbers(2)*bs)));
%             else
                bs = (number(i-1)-numbers(i-1))/(numbers(i)-numbers(i-1)-number(i)+number(i-1));
                year = 2020-cd+i-1+bs;
                set(handles.edit1,'string',year);
                roi = (numbers(i)/number(i))*100;
                set(handles.edit4,'string',round(roi,1));
                set(handles.edit5,'string',number(i-1)+bs*(number(i)-number(i-1)));
                set(handles.edit6,'string',numbers(i-1)+bs*(numbers(i)-numbers(i-1)));
%             end
            break
        end
    end
end



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
anniu = get(handles.togglebutton1,'value');
if anniu == 1
    set(handles.togglebutton1,'string','原图像','FontSize',40);
else
    set(handles.togglebutton1,'string','预测图像');
end
global number numbers jun1 jun2 shijian ghfeiyong
changdu = length(number)-1;
s = number(end);
i = numbers(end);
set(handles.edit2,'string',num2str(round(number(end))));
set(handles.edit3,'string',num2str(round(numbers(end))));
tt = 0;
d = changdu;
abc = number;           %成本
abcd = numbers;         %收益
if s >= i
    while s >= i
        s = s + jun1;
        abc(end+1) = s;
        i = i + jun2;
        abcd(end+1) = i;
        tt = tt + 1;
        d = d + 1;
        if d >= str2double(shijian)
            s = s + str2double(ghfeiyong);
            d = d - str2double(shijian);
        end
        if tt>= 20
            break
        end
    end
else
    tt=0;   
end
handles.tt = tt;
tuxiang = get(handles.togglebutton1,'value');
if tuxiang == 1
    x1 = [2020-changdu:2020];
    y1 = number;
else
    x1 = [2020-changdu:2020+tt];
%     abc = number;
%     for i=1:tt
%         abc(end+1) = abc(end)+jun1;
%     end
    y1 = abc;
    handles.abc = abc;
end
plot(x1,y1,'r:*','LineWidth',2,'MarkerSize',12,...
    'MarkerEdgeColor','r','MarkerFaceColor','r');
grid on
hold on
if tuxiang == 1
    x2 = [2020-changdu:2020];
    y2 = numbers;
else
    x2 = [2020-changdu:2020+tt];
%     abcd = numbers;    
%     for i=1:tt
%         abcd(end+1) = abcd(end)+jun2;  
%     end
    y2 = abcd;
    handles.abcd = abcd;
end
plot(x2,y2,'g-.v','LineWidth',2,'MarkerSize',12,...
    'MarkerEdgeColor','c','MarkerFaceColor','g');

y3 = y1-y2;
plot(x1,y3,'c--h','LineWidth',2,'MarkerSize',12,...
    'MarkerEdgeColor','g','MarkerFaceColor','c');
title('\fontname{宋体}\fontsize{20}纯电动汽车成本与收入分析');
xlabel('\fontname{宋体}\fontsize{16}时间');
ylabel('\fontname{宋体}\fontsize{16}单位：元');
legend('成本','收益','差额','Location','northwest');
legend('boxoff');
axis auto;
hold off
grid on
guidata(hObject,handles);



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
