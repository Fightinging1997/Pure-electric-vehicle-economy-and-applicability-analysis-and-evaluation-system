function varargout = fenshi(varargin)
% fenshi MATLAB code for fenshi.fig
%      fenshi, by itself, creates a new fenshi or raises the existing
%      singleton*.
%
%      H = fenshi returns the handle to a new fenshi or the handle to
%      the existing singleton*.
%
%      fenshi('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in fenshi.M with the given input arguments.
%
%      fenshi('Property','Value',...) creates a new fenshi or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fenshi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fenshi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fenshi

% Last Modified by GUIDE v2.5 02-May-2020 08:20:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fenshi_OpeningFcn, ...
                   'gui_OutputFcn',  @fenshi_OutputFcn, ...
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


% --- Executes just before fenshi is made visible.
function fenshi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fenshi (see VARARGIN)

% Choose default command line output for fenshi
set(gcf,'numbertitle','off','name','纯电动汽车分时租赁模式总成本');
% ha=axes('units','normalized','position',[0 0 1 1]);
% uistack(ha,'down')
% II=imread('F:\Matlab_2019b\1\视觉中国\视觉中国19.jpg');
% I=imread('F:\Matlab_2019b\1\视觉中国\视觉中国19.jpg');
% image(II)
% colormap gray
% set(ha,'handlevisibility','off','visible','off');
% set(handles.pushbutton1,'cdata',I);
% set(handles.pushbutton2,'cdata',I);
% set(handles.pushbutton3,'cdata',I);
% set(handles.pushbutton4,'cdata',I);
% set(handles.pushbutton5,'cdata',I);
% set(handles.pushbutton6,'cdata',I);
% set(handles.pushbutton7,'cdata',I);
% set(handles.pushbutton8,'cdata',I);
% set(handles.pushbutton12,'cdata',I);
% set(handles.pushbutton13,'cdata',I);
% set(handles.pushbutton14,'cdata',I);
% set(handles.pushbutton15,'cdata',I);
% set(handles.pushbutton16,'cdata',I);

set(handles.bian1,'visible','on');
set(handles.bian2,'visible','off');
handles.text1='请在此输入';
handles.text2='';
guidata(hObject, handles);
handles.text3='请点击输入';
set(handles.edit1,'string',handles.text3);
set(handles.edit2,'string',handles.text3);
set(handles.edit3,'string',handles.text3);
set(handles.edit4,'string',handles.text3);
set(handles.edit5,'string',handles.text3);
set(handles.edit6,'string',handles.text3);
set(handles.edit7,'string',handles.text3);
set(handles.edit8,'string',handles.text3);
set(handles.edit9,'string',handles.text3);
set(handles.edit10,'string',handles.text3);
set(handles.edit11,'string',handles.text1);
set(handles.edit12,'string',handles.text2);
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fenshi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fenshi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q = get(handles.popupmenu1,'value');
if q == 1
    handles.s1=fenshi1(handles.text1,handles.text2);
    guidata(hObject,handles);
    set(handles.edit1,'string',handles.s1);
else
    set(handles.edit1,'string','请直接在此处输入');
end

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
% handles.text3=get(handles.edit11,'string');
% val=str2double(handles.text3);
% if (~isempty(val)) && (val>0)
%     switch val
%         case 1
%             [handles.fenshi20,handles.fenshi21]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 2
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 3
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 4
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 5
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 6
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 7
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 8
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 9
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28,handles.fenshi29]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 10
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28,handles.fenshi29,handles.fenshi210]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 11
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28,handles.fenshi29,handles.fenshi210,handles.fenshi211]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 12
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28,handles.fenshi29,handles.fenshi210,handles.fenshi211,handles.fenshi212]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 13
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28,handles.fenshi29,handles.fenshi210,handles.fenshi211,handles.fenshi212,handles.fenshi213]=fenshi2(handles.text1,handles.text2,handles.text3);
%         case 14
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28,handles.fenshi29,handles.fenshi210,handles.fenshi211,handles.fenshi212,handles.fenshi213,handles.fenshi214]=fenshi2(handles.text1,handles.text2,handles.text3);
%         otherwise
%             [handles.fenshi20,handles.fenshi21,handles.fenshi22,handles.fenshi23,handles.fenshi24,handles.fenshi25,handles.fenshi26,handles.fenshi27,handles.fenshi28,handles.fenshi29,handles.fenshi210,handles.fenshi211,handles.fenshi212,handles.fenshi213,handles.fenshi214,handles.fenshi215]=fenshi2(handles.text1,handles.text2,handles.text3);
%     end
% else
%     set(handles.edit11,'string','输入错误');
% end
% guidata(hObject,handles);
% set(handles.edit2,'string',handles.fenshi20);
handles.text3=get(handles.edit11,'string');
val=str2double(handles.text3);
if (~isempty(val)) && (val>0)
    handles.cost20 = cost2(handles.text1,handles.text2,handles.text3);
    guidata(hObject,handles);
