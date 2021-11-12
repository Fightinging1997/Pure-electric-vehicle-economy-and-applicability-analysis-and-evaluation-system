function varargout = cost(varargin)
% cost MATLAB code for cost.fig
%      cost, by itself, creates a new cost or raises the existing
%      singleton*.
%
%      H = cost returns the handle to a new cost or the handle to
%      the existing singleton*.
%
%      cost('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in cost.M with the given input arguments.
%
%      cost('Property','Value',...) creates a new cost or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cost_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cost_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cost

% Last Modified by GUIDE v2.5 02-May-2020 12:40:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cost_OpeningFcn, ...
                   'gui_OutputFcn',  @cost_OutputFcn, ...
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


% --- Executes just before cost is made visible.
function cost_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cost (see VARARGIN)

% Choose default command line output for cost
set(gcf,'numbertitle','off','name','纯电动汽车私人模式总成本');
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

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cost wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cost_OutputFcn(hObject, eventdata, handles) 
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
    handles.s1=cost1(handles.text1,handles.text2);
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
            [handles.cost30,handles.cost31]=cost3(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.cost30,handles.cost31,handles.cost32]=cost3(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33]=cost3(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34]=cost3(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35]=cost3(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36]=cost3(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37]=cost3(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38]=cost3(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38,handles.cost39]=cost3(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38,handles.cost39,handles.cost310]=cost3(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38,handles.cost39,handles.cost310,handles.cost311]=cost3(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38,handles.cost39,handles.cost310,handles.cost311,handles.cost312]=cost3(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38,handles.cost39,handles.cost310,handles.cost311,handles.cost312,handles.cost313]=cost3(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38,handles.cost39,handles.cost310,handles.cost311,handles.cost312,handles.cost313,handles.cost314]=cost3(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.cost30,handles.cost31,handles.cost32,handles.cost33,handles.cost34,handles.cost35,handles.cost36,handles.cost37,handles.cost38,handles.cost39,handles.cost310,handles.cost311,handles.cost312,handles.cost313,handles.cost314,handles.cost315]=cost3(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit3,'string',handles.cost30);



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
            [handles.cost40,handles.cost41]=cost4(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.cost40,handles.cost41,handles.cost42]=cost4(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43]=cost4(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44]=cost4(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45]=cost4(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46]=cost4(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47]=cost4(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48]=cost4(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48,handles.cost49]=cost4(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48,handles.cost49,handles.cost410]=cost4(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48,handles.cost49,handles.cost410,handles.cost411]=cost4(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48,handles.cost49,handles.cost410,handles.cost411,handles.cost412]=cost4(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48,handles.cost49,handles.cost410,handles.cost411,handles.cost412,handles.cost413]=cost4(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48,handles.cost49,handles.cost410,handles.cost411,handles.cost412,handles.cost413,handles.cost414]=cost4(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.cost40,handles.cost41,handles.cost42,handles.cost43,handles.cost44,handles.cost45,handles.cost46,handles.cost47,handles.cost48,handles.cost49,handles.cost410,handles.cost411,handles.cost412,handles.cost413,handles.cost414,handles.cost415]=cost4(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit4,'string',handles.cost40);



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
            [handles.cost50,handles.cost51]=cost5(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.cost50,handles.cost51,handles.cost52]=cost5(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53]=cost5(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54]=cost5(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55]=cost5(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56]=cost5(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57]=cost5(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58]=cost5(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58,handles.cost59]=cost5(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58,handles.cost59,handles.cost510]=cost5(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58,handles.cost59,handles.cost510,handles.cost511]=cost5(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58,handles.cost59,handles.cost510,handles.cost511,handles.cost512]=cost5(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58,handles.cost59,handles.cost510,handles.cost511,handles.cost512,handles.cost513]=cost5(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58,handles.cost59,handles.cost510,handles.cost511,handles.cost512,handles.cost513,handles.cost514]=cost5(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.cost50,handles.cost51,handles.cost52,handles.cost53,handles.cost54,handles.cost55,handles.cost56,handles.cost57,handles.cost58,handles.cost59,handles.cost510,handles.cost511,handles.cost512,handles.cost513,handles.cost514,handles.cost515]=cost5(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit5,'string',handles.cost50);



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
handles.t6=cost6(handles.text1,handles.text2,handles.text3);
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
            [handles.cost70,handles.cost71]=cost7(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.cost70,handles.cost71,handles.cost72]=cost7(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73]=cost7(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74]=cost7(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75]=cost7(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76]=cost7(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77]=cost7(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78]=cost7(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79]=cost7(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710]=cost7(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711]=cost7(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712]=cost7(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712,handles.cost713]=cost7(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712,handles.cost713,handles.cost714]=cost7(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712,handles.cost713,handles.cost714,handles.cost715]=cost7(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit7,'string',handles.cost70);


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
    handles.cost80=cost8(handles.text1,handles.text2,handles.text3);
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit8,'string',handles.cost80);


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
global sumc newvp zz
val = get(handles.popupmenu1,'value');
if val == 1
    zz = 1;
else
    zz =2;
