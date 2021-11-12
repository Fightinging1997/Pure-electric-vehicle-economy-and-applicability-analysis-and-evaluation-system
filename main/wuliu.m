function varargout = wuliu(varargin)
% wuliu MATLAB code for wuliu.fig
%      wuliu, by itself, creates a new wuliu or raises the existing
%      singleton*.
%
%      H = wuliu returns the handle to a new wuliu or the handle to
%      the existing singleton*.
%
%      wuliu('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in wuliu.M with the given input arguments.
%
%      wuliu('Property','Value',...) creates a new wuliu or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wuliu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wuliu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wuliu

% Last Modified by GUIDE v2.5 02-May-2020 10:05:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wuliu_OpeningFcn, ...
                   'gui_OutputFcn',  @wuliu_OutputFcn, ...
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


% --- Executes just before wuliu is made visible.
function wuliu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wuliu (see VARARGIN)

% Choose default command line output for wuliu
set(gcf,'numbertitle','off','name','纯电动汽车物流总成本');
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

% UIWAIT makes wuliu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wuliu_OutputFcn(hObject, eventdata, handles) 
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
    handles.s1=wuliu1(handles.text1,handles.text2);
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
%             [handles.wuliu20,handles.wuliu21]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 2
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 3
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 4
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 5
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 6
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 7
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 8
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 9
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28,handles.wuliu29]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 10
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28,handles.wuliu29,handles.wuliu210]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 11
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28,handles.wuliu29,handles.wuliu210,handles.wuliu211]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 12
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28,handles.wuliu29,handles.wuliu210,handles.wuliu211,handles.wuliu212]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 13
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28,handles.wuliu29,handles.wuliu210,handles.wuliu211,handles.wuliu212,handles.wuliu213]=wuliu2(handles.text1,handles.text2,handles.text3);
%         case 14
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28,handles.wuliu29,handles.wuliu210,handles.wuliu211,handles.wuliu212,handles.wuliu213,handles.wuliu214]=wuliu2(handles.text1,handles.text2,handles.text3);
%         otherwise
%             [handles.wuliu20,handles.wuliu21,handles.wuliu22,handles.wuliu23,handles.wuliu24,handles.wuliu25,handles.wuliu26,handles.wuliu27,handles.wuliu28,handles.wuliu29,handles.wuliu210,handles.wuliu211,handles.wuliu212,handles.wuliu213,handles.wuliu214,handles.wuliu215]=wuliu2(handles.text1,handles.text2,handles.text3);
%     end
% else
%     set(handles.edit11,'string','输入错误');
% end
% guidata(hObject,handles);
% set(handles.edit2,'string',handles.wuliu20);
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
            [handles.wuliu30,handles.wuliu31]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.wuliu30,handles.wuliu31,handles.wuliu32]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38,handles.wuliu39]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38,handles.wuliu39,handles.wuliu310]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38,handles.wuliu39,handles.wuliu310,handles.wuliu311]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38,handles.wuliu39,handles.wuliu310,handles.wuliu311,handles.wuliu312]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38,handles.wuliu39,handles.wuliu310,handles.wuliu311,handles.wuliu312,handles.wuliu313]=wuliu3(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38,handles.wuliu39,handles.wuliu310,handles.wuliu311,handles.wuliu312,handles.wuliu313,handles.wuliu314]=wuliu3(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.wuliu30,handles.wuliu31,handles.wuliu32,handles.wuliu33,handles.wuliu34,handles.wuliu35,handles.wuliu36,handles.wuliu37,handles.wuliu38,handles.wuliu39,handles.wuliu310,handles.wuliu311,handles.wuliu312,handles.wuliu313,handles.wuliu314,handles.wuliu315]=wuliu3(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit3,'string',handles.wuliu30);



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
            [handles.wuliu40,handles.wuliu41]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.wuliu40,handles.wuliu41,handles.wuliu42]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48,handles.wuliu49]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48,handles.wuliu49,handles.wuliu410]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48,handles.wuliu49,handles.wuliu410,handles.wuliu411]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48,handles.wuliu49,handles.wuliu410,handles.wuliu411,handles.wuliu412]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48,handles.wuliu49,handles.wuliu410,handles.wuliu411,handles.wuliu412,handles.wuliu413]=wuliu4(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48,handles.wuliu49,handles.wuliu410,handles.wuliu411,handles.wuliu412,handles.wuliu413,handles.wuliu414]=wuliu4(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.wuliu40,handles.wuliu41,handles.wuliu42,handles.wuliu43,handles.wuliu44,handles.wuliu45,handles.wuliu46,handles.wuliu47,handles.wuliu48,handles.wuliu49,handles.wuliu410,handles.wuliu411,handles.wuliu412,handles.wuliu413,handles.wuliu414,handles.wuliu415]=wuliu4(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit4,'string',handles.wuliu40);



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
            [handles.wuliu50,handles.wuliu51]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.wuliu50,handles.wuliu51,handles.wuliu52]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58,handles.wuliu59]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58,handles.wuliu59,handles.wuliu510]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58,handles.wuliu59,handles.wuliu510,handles.wuliu511]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58,handles.wuliu59,handles.wuliu510,handles.wuliu511,handles.wuliu512]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58,handles.wuliu59,handles.wuliu510,handles.wuliu511,handles.wuliu512,handles.wuliu513]=wuliu5(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58,handles.wuliu59,handles.wuliu510,handles.wuliu511,handles.wuliu512,handles.wuliu513,handles.wuliu514]=wuliu5(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.wuliu50,handles.wuliu51,handles.wuliu52,handles.wuliu53,handles.wuliu54,handles.wuliu55,handles.wuliu56,handles.wuliu57,handles.wuliu58,handles.wuliu59,handles.wuliu510,handles.wuliu511,handles.wuliu512,handles.wuliu513,handles.wuliu514,handles.wuliu515]=wuliu5(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit5,'string',handles.wuliu50);



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
handles.t6=wuliu6(handles.text1,handles.text2,handles.text3);
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
            [handles.wuliu70,handles.wuliu71]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.wuliu70,handles.wuliu71,handles.wuliu72]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78,handles.wuliu79]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78,handles.wuliu79,handles.wuliu710]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78,handles.wuliu79,handles.wuliu710,handles.wuliu711]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78,handles.wuliu79,handles.wuliu710,handles.wuliu711,handles.wuliu712]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78,handles.wuliu79,handles.wuliu710,handles.wuliu711,handles.wuliu712,handles.wuliu713]=wuliu7(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78,handles.wuliu79,handles.wuliu710,handles.wuliu711,handles.wuliu712,handles.wuliu713,handles.wuliu714]=wuliu7(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.wuliu70,handles.wuliu71,handles.wuliu72,handles.wuliu73,handles.wuliu74,handles.wuliu75,handles.wuliu76,handles.wuliu77,handles.wuliu78,handles.wuliu79,handles.wuliu710,handles.wuliu711,handles.wuliu712,handles.wuliu713,handles.wuliu714,handles.wuliu715]=wuliu7(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit7,'string',handles.wuliu70);


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
    handles.wuliu80=wuliu8(handles.text1,handles.text2,handles.text3);
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit8,'string',handles.wuliu80);


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
s1 = str2double(get(handles.edit1,'string'));
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
set(handles.edit1,'String','200500');
set(handles.edit2,'String','10000');
set(handles.edit3,'String','5000');
set(handles.edit4,'String','6658');
set(handles.edit5,'String','5500');
set(handles.edit6,'String','10000');
set(handles.edit7,'String','66800');
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
cdz = str2double(get(handles.edit6,'string'));
year = str2double(get(handles.edit11,'string'));
if c==1
    if year>=1
        chushi = str2double(gouzhi) +  str2double(handles.wuliu41) + cdz ;
        co1 = (chushi + df + str2double(handles.wuliu31)+str2double(handles.wuliu51)+dc+str2double(handles.wuliu71)+str2double(handles.wuliu91) + str2double(handles.wuliu111))/1.08;
        number = [chushi;co1];
        zengjia0 = str2double(handles.wuliu31)+str2double(handles.wuliu41)+str2double(handles.wuliu51)+str2double(handles.wuliu71)+str2double(handles.wuliu91)+str2double(handles.wuliu111);
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (df + str2double(handles.wuliu32)+str2double(handles.wuliu42)*1.08+str2double(handles.wuliu52)+str2double(handles.wuliu72)+str2double(handles.wuliu92)+str2double(handles.wuliu112))/1.08^2;
        co2 = co1+zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1;co2];
    end
    if year>=3
        zengjia2 = (df + str2double(handles.wuliu33)+str2double(handles.wuliu43)*1.08+str2double(handles.wuliu53)+str2double(handles.wuliu73)+str2double(handles.wuliu93)+str2double(handles.wuliu113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (df + str2double(handles.wuliu34)+str2double(handles.wuliu44)*1.08+str2double(handles.wuliu54)+str2double(handles.wuliu74)+str2double(handles.wuliu94)+str2double(handles.wuliu114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (df + str2double(handles.wuliu35)+str2double(handles.wuliu45)*1.08+str2double(handles.wuliu55)+str2double(handles.wuliu75)+str2double(handles.wuliu95)+str2double(handles.wuliu115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (df + str2double(handles.wuliu36)+str2double(handles.wuliu46)*1.08+str2double(handles.wuliu56)+str2double(handles.wuliu76)+str2double(handles.wuliu96)+str2double(handles.wuliu116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (df + str2double(handles.wuliu37)+str2double(handles.wuliu47)*1.08+str2double(handles.wuliu57)+str2double(handles.wuliu77)+str2double(handles.wuliu97)+str2double(handles.wuliu117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (df + str2double(handles.wuliu38)+str2double(handles.wuliu48)*1.08+str2double(handles.wuliu58)+str2double(handles.wuliu78)+str2double(handles.wuliu98)+str2double(handles.wuliu118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (df + str2double(handles.wuliu39)+str2double(handles.wuliu49)*1.08+str2double(handles.wuliu59)+str2double(handles.wuliu79)+str2double(handles.wuliu99)+str2double(handles.wuliu119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (df + str2double(handles.wuliu310)+str2double(handles.wuliu410)*1.08+str2double(handles.wuliu510)+str2double(handles.wuliu710)+str2double(handles.wuliu910)+str2double(handles.wuliu1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (df + str2double(handles.wuliu311)+str2double(handles.wuliu411)*1.08+str2double(handles.wuliu511)+str2double(handles.wuliu711)+str2double(handles.wuliu911)+str2double(handles.wuliu1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (df + str2double(handles.wuliu312)+str2double(handles.wuliu412)*1.08+str2double(handles.wuliu512)+str2double(handles.wuliu712)+str2double(handles.wuliu912)+str2double(handles.wuliu1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (df + str2double(handles.wuliu313)+str2double(handles.wuliu413)*1.08+str2double(handles.wuliu513)+str2double(handles.wuliu713)+str2double(handles.wuliu913)+str2double(handles.wuliu1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (df + str2double(handles.wuliu314)+str2double(handles.wuliu414)*1.08+str2double(handles.wuliu514)+str2double(handles.wuliu714)+str2double(handles.wuliu914)+str2double(handles.wuliu1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (df + str2double(handles.wuliu315)+str2double(handles.wuliu415)*1.08+str2double(handles.wuliu515)+str2double(handles.wuliu715)+str2double(handles.wuliu915)+str2double(handles.wuliu1115))/1.08^15;
        co15 = co14+zengjia14;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13 + zengjia14)/15;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
    end
else
    if year>=1
        chushi = str2double(gouzhi) + str2double(handles.wuliu41) + cdz ;
        co1 = (df +  str2double(handles.wuliu31)+str2double(handles.wuliu51)+dc+str2double(handles.wuliu71)+str2double(handles.wuliu91) + str2double(handles.wuliu111))/1.08 + chushi;
        number = [chushi;co1];
        zengjia0 = str2double(gouzhi)+str2double(handles.wuliu31)+str2double(handles.wuliu41)+str2double(handles.wuliu51)+str2double(handles.wuliu71)+str2double(handles.wuliu91)+str2double(handles.wuliu111);
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (df + str2double(gouzhi)+str2double(handles.wuliu32)+str2double(handles.wuliu42)*1.08+str2double(handles.wuliu52)+str2double(handles.wuliu72)+str2double(handles.wuliu92)+str2double(handles.wuliu112))/1.08^2;
        co2 = co1+zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1;co2];
    end
    if year>=3
        zengjia2 = (df + str2double(gouzhi)+str2double(handles.wuliu33)+str2double(handles.wuliu43)*1.08+str2double(handles.wuliu53)+str2double(handles.wuliu73)+str2double(handles.wuliu93)+str2double(handles.wuliu113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (df + str2double(gouzhi)+str2double(handles.wuliu34)+str2double(handles.wuliu44)*1.08+str2double(handles.wuliu54)+str2double(handles.wuliu74)+str2double(handles.wuliu94)+str2double(handles.wuliu114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (df + str2double(gouzhi)+str2double(handles.wuliu35)+str2double(handles.wuliu45)*1.08+str2double(handles.wuliu55)+str2double(handles.wuliu75)+str2double(handles.wuliu95)+str2double(handles.wuliu115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (df + str2double(gouzhi)+str2double(handles.wuliu36)+str2double(handles.wuliu46)*1.08+str2double(handles.wuliu56)+str2double(handles.wuliu76)+str2double(handles.wuliu96)+str2double(handles.wuliu116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (df + str2double(gouzhi)+str2double(handles.wuliu37)+str2double(handles.wuliu47)*1.08+str2double(handles.wuliu57)+str2double(handles.wuliu77)+str2double(handles.wuliu97)+str2double(handles.wuliu117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (df + str2double(gouzhi)+str2double(handles.wuliu38)+str2double(handles.wuliu48)*1.08+str2double(handles.wuliu58)+str2double(handles.wuliu78)+str2double(handles.wuliu98)+str2double(handles.wuliu118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (df + str2double(gouzhi)+str2double(handles.wuliu39)+str2double(handles.wuliu49)*1.08+str2double(handles.wuliu59)+str2double(handles.wuliu79)+str2double(handles.wuliu99)+str2double(handles.wuliu119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (df + str2double(gouzhi)+str2double(handles.wuliu310)+str2double(handles.wuliu410)*1.08+str2double(handles.wuliu510)+str2double(handles.wuliu710)+str2double(handles.wuliu910)+str2double(handles.wuliu1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (df + str2double(gouzhi)+str2double(handles.wuliu311)+str2double(handles.wuliu411)*1.08+str2double(handles.wuliu511)+str2double(handles.wuliu711)+str2double(handles.wuliu911)+str2double(handles.wuliu1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (df + str2double(gouzhi)+str2double(handles.wuliu312)+str2double(handles.wuliu412)*1.08+str2double(handles.wuliu512)+str2double(handles.wuliu712)+str2double(handles.wuliu912)+str2double(handles.wuliu1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (df + str2double(gouzhi)+str2double(handles.wuliu313)+str2double(handles.wuliu413)*1.08+str2double(handles.wuliu513)+str2double(handles.wuliu713)+str2double(handles.wuliu913)+str2double(handles.wuliu1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (df + str2double(gouzhi)+str2double(handles.wuliu314)+str2double(handles.wuliu414)*1.08+str2double(handles.wuliu514)+str2double(handles.wuliu714)+str2double(handles.wuliu914)+str2double(handles.wuliu1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (df + str2double(gouzhi)+str2double(handles.wuliu315)+str2double(handles.wuliu415)*1.08+str2double(handles.wuliu515)+str2double(handles.wuliu715)+str2double(handles.wuliu915)+str2double(handles.wuliu1115))/1.08^15;
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
            [handles.wuliu110,handles.wuliu111]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.wuliu110,handles.wuliu111,handles.wuliu112]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118,handles.wuliu119]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118,handles.wuliu119,handles.wuliu1110]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118,handles.wuliu119,handles.wuliu1110,handles.wuliu1111]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118,handles.wuliu119,handles.wuliu1110,handles.wuliu1111,handles.wuliu1112]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118,handles.wuliu119,handles.wuliu1110,handles.wuliu1111,handles.wuliu1112,handles.wuliu1113]=wuliu11(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118,handles.wuliu119,handles.wuliu1110,handles.wuliu1111,handles.wuliu1112,handles.wuliu1113,handles.wuliu1114]=wuliu11(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.wuliu110,handles.wuliu111,handles.wuliu112,handles.wuliu113,handles.wuliu114,handles.wuliu115,handles.wuliu116,handles.wuliu117,handles.wuliu118,handles.wuliu119,handles.wuliu1110,handles.wuliu1111,handles.wuliu1112,handles.wuliu1113,handles.wuliu1114,handles.wuliu1115]=wuliu11(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit10,'string',handles.wuliu110);


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
            [handles.wuliu90,handles.wuliu91]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.wuliu90,handles.wuliu91,handles.wuliu92]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98,handles.wuliu99]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98,handles.wuliu99,handles.wuliu910]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98,handles.wuliu99,handles.wuliu910,handles.wuliu911]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98,handles.wuliu99,handles.wuliu910,handles.wuliu911,handles.wuliu912]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98,handles.wuliu99,handles.wuliu910,handles.wuliu911,handles.wuliu912,handles.wuliu913]=wuliu9(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98,handles.wuliu99,handles.wuliu910,handles.wuliu911,handles.wuliu912,handles.wuliu913,handles.wuliu914]=wuliu9(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.wuliu90,handles.wuliu91,handles.wuliu92,handles.wuliu93,handles.wuliu94,handles.wuliu95,handles.wuliu96,handles.wuliu97,handles.wuliu98,handles.wuliu99,handles.wuliu910,handles.wuliu911,handles.wuliu912,handles.wuliu913,handles.wuliu914,handles.wuliu915]=wuliu9(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit9,'string',handles.wuliu90);


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