else
    set(handles.edit11,'string','输入错误');
end
set(handles.edit2,'string',handles.cost20);


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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
val=floor(str2double(handles.text3));
if (~isempty(val)) && (val>0)
    switch val
        case 1
            [handles.fenshi30,handles.fenshi31]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.fenshi30,handles.fenshi31,handles.fenshi32]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38,handles.fenshi39]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38,handles.fenshi39,handles.fenshi310]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38,handles.fenshi39,handles.fenshi310,handles.fenshi311]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38,handles.fenshi39,handles.fenshi310,handles.fenshi311,handles.fenshi312]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38,handles.fenshi39,handles.fenshi310,handles.fenshi311,handles.fenshi312,handles.fenshi313]=fenshi3(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38,handles.fenshi39,handles.fenshi310,handles.fenshi311,handles.fenshi312,handles.fenshi313,handles.fenshi314]=fenshi3(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.fenshi30,handles.fenshi31,handles.fenshi32,handles.fenshi33,handles.fenshi34,handles.fenshi35,handles.fenshi36,handles.fenshi37,handles.fenshi38,handles.fenshi39,handles.fenshi310,handles.fenshi311,handles.fenshi312,handles.fenshi313,handles.fenshi314,handles.fenshi315]=fenshi3(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit3,'string',handles.fenshi30);



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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
val=str2double(handles.text3);
if (~isempty(val)) && (val>0)
    switch val
        case 1
            [handles.fenshi40,handles.fenshi41]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.fenshi40,handles.fenshi41,handles.fenshi42]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48,handles.fenshi49]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48,handles.fenshi49,handles.fenshi410]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48,handles.fenshi49,handles.fenshi410,handles.fenshi411]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48,handles.fenshi49,handles.fenshi410,handles.fenshi411,handles.fenshi412]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48,handles.fenshi49,handles.fenshi410,handles.fenshi411,handles.fenshi412,handles.fenshi413]=fenshi4(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48,handles.fenshi49,handles.fenshi410,handles.fenshi411,handles.fenshi412,handles.fenshi413,handles.fenshi414]=fenshi4(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.fenshi40,handles.fenshi41,handles.fenshi42,handles.fenshi43,handles.fenshi44,handles.fenshi45,handles.fenshi46,handles.fenshi47,handles.fenshi48,handles.fenshi49,handles.fenshi410,handles.fenshi411,handles.fenshi412,handles.fenshi413,handles.fenshi414,handles.fenshi415]=fenshi4(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit4,'string',handles.fenshi40);



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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
val=floor(str2double(handles.text3));
if (~isempty(val)) && (val>0)
    switch val
        case 1
            [handles.fenshi50,handles.fenshi51]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.fenshi50,handles.fenshi51,handles.fenshi52]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58,handles.fenshi59]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58,handles.fenshi59,handles.fenshi510]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58,handles.fenshi59,handles.fenshi510,handles.fenshi511]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58,handles.fenshi59,handles.fenshi510,handles.fenshi511,handles.fenshi512]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58,handles.fenshi59,handles.fenshi510,handles.fenshi511,handles.fenshi512,handles.fenshi513]=fenshi5(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58,handles.fenshi59,handles.fenshi510,handles.fenshi511,handles.fenshi512,handles.fenshi513,handles.fenshi514]=fenshi5(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.fenshi50,handles.fenshi51,handles.fenshi52,handles.fenshi53,handles.fenshi54,handles.fenshi55,handles.fenshi56,handles.fenshi57,handles.fenshi58,handles.fenshi59,handles.fenshi510,handles.fenshi511,handles.fenshi512,handles.fenshi513,handles.fenshi514,handles.fenshi515]=fenshi5(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit5,'string',handles.fenshi50);



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


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
handles.t6=fenshi6(handles.text1,handles.text2,handles.text3);
guidata(hObject,handles);
set(handles.edit6,'string',handles.t6);


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


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
val=str2double(handles.text3);
if (~isempty(val)) && (val>0)
    switch val
        case 1
            [handles.fenshi70,handles.fenshi71]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.fenshi70,handles.fenshi71,handles.fenshi72]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78,handles.fenshi79]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78,handles.fenshi79,handles.fenshi710]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78,handles.fenshi79,handles.fenshi710,handles.fenshi711]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78,handles.fenshi79,handles.fenshi710,handles.fenshi711,handles.fenshi712]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78,handles.fenshi79,handles.fenshi710,handles.fenshi711,handles.fenshi712,handles.fenshi713]=fenshi7(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78,handles.fenshi79,handles.fenshi710,handles.fenshi711,handles.fenshi712,handles.fenshi713,handles.fenshi714]=fenshi7(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.fenshi70,handles.fenshi71,handles.fenshi72,handles.fenshi73,handles.fenshi74,handles.fenshi75,handles.fenshi76,handles.fenshi77,handles.fenshi78,handles.fenshi79,handles.fenshi710,handles.fenshi711,handles.fenshi712,handles.fenshi713,handles.fenshi714,handles.fenshi715]=fenshi7(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit7,'string',handles.fenshi70);


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


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
val=floor(str2double(handles.text3));
if (~isempty(val)) && (val>0)
    handles.fenshi80=fenshi8(handles.text1,handles.text2,handles.text3);
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit8,'string',handles.fenshi80);


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


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global sumc zz newvp
s1 = str2double(get(handles.edit1,'string'));
newvp = s1;
val = get(handles.popupmenu1,'value');
if val == 1
    zz = 1;