end
s1 = str2double(get(handles.edit1,'string'));
newvp = s1;
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
set(handles.edit1,'String','245400');
set(handles.edit2,'String','3045');
set(handles.edit3,'String','700');
set(handles.edit4,'String','8700');
set(handles.edit5,'String','2000');
set(handles.edit6,'String','0');
set(handles.edit7,'String','1000');
set(handles.edit8,'String','0'); 
set(handles.edit10,'String','1000');
set(handles.edit9,'String','200');
% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c number jun1
c = get(handles.popupmenu1,'value');
dc = str2double(get(handles.edit8,'string'));
gouzhi = get(handles.edit1,'string');
year = str2double(get(handles.edit11,'string'));
df = str2double(handles.cost20)/year;
cdz = str2double(get(handles.edit6,'string'));
if c==1
    if year>=1
        chushi = str2double(gouzhi) + str2double(handles.cost41) + cdz;
        co1 = (dc+df+str2double(handles.cost31)+str2double(handles.cost51)+str2double(handles.cost71)+str2double(handles.cost91)+str2double(handles.cost111))/1.08+chushi;
        number = [chushi;co1];
        zengjia0 = df+str2double(handles.cost41)+str2double(handles.cost51)+str2double(handles.cost71)+str2double(handles.cost91)+str2double(handles.cost111);
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (df+str2double(handles.cost32)+str2double(handles.cost42)*1.08+str2double(handles.cost52)+str2double(handles.cost72)+str2double(handles.cost92)+str2double(handles.cost112))/1.08^2;
        co2 = co1+zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1;co2];
    end
    if year>=3
        zengjia2 = (df+str2double(handles.cost33)+str2double(handles.cost43)*1.08+str2double(handles.cost53)+str2double(handles.cost73)+str2double(handles.cost93)+str2double(handles.cost113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (df+str2double(handles.cost34)+str2double(handles.cost44)*1.08+str2double(handles.cost54)+str2double(handles.cost74)+str2double(handles.cost94)+str2double(handles.cost114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (df+str2double(handles.cost35)+str2double(handles.cost45)*1.08+str2double(handles.cost55)+str2double(handles.cost75)+str2double(handles.cost95)+str2double(handles.cost115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (df+str2double(handles.cost36)+str2double(handles.cost46)*1.08+str2double(handles.cost56)+str2double(handles.cost76)+str2double(handles.cost96)+str2double(handles.cost116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (df+str2double(handles.cost37)+str2double(handles.cost47)*1.08+str2double(handles.cost57)+str2double(handles.cost77)+str2double(handles.cost97)+str2double(handles.cost117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (df+str2double(handles.cost38)+str2double(handles.cost48)*1.08+str2double(handles.cost58)+str2double(handles.cost78)+str2double(handles.cost98)+str2double(handles.cost118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (df+str2double(handles.cost39)+str2double(handles.cost49)*1.08+str2double(handles.cost59)+str2double(handles.cost79)+str2double(handles.cost99)+str2double(handles.cost119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (df+str2double(handles.cost310)+str2double(handles.cost410)*1.08+str2double(handles.cost510)+str2double(handles.cost710)+str2double(handles.cost910)+str2double(handles.cost1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (df+str2double(handles.cost311)+str2double(handles.cost411)*1.08+str2double(handles.cost511)+str2double(handles.cost711)+str2double(handles.cost911)+str2double(handles.cost1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (df+str2double(handles.cost312)+str2double(handles.cost412)*1.08+str2double(handles.cost512)+str2double(handles.cost712)+str2double(handles.cost912)+str2double(handles.cost1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (df+str2double(handles.cost313)+str2double(handles.cost413)*1.08+str2double(handles.cost513)+str2double(handles.cost713)+str2double(handles.cost913)+str2double(handles.cost1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (df+str2double(handles.cost314)+str2double(handles.cost414)*1.08+str2double(handles.cost514)+str2double(handles.cost714)+str2double(handles.cost914)+str2double(handles.cost1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (df+str2double(handles.cost315)+str2double(handles.cost415)*1.08+str2double(handles.cost515)+str2double(handles.cost715)+str2double(handles.cost915)+str2double(handles.cost1115))/1.08^15;
        co15 = co14+zengjia14;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13 + zengjia14)/15;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
    end
else
    if year>=1
        chushi = str2double(gouzhi) + str2double(handles.cost41) + cdz;
        co1 = (dc+df+str2double(handles.cost31)+str2double(handles.cost51)+str2double(handles.cost71)+str2double(handles.cost91)+str2double(handles.cost111))/1.08+chushi;
        number = [chushi;co1];
        zengjia0 = str2double(gouzhi)+df+str2double(handles.cost31)+str2double(handles.cost41)+str2double(handles.cost51)+str2double(handles.cost71)+str2double(handles.cost91)+str2double(handles.cost111);
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (str2double(gouzhi)+df+str2double(handles.cost32)+str2double(handles.cost42)*1.08+str2double(handles.cost52)+str2double(handles.cost72)+str2double(handles.cost92)+str2double(handles.cost112))/1.08^2;
        co2 = co1+zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1,co2];
    end
    if year>=3
        zengjia2 = (str2double(gouzhi)+df+str2double(handles.cost33)+str2double(handles.cost43)*1.08+str2double(handles.cost53)+str2double(handles.cost73)+str2double(handles.cost93)+str2double(handles.cost113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (str2double(gouzhi)+df+str2double(handles.cost34)+str2double(handles.cost44)*1.08+str2double(handles.cost54)+str2double(handles.cost74)+str2double(handles.cost94)+str2double(handles.cost114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (str2double(gouzhi)+df+str2double(handles.cost35)+str2double(handles.cost45)*1.08+str2double(handles.cost55)+str2double(handles.cost75)+str2double(handles.cost95)+str2double(handles.cost115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (str2double(gouzhi)+df+str2double(handles.cost36)+str2double(handles.cost46)*1.08+str2double(handles.cost56)+str2double(handles.cost76)+str2double(handles.cost96)+str2double(handles.cost116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (str2double(gouzhi)+df+str2double(handles.cost37)+str2double(handles.cost47)*1.08+str2double(handles.cost57)+str2double(handles.cost77)+str2double(handles.cost97)+str2double(handles.cost117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (str2double(gouzhi)+df+str2double(handles.cost38)+str2double(handles.cost48)*1.08+str2double(handles.cost58)+str2double(handles.cost78)+str2double(handles.cost98)+str2double(handles.cost118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (str2double(gouzhi)+df+str2double(handles.cost39)+str2double(handles.cost49)*1.08+str2double(handles.cost59)+str2double(handles.cost79)+str2double(handles.cost99)+str2double(handles.cost119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (str2double(gouzhi)+df+str2double(handles.cost310)+str2double(handles.cost410)*1.08+str2double(handles.cost510)+str2double(handles.cost710)+str2double(handles.cost910)+str2double(handles.cost1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (str2double(gouzhi)+df+str2double(handles.cost311)+str2double(handles.cost411)*1.08+str2double(handles.cost511)+str2double(handles.cost711)+str2double(handles.cost911)+str2double(handles.cost1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (str2double(gouzhi)+df+str2double(handles.cost312)+str2double(handles.cost412)*1.08+str2double(handles.cost512)+str2double(handles.cost712)+str2double(handles.cost912)+str2double(handles.cost1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (str2double(gouzhi)+df+str2double(handles.cost313)+str2double(handles.cost413)*1.08+str2double(handles.cost513)+str2double(handles.cost713)+str2double(handles.cost913)+str2double(handles.cost1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (str2double(gouzhi)+df+str2double(handles.cost314)+str2double(handles.cost414)*1.08+str2double(handles.cost514)+str2double(handles.cost714)+str2double(handles.cost914)+str2double(handles.cost1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (str2double(gouzhi)+df+str2double(handles.cost315)+str2double(handles.cost415)*1.08+str2double(handles.cost515)+str2double(handles.cost715)+str2double(handles.cost915)+str2double(handles.cost1115))/1.08^15;
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
            [handles.cost110,handles.cost111]=cost11(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.cost110,handles.cost111,handles.cost112]=cost11(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113]=cost11(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114]=cost11(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115]=cost11(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116]=cost11(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117]=cost11(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118]=cost11(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118,handles.cost119]=cost11(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118,handles.cost119,handles.cost1110]=cost11(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118,handles.cost119,handles.cost1110,handles.cost1111]=cost11(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118,handles.cost119,handles.cost1110,handles.cost1111,handles.cost1112]=cost11(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118,handles.cost119,handles.cost1110,handles.cost1111,handles.cost1112,handles.cost1113]=cost11(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118,handles.cost119,handles.cost1110,handles.cost1111,handles.cost1112,handles.cost1113,handles.cost1114]=cost11(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.cost110,handles.cost111,handles.cost112,handles.cost113,handles.cost114,handles.cost115,handles.cost116,handles.cost117,handles.cost118,handles.cost119,handles.cost1110,handles.cost1111,handles.cost1112,handles.cost1113,handles.cost1114,handles.cost1115]=cost11(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit10,'string',handles.cost110);


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
            [handles.cost90,handles.cost91]=cost9(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.cost90,handles.cost91,handles.cost92]=cost9(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93]=cost9(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94]=cost9(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95]=cost9(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96]=cost9(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97]=cost9(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98]=cost9(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98,handles.cost99]=cost9(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98,handles.cost99,handles.cost910]=cost9(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98,handles.cost99,handles.cost910,handles.cost911]=cost9(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98,handles.cost99,handles.cost910,handles.cost911,handles.cost912]=cost9(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98,handles.cost99,handles.cost910,handles.cost911,handles.cost912,handles.cost913]=cost9(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98,handles.cost99,handles.cost910,handles.cost911,handles.cost912,handles.cost913,handles.cost914]=cost9(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.cost90,handles.cost91,handles.cost92,handles.cost93,handles.cost94,handles.cost95,handles.cost96,handles.cost97,handles.cost98,handles.cost99,handles.cost910,handles.cost911,handles.cost912,handles.cost913,handles.cost914,handles.cost915]=cost9(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit9,'string',handles.cost90);


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
