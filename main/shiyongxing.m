function varargout = shiyongxing(varargin)
% SHIYONGXING MATLAB code for shiyongxing.fig
%      SHIYONGXING, by itself, creates a new SHIYONGXING or raises the existing
%      singleton*.
%
%      H = SHIYONGXING returns the handle to a new SHIYONGXING or the handle to
%      the existing singleton*.
%
%      SHIYONGXING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHIYONGXING.M with the given input arguments.
%
%      SHIYONGXING('Property','Value',...) creates a new SHIYONGXING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before shiyongxing_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to shiyongxing_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help shiyongxing

% Last Modified by GUIDE v2.5 06-Jan-2021 22:21:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @shiyongxing_OpeningFcn, ...
                   'gui_OutputFcn',  @shiyongxing_OutputFcn, ...
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


% --- Executes just before shiyongxing is made visible.
function shiyongxing_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to shiyongxing (see VARARGIN)

% Choose default command line output for shiyongxing
handles.output = hObject;
set(gcf,'numbertitle','off','name','���綯���������Է���');
global moshi diqu
set(handles.popupmenu1,'value',moshi);
value = diqu;
switch value
    case {25,26,33,23,31,32,30}
        set(handles.popupmenu2,'value',1);
    case {29,34,10,22,1,7,5,3,14}
        set(handles.popupmenu2,'value',2);
    case {16,12,21,18,4,6,28,11,20,8}
        set(handles.popupmenu2,'value',3);
    case {17,2,13,27,9,24,19}
        set(handles.popupmenu2,'value',4);
    otherwise
        set(handles.popupmenu2,'value',5);