else
    zz = 2;
end

s2 = str2double(get(handles.edit2,'string'));
s3 = str2double(get(handles.edit3,'string'));
s4 = str2double(get(handles.edit4,'string'));
s5 = str2double(get(handles.edit5,'string'));
s6 = str2double(get(handles.edit6,'string'));
s7 = str2double(get(handles.edit7,'string'));
s8 = str2double(get(handles.edit8,'string'));
s9 = str2double(get(handles.edit9,'string'));
s10 = str2double(get(handles.edit10,'string'));
s11 = str2double(get(handles.edit11,'string'));
q = get(handles.popupmenu1,'value');
if q == 1    
    sumc = s1+s2+s3+s4+s5+s6+s7+s8+s9+s10;
else
    sumc = s1*s11+s2+s3+s4+s5+s6+s7+s8+s9+s10;
end
set(handles.edit12,'string',num2str(sumc));
guidata(hObject,handles)

function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','208500');
set(handles.edit2,'String','10000');
set(handles.edit3,'String','5000');
set(handles.edit4,'String','6658');
set(handles.edit5,'String','5500');
set(handles.edit6,'String','10000');
set(handles.edit7,'String','1000');
set(handles.edit8,'String','400'); 
set(handles.edit10,'String','3000');
set(handles.edit9,'String','200');
% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c number jun1
c = get(handles.popupmenu1,'value');
dc = str2double(get(handles.edit8,'string'));
year = str2double(get(handles.edit11,'string'));
df = str2double(handles.cost20)/year;
gouzhi = get(handles.edit1,'string');
year = str2double(get(handles.edit11,'string'));
cdz = str2double(get(handles.edit6,'string'));
if c==1
    if year>=1
        chushi = str2double(gouzhi) + str2double(handles.fenshi41) + cdz;
        co1 = (dc+df+str2double(handles.fenshi31)+str2double(handles.fenshi51)+str2double(handles.fenshi71)+str2double(handles.fenshi91)+str2double(handles.fenshi111))/1.08+chushi;
        number = [chushi;co1];
        zengjia0 = str2double(handles.fenshi31)+str2double(handles.fenshi41)+str2double(handles.fenshi51)+str2double(handles.fenshi71)+str2double(handles.fenshi91)+str2double(handles.fenshi111);
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (df+str2double(handles.fenshi32)+str2double(handles.fenshi42)*1.08+str2double(handles.fenshi52)+str2double(handles.fenshi72)+str2double(handles.fenshi92)+str2double(handles.fenshi112))/1.08^2;
        co2 = co1+zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1;co2];
    end
    if year>=3
        zengjia2 = (df+str2double(handles.fenshi33)+str2double(handles.fenshi43)*1.08+str2double(handles.fenshi53)+str2double(handles.fenshi73)+str2double(handles.fenshi93)+str2double(handles.fenshi113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (df+str2double(handles.fenshi34)+str2double(handles.fenshi44)*1.08+str2double(handles.fenshi54)+str2double(handles.fenshi74)+str2double(handles.fenshi94)+str2double(handles.fenshi114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (df+str2double(handles.fenshi35)+str2double(handles.fenshi45)*1.08+str2double(handles.fenshi55)+str2double(handles.fenshi75)+str2double(handles.fenshi95)+str2double(handles.fenshi115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (df+str2double(handles.fenshi36)+str2double(handles.fenshi46)*1.08+str2double(handles.fenshi56)+str2double(handles.fenshi76)+str2double(handles.fenshi96)+str2double(handles.fenshi116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (df+str2double(handles.fenshi37)+str2double(handles.fenshi47)*1.08+str2double(handles.fenshi57)+str2double(handles.fenshi77)+str2double(handles.fenshi97)+str2double(handles.fenshi117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (df+str2double(handles.fenshi38)+str2double(handles.fenshi48)*1.08+str2double(handles.fenshi58)+str2double(handles.fenshi78)+str2double(handles.fenshi98)+str2double(handles.fenshi118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (df+str2double(handles.fenshi39)+str2double(handles.fenshi49)*1.08+str2double(handles.fenshi59)+str2double(handles.fenshi79)+str2double(handles.fenshi99)+str2double(handles.fenshi119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (df+str2double(handles.fenshi310)+str2double(handles.fenshi410)*1.08+str2double(handles.fenshi510)+str2double(handles.fenshi710)+str2double(handles.fenshi910)+str2double(handles.fenshi1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (df+str2double(handles.fenshi311)+str2double(handles.fenshi411)*1.08+str2double(handles.fenshi511)+str2double(handles.fenshi711)+str2double(handles.fenshi911)+str2double(handles.fenshi1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (df+str2double(handles.fenshi312)+str2double(handles.fenshi412)*1.08+str2double(handles.fenshi512)+str2double(handles.fenshi712)+str2double(handles.fenshi912)+str2double(handles.fenshi1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (df+str2double(handles.fenshi313)+str2double(handles.fenshi413)*1.08+str2double(handles.fenshi513)+str2double(handles.fenshi713)+str2double(handles.fenshi913)+str2double(handles.fenshi1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (df+str2double(handles.fenshi314)+str2double(handles.fenshi414)*1.08+str2double(handles.fenshi514)+str2double(handles.fenshi714)+str2double(handles.fenshi914)+str2double(handles.fenshi1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (df+str2double(handles.fenshi315)+str2double(handles.fenshi415)*1.08+str2double(handles.fenshi515)+str2double(handles.fenshi715)+str2double(handles.fenshi915)+str2double(handles.fenshi1115))/1.08^15;
        co15 = co14+zengjia14;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13 + zengjia14)/15;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
    end
else
    if year>=1
        chushi = str2double(gouzhi) + str2double(handles.fenshi41) + cdz;
        co1 = (df+dc+str2double(handles.fenshi31)+str2double(handles.fenshi51)+str2double(handles.fenshi71)+str2double(handles.fenshi91)+str2double(handles.fenshi111))/1.08+chushi;
        number = [chushi;co1];
        zengjia0 = str2double(gouzhi)+str2double(handles.fenshi31)+str2double(handles.fenshi41)+str2double(handles.fenshi51)+str2double(handles.fenshi71)+str2double(handles.fenshi91)+str2double(handles.fenshi111)/1.08;
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (df+str2double(gouzhi)+str2double(handles.fenshi32)+str2double(handles.fenshi42)*1.08+str2double(handles.fenshi52)+str2double(handles.fenshi72)+str2double(handles.fenshi92)+str2double(handles.fenshi112))/1.08^2;
        co2 = co1+zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1;co2];
    end
    if year>=3
        zengjia2 = (df+str2double(gouzhi)+str2double(handles.fenshi33)+str2double(handles.fenshi43)*1.08+str2double(handles.fenshi53)+str2double(handles.fenshi73)+str2double(handles.fenshi93)+str2double(handles.fenshi113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (df+str2double(gouzhi)+str2double(handles.fenshi34)+str2double(handles.fenshi44)*1.08+str2double(handles.fenshi54)+str2double(handles.fenshi74)+str2double(handles.fenshi94)+str2double(handles.fenshi114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (df+str2double(gouzhi)+str2double(handles.fenshi35)+str2double(handles.fenshi45)*1.08+str2double(handles.fenshi55)+str2double(handles.fenshi75)+str2double(handles.fenshi95)+str2double(handles.fenshi115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (df+str2double(gouzhi)+str2double(handles.fenshi36)+str2double(handles.fenshi46)*1.08+str2double(handles.fenshi56)+str2double(handles.fenshi76)+str2double(handles.fenshi96)+str2double(handles.fenshi116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (df+str2double(gouzhi)+str2double(handles.fenshi37)+str2double(handles.fenshi47)*1.08+str2double(handles.fenshi57)+str2double(handles.fenshi77)+str2double(handles.fenshi97)+str2double(handles.fenshi117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (df+str2double(gouzhi)+str2double(handles.fenshi38)+str2double(handles.fenshi48)*1.08+str2double(handles.fenshi58)+str2double(handles.fenshi78)+str2double(handles.fenshi98)+str2double(handles.fenshi118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (df+str2double(gouzhi)+str2double(handles.fenshi39)+str2double(handles.fenshi49)*1.08+str2double(handles.fenshi59)+str2double(handles.fenshi79)+str2double(handles.fenshi99)+str2double(handles.fenshi119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (df+str2double(gouzhi)+str2double(handles.fenshi310)+str2double(handles.fenshi410)*1.08+str2double(handles.fenshi510)+str2double(handles.fenshi710)+str2double(handles.fenshi910)+str2double(handles.fenshi1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (df+str2double(gouzhi)+str2double(handles.fenshi311)+str2double(handles.fenshi411)*1.08+str2double(handles.fenshi511)+str2double(handles.fenshi711)+str2double(handles.fenshi911)+str2double(handles.fenshi1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (df+str2double(gouzhi)+str2double(handles.fenshi312)+str2double(handles.fenshi412)*1.08+str2double(handles.fenshi512)+str2double(handles.fenshi712)+str2double(handles.fenshi912)+str2double(handles.fenshi1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (df+str2double(gouzhi)+str2double(handles.fenshi313)+str2double(handles.fenshi413)*1.08+str2double(handles.fenshi513)+str2double(handles.fenshi713)+str2double(handles.fenshi913)+str2double(handles.fenshi1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (df+str2double(gouzhi)+str2double(handles.fenshi314)+str2double(handles.fenshi414)*1.08+str2double(handles.fenshi514)+str2double(handles.fenshi714)+str2double(handles.fenshi914)+str2double(handles.fenshi1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (df+str2double(gouzhi)+str2double(handles.fenshi315)+str2double(handles.fenshi415)*1.08+str2double(handles.fenshi515)+str2double(handles.fenshi715)+str2double(handles.fenshi915)+str2double(handles.fenshi1115))/1.08^15;
        co15 = co14+zengjia14;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13 + zengjia14)/15;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
    end
end
close(gcf)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
val=str2double(handles.text3);
if (~isempty(val)) && (val>0)
    switch val
        case 1
            [handles.fenshi110,handles.fenshi111]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.fenshi110,handles.fenshi111,handles.fenshi112]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118,handles.fenshi119]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118,handles.fenshi119,handles.fenshi1110]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118,handles.fenshi119,handles.fenshi1110,handles.fenshi1111]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118,handles.fenshi119,handles.fenshi1110,handles.fenshi1111,handles.fenshi1112]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118,handles.fenshi119,handles.fenshi1110,handles.fenshi1111,handles.fenshi1112,handles.fenshi1113]=fenshi11(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118,handles.fenshi119,handles.fenshi1110,handles.fenshi1111,handles.fenshi1112,handles.fenshi1113,handles.fenshi1114]=fenshi11(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.fenshi110,handles.fenshi111,handles.fenshi112,handles.fenshi113,handles.fenshi114,handles.fenshi115,handles.fenshi116,handles.fenshi117,handles.fenshi118,handles.fenshi119,handles.fenshi1110,handles.fenshi1111,handles.fenshi1112,handles.fenshi1113,handles.fenshi1114,handles.fenshi1115]=fenshi11(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit10,'string',handles.fenshi110);


function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
val = get(handles.popupmenu1,'value');
switch val
    case 1
        set(handles.bian1,'visible','on');
        set(handles.bian2,'visible','off');
    otherwise
        set(handles.bian2,'visible','on');
        set(handles.bian1,'visible','off');
        set(handles.edit4,'string','此处勿填');
        set(handles.edit8,'string','此处勿填');
        set(handles.edit9,'string','此处勿填');
end

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


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3=get(handles.edit11,'string');
val=str2double(handles.text3);
if (~isempty(val)) && (val>0)
    switch val
        case 1
            [handles.fenshi90,handles.fenshi91]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.fenshi90,handles.fenshi91,handles.fenshi92]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98,handles.fenshi99]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98,handles.fenshi99,handles.fenshi910]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98,handles.fenshi99,handles.fenshi910,handles.fenshi911]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98,handles.fenshi99,handles.fenshi910,handles.fenshi911,handles.fenshi912]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98,handles.fenshi99,handles.fenshi910,handles.fenshi911,handles.fenshi912,handles.fenshi913]=fenshi9(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98,handles.fenshi99,handles.fenshi910,handles.fenshi911,handles.fenshi912,handles.fenshi913,handles.fenshi914]=fenshi9(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.fenshi90,handles.fenshi91,handles.fenshi92,handles.fenshi93,handles.fenshi94,handles.fenshi95,handles.fenshi96,handles.fenshi97,handles.fenshi98,handles.fenshi99,handles.fenshi910,handles.fenshi911,handles.fenshi912,handles.fenshi913,handles.fenshi914,handles.fenshi915]=fenshi9(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit9,'string',handles.fenshi90);


function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
