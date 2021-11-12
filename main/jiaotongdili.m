function varargout = jiaotongdili(varargin)
% JIAOTONGDILI MATLAB code for jiaotongdili.fig
%      JIAOTONGDILI, by itself, creates a new JIAOTONGDILI or raises the existing
%      singleton*.
%
%      H = JIAOTONGDILI returns the handle to a new JIAOTONGDILI or the handle to
%      the existing singleton*.
%
%      JIAOTONGDILI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JIAOTONGDILI.M with the given input arguments.
%
%      JIAOTONGDILI('Property','Value',...) creates a new JIAOTONGDILI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before jiaotongdili_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to jiaotongdili_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help jiaotongdili

% Last Modified by GUIDE v2.5 04-Jan-2021 20:05:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @jiaotongdili_OpeningFcn, ...
                   'gui_OutputFcn',  @jiaotongdili_OutputFcn, ...
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


% --- Executes just before jiaotongdili is made visible.
function jiaotongdili_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to jiaotongdili (see VARARGIN)

% Choose default command line output for jiaotongdili
set(gcf,'numbertitle','off','name','交通条件/地形条件');
handles.output = hObject;
global jiaotong dixing

if isempty(jiaotong)
    jiaotong = 1;
end
if isempty(dixing)
    dixing = 1;
end

switch jiaotong
    case 1
        set(handles.radiobutton1,'value',1);
    case 2
        set(handles.radiobutton2,'value',1);
    otherwise
        set(handles.radiobutton3,'value',1);
end
switch dixing
    case 1
        set(handles.radiobutton5,'value',1);
    case 2
        set(handles.radiobutton9,'value',1);
    case 3
        set(handles.radiobutton8,'value',1);
    case 4
        set(handles.radiobutton6,'value',1);
    otherwise
        set(handles.radiobutton7,'value',1);
end
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes jiaotongdili wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = jiaotongdili_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
v1 = get(handles.radiobutton1, 'value');
v2 = get(handles.radiobutton2, 'value');
v5 = get(handles.radiobutton5, 'value');
v6 = get(handles.radiobutton5, 'value');
v7 = get(handles.radiobutton5, 'value');
v8 = get(handles.radiobutton5, 'value');
% v9 = get(handles.radiobutton5, 'value');
if v1 == 1
    jiaotong = 10;
elseif v2 == 1
    jiaotong = 15;
else
    jiaotong = 20;
end
if v5 == 1
    dixing = 20;
elseif v6 == 1
    dixing = 16;
elseif v7 == 1
    dixing = 12;
elseif v8 == 1
    dixing = 10;
else
    dixing = 8;
end
% Get default command line output from handles structure
varargout{1} = jiaotong;
varargout{2} = dixing;
delete(handles.figure1);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiresume(handles.figure1);  

% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