end

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes shiyongxing wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = shiyongxing_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[xh, cd] = shiyongxuqiu();
handles.xh = xh;
handles.cd = cd;
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[jt, dx] = jiaotongdili();
handles.jt = jt;
handles.dx = dx;
guidata(hObject, handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value1 = get(handles.popupmenu1,'value');
yycj = get(handles.popupmenu1,'string');
wenzi1 = [ '���Ĵ��綯����Ӧ�ó�����ҪΪ',yycj{value1},'��'];
switch value1
    case 1
        cj = 9;
    case 2
        cj = 8;
    case 3
        cj = 6;
    otherwise
        cj = 7;
end
value2 = get(handles.popupmenu2,'value');
qhtj = get(handles.popupmenu2,'string');
switch value2
    case 1
        qh = -20;
        wenzi2 = ['�������ó�������������ҪΪ',qhtj{value2},'��1��ƽ�����¡�-10�棻7��ƽ�����¡�25�棬�ڹ���Ļ����µ�����ܺ͸��������ܵ��ܴ��Ӱ�졣��˲�����ʹ�ô��綯������'];
    case 2
        qh = 18;
        wenzi2 = ['�������ó�������������ҪΪ',qhtj{value2},'��1��ƽ������-10~0�棻7��ƽ������18~28�棬�����¶�����٣����綯�������ڴ����ʱ����ʹ�ã������ԽϺã�'];
    case 3
        qh = 25;
        wenzi2 = ['�������ó�������������ҪΪ',qhtj{value2},'��1��ƽ������0~10�棻7��ƽ������25~30�棬���½��ºͣ��¶����ˣ����綯���������Ժã�'];
    case 4
        qh = 28;
        wenzi2 = ['�������ó�������������ҪΪ',qhtj{value2},',1��ƽ������>10�棻7��ƽ������25~29�棬���½�ů���ļ����и��£����綯�����������Ժã�'];
    otherwise
        qh = 30;
        wenzi2 = ['�������ó�������������ҪΪ',qhtj{value2},'��1��ƽ������0~13�棻7��ƽ������18~25�棬���½����ˣ����綯�����������Էǳ��ã�'];
end
xh = handles.xh;
cd = handles.cd;
jt = handles.jt;
dx = handles.dx;
if xh == 5
    wenzi3 = '��������ʹ��Ҫ����Ҫѡ��������̣������ڴ��綯�����Ķ�ʱ������������������Խϲ';
else
    wenzi3 = '��������ʹ��Ҫ����Ҫѡ���������̣����綯������������̿��Ժܺõ�����������Ҫ�������ԽϺã�';
end
switch cd
    case 3
        wenzi4 = '��������ʹ��������Ҫʹ�ÿ���������ճ�ʹ�ã����Ĺ�����ʹ�����ʶ�ʱ���Ҫ����������綯�����ĳ��ʱ����Խϳ����������Ե�صı���Ҳ�ϲ�����Խϲ';
    case 5
        wenzi4 = '��������ʹ��������Ҫ�Կ��Ϊ��������Ϊ���������ճ�ʹ�ã����Ĺ�����ʹ�����ʶ�ʱ���Ҫ�������ż�����Խ������䣬���綯�����ĳ��ʱ����Խϳ����ڴ��������¶���ʹ�õ������Խϲ';
    case 7
        wenzi4 = '��������ʹ��������Ҫ������Ϊ�������Ϊ���������ճ�ʹ�ã����Ĺ�����ʹ�����ʶ�ʱ���Ҫ��Ͽ��ɣ�ż�����Խ��п�䣬���綯�����ĳ��ʱ����Խϳ����ڴ��������¶���ʹ�õ������ԽϺã�';
    case 9
        wenzi4 = '��������ʹ��������Ҫ�������������ճ�ʹ�ã����Ĺ�����ʹ�����ʶ�ʱ���Ҫ��п��ɣ����綯�����ĳ��ʱ����Խϳ����ڴ��������¶���������ʹ��Ҫ�������Ժã�';
end
switch jt
    case 10
        wenzi5 = '�������ĳ���״̬����ͨ�����Ϊӵ�£���ʹ�ù�����ҪƵ������ͣ�����綯�������ܺ���ʧ���أ������Բ';
    case 15
        wenzi5 = '�������ĳ���״̬����ͨ���Ϊһ�㣬���綯�����������ԽϺã�';
    otherwise
        wenzi5 = '�������ĳ���״̬����ͨ���Ϊ��ͨ��������ƽ���ٶ�Ϊ���ٷ�Χ�����綯�������ܺ�Ч���ã������Ժã�';
end
switch dx
    case 20
        wenzi6 = '��������ʹ�õ�����ҪΪƽԭ�����ٴ��綯�������µ��ܺ���ʧ�������Ժã�';
    case 16
        wenzi6 = '��������ʹ�õ�����ҪΪ��أ����綯������Ҫ���ж��ݵ����£��ܺ���ʧ�٣������ԽϺã�';
    case 12
        wenzi6 = '��������ʹ�õ�����ҪΪ��ԭ�����綯������Ҫ���ж��ݵ����£��ܺ���ʧ�٣������ԽϺã�';
    case 10
        wenzi6 = '��������ʹ�õ�����ҪΪ���꣬���綯������Ҫ����Ƶ�������£��ܺ���ʧ�ϴ������Խϲ';
    otherwise
        wenzi6 = '��������ʹ�õ�����ҪΪɽ�أ������������ӣ����綯���������˽���Ƶ�������£������Բ';
end
score = cj + xh + cd + jt + dx + qh;
set(handles.edit1,'string',score);
handles.wenzi1 = wenzi1;
handles.wenzi2 = wenzi2;
handles.wenzi3 = wenzi3;
handles.wenzi4 = wenzi4;
handles.wenzi5 = wenzi5;
handles.wenzi6 = wenzi6;

if score<60
    set(handles.edit1,'ForegroundColor','r');
    set(handles.text8,'visible','on');
    set(handles.text9,'visible','off');
    set(handles.text10,'visible','off');
    if qh == -20
        wenzi7 = '�������ۺϵ÷�С��60����Ҫԭ���������������������˴��綯������ʹ�ã��޷�������������,�����������򴿵綯����';
    else
        wenzi7 = '�����ۺ϶��������У������Ե÷�С��60�����綯�����޷����������ճ���������������������';
    end
elseif score<80
    set(handles.edit1,'ForegroundColor','k');
    set(handles.text8,'visible','off');
    set(handles.text9,'visible','on');
    set(handles.text10,'visible','off');
    wenzi7 = '�����ۺ����У��������ۺϵ÷ֽ���60-80�����綯�����������������ճ��������󣬵���һЩ���滹�����Ų��㣬������ѡ���򴿵綯����';
else
    set(handles.edit1,'ForegroundColor','k');
    set(handles.text8,'visible','off');
    set(handles.text9,'visible','off');
    set(handles.text10,'visible','on');
    wenzi7 = '�����ۺ����У��������ۺϵ÷ִ���80�����綯���������ھ�������������������ճ��������������Է��Ĺ��ô��綯����';
end
handles.wenzi7 = wenzi7;
guidata(hObject, handles)

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1);



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


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ditu()


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
wenzi1 = handles.wenzi1;
wenzi2 = handles.wenzi2;
wenzi3 = handles.wenzi3;
wenzi4 = handles.wenzi4;
wenzi5 = handles.wenzi5;
wenzi6 = handles.wenzi6;
wenzi7 = handles.wenzi7;
jieguofenxi(wenzi1, wenzi2, wenzi3, wenzi4, wenzi5, wenzi6, wenzi7);
