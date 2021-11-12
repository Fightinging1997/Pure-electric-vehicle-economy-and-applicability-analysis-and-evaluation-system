function varargout = zhujiemian(varargin)
% zhujiemian MATLAB code for zhujiemian.fig
%      zhujiemian, by itself, creates a new zhujiemian or raises the existing
%      singleton*.
%
%      H = zhujiemian returns the handle to a new zhujiemian or the handle to
%      the existing singleton*.
%
%      zhujiemian('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in zhujiemian.M with the given input arguments.
%
%      zhujiemian('Property','Value',...) creates a new zhujiemian or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before zhujiemian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to zhujiemian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help zhujiemian

% Last Modified by GUIDE v2.5 07-Jan-2021 14:31:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @zhujiemian_OpeningFcn, ...
                   'gui_OutputFcn',  @zhujiemian_OutputFcn, ...
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


% --- Executes just before zhujiemian is made visible.
function zhujiemian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to zhujiemian (see VARARGIN)

% Choose default command line output for zhujiemian
set(gcf,'numbertitle','off','name','���綯���������Ժ�������ר������ϵͳ');

handles.output = hObject;
set(handles.edit1,'string','���ڴ�����');
set(handles.edit2,'string','���ڴ�����');
set(handles.edit4,'string','���ڴ�����');
set(handles.edit3,'string','���ڴ�����');
set(handles.popupmenu4,'string',{'������';'������';'ͨ����';'��ɽ��';'��̨��';'��ƽ��';'������';'˳����';'������';'������';'ʯ��ɽ��';'������';'������';'������';'������';'������';'ƽ����';'��ͷ����'});
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes zhujiemian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = zhujiemian_OutputFcn(hObject, eventdata, handles) 
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
global m n diqu moshi
moshi = get(handles.popupmenu1,'value');
diqu = get(handles.popupmenu3,'value');
n = num2str(year(now)-str2double(get(handles.edit3,'string')));
m = get(handles.edit4,'string');
field = get(handles.popupmenu1,'value');
switch field
    case 1
        h = cost;
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
    case 2
        h = fenshi;        
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
    case 3
        h = chuzu;
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
    otherwise
        h = wuliu;
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
field = get(handles.popupmenu1,'value');
switch field
    case 1
        sirenshouru(1)
    case 2        
        fenshishouruc()
    case 3
        fenshishouruc()
    otherwise        
        fenshishouruc()
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pingheng

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
shiyongxing()


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = get(handles.popupmenu3,'val');
switch val
    case 1
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'ͨ����';'��ɽ��';'��̨��';'��ƽ��';'������';'˳����';'������';'������';'ʯ��ɽ��';'������';'������';'������';'������';'������';'ƽ����';'��ͷ����'});
    case 2
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'��ݸ��';' ������';' ��ɽ��';' ������';' ������';' ������';' �麣��';' ��ͷ��';' ��ɽ��';' տ����';' ��Դ��';' ������';' ��Զ��';' ������';' �ع���';' ������';' ������';' ÷����';' �Ƹ���';' ï����';' ��β��'});
    case 3
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'�ൺ��';'������';'������';'������';'��̨��';'�Ͳ���';'̩����';'Ϋ����';'������';'������';'������';'��Ӫ��';'�ĳ���';'������';'������';'��ׯ��'});
    case 4
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'�γ���';'������';'�Ͼ���';'��ͨ��';'���Ƹ���';'������';'����';'������';'������';'̩����';'��Ǩ��'});
    case 5
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'֣����';'������';'������';'������';'������';'������';'ƽ��ɽ��';'�ܿ���';'������';'������';'������';'פ�����';'�����';'����Ͽ��';'�����';'�����';'�ױ���';'��Դ��'});
    case 6
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'�ɽ���';'��ɽ��';'��ɽ��';'�ζ���';'�ϻ���';'������';'�ֶ�����';'������';'�����';'������';'������';'������';'������';'�����';'������';'բ����';'������';'������';'¬����'});
    case 7
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'ʯ��ׯ��';'��ɽ��';'������';'������';'��̨��';'�ӱ���';'������';'�ػʵ���';'�żҿ���';'��ˮ��';'�ȷ���';'�е���'});
    case 8
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'������';'̨����';'������';'����';'������';'������';'��ɽ��';'��ˮ��';'������'});
    case 9
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',' ');
    case 10
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'������';'������';'μ����';'������';'������';'������';'�Ӱ���';'ͭ����'});
    case 11
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'��ɳ��';'������';'������';'������';'������';'��̶��';'������';'������';'������';'������';'¦����';'������';'�żҽ���';'������'});
    case 12
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'�山��';'ɳƺ����';'��������';'������';'������';'�ϰ���';'������';'������';'������';'��ɽ��';'������';'������';'ʯ����';'����';'�ϴ���';'��ɿ���';'����';'������';'�ٲ���';'������';'��ƽ��';'������';'������';'��ˮ��';'�뽭��';'�ɽ��';'ǭ����';'������';'��ɽ��';'��Ϫ��';'�潭��';'�ᶼ��';'��¡��';'��ʢ��';'ͭ����';'�ϴ���';'�����';'˫����';'�ǿ���'});
    case 13
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'Ȫ����';'������';'������';'������';'������';'��ƽ��';'������'});
    case 14
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'��ƽ��';'������';'�ӱ���';'������';'������';'������';'������';'������';'������';'������';'�����';'������';'������';'������';'������';'����';'�Ͽ���';'�Ӷ���'});
    case 15
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'�����';'������';'��ɽ��';'�º���';'������';'��ͨ��';'������';'��ɽ��';'��Ϫ��';'��������';'�ٲ׵���';'˼é����';'��˫������';'ŭ����';'������'});
    case 16
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'�ɶ���';'������';'��Ԫ��';'������';'�ϳ���';'������';'�㰲��';'������';'������';'������';'�ڽ���';'��ɽ��';'��֦����';'��ɽ��';'�Թ���';'������';'�Ű���';'�˱���';'������';'üɽ��';'������'});
    case 17
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'�����';'������';'������';'������';'������';'������';'������';'������';'������';'�ӳ���';'��ɫ��';'������';'������';'���Ǹ���'});
    case 18
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'�ߺ���';'�Ϸ���';'������';'������';'������';'������';'��ɽ��';'������';'������';'������';'������';'��ɽ��';'ͭ����';'������';'������';'������';'������'});
    case 19
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'����';'�Ĳ���';'������';'������';'��ˮ��';'�ֶ���';'��ͤ��';'��ָɽ��';'������';'������';'������';'�ٸ���';'��ɳ��';'������';'������';'�Ͳ���'});
    case 20
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'�ϲ���';'������';'������';'������';'�Ž���';'������';'������';'�˴���';'��������';'Ƽ����';'ӥ̶��'});
    case 21
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'�人��';'�˲���';'�差��';'������';'��ʩ��';'�Ƹ���';'Т����';'ʮ����';'������';'��ʯ��';'������';'������';'������';'������';'Ǳ����';'������';'��ũ������'});
    case 22
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'̫ԭ��';'��ͬ��';'�˳���';'������';'������';'������';'�ٷ���';'������';'������';'��Ȫ��';'˷����'});
    case 23
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'������';'������';'��«����';'������';'������';'Ӫ����';'��ɽ��';'��˳��';'������';'�̽���';'��Ϫ��';'������'});
    case 24
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'̨����';'������';'̨����';'������';'��¡��';'̨����';'������'});
    case 25
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'���������';'��������';'������';'��ľ˹��';'˫Ѽɽ��';'ĵ������';'������';'�ں���';'�绯��';'�׸���';'������';'���˰������';'��̨����'});
    case 26
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'�����';'��ͷ��';'ͨ����';'���ͺ�����';'������˹��';'�ں���';'���ױ�����';'�˰���';'�����׶���';'�����첼��';'���ֹ�����';'��������'});
    case 27
        set(handles.popupmenu4,'string',' ');
    case 28
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'ǭ������';'ǭ����';'������';'ǭ������';'�Ͻڵ���';'ͭ�ʵ���';'��˳��';'����ˮ��'});
    case 29
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'��ˮ��';'������';'������';'��Ȫ��';'��Ҵ��';'¤�ϵ���';'������';'��������';'ƽ����';'��������';'���Ļ���������';'�����';'������'});
    case 30
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'��������';'������';'������';'������';'���ϲ���������'});
    case 31
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'��³ľ����';'������';'������';'ʯ������';'���ܵ���';'�����յ���';'����������';'��ʲ����';'���ǵ���';'����������';'�������';'����̩��';'��³������';'��������';'����������';'�������';'����������';'ͼľ�����'});
    case 32
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'ɽ�ϵ���';'��֥����';'�տ������';'�������';'��������';'��������'});
    case 33
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'��ɽ��';'�ӱ���';'�׳���';'��ԭ��';'��Դ��';'ͨ����';'��ƽ��'});
    otherwise
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'������';'������';'������';'ʯ��ɽ��';'��ԭ��'});
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'string','���ڴ�����');
set(handles.edit2,'string','���ڴ�����');
set(handles.edit4,'string','���ڴ�����');
set(handles.edit3,'string','���ڴ�����');
set(handles.popupmenu1,'value',1);
set(handles.popupmenu3,'value',1);
set(handles.popupmenu4,'value',1);
