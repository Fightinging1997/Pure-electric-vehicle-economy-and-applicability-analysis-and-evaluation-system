function varargout = sirenshouru2(varargin)
% SIRENSHOURU2 MATLAB code for sirenshouru2.fig
%      SIRENSHOURU2, by itself, creates a new SIRENSHOURU2 or raises the existing
%      singleton*.
%
%      H = SIRENSHOURU2 returns the handle to a new SIRENSHOURU2 or the handle to
%      the existing singleton*.
%
%      SIRENSHOURU2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIRENSHOURU2.M with the given input arguments.
%
%      SIRENSHOURU2('Property','Value',...) creates a new SIRENSHOURU2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sirenshouru2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sirenshouru2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sirenshouru2

% Last Modified by GUIDE v2.5 02-May-2020 09:23:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sirenshouru2_OpeningFcn, ...
                   'gui_OutputFcn',  @sirenshouru2_OutputFcn, ...
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


% --- Executes just before sirenshouru2 is made visible.
function sirenshouru2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sirenshouru2 (see VARARGIN)

% Choose default command line output for sirenshouru2
set(gcf,'numbertitle','off','name','处置收益');
set(handles.edit1,'string','请在此输入');
set(handles.edit2,'string','请在此输入');
set(handles.edit3,'string','');
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sirenshouru2 wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sirenshouru2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.text1;
delete(handles.figure1);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e1 = str2num(get(handles.edit1,'string'));
e2 = str2num(get(handles.edit2,'string'));
summ = floor(e1 + e2);
set(handles.edit3,'string',summ);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = get(handles.edit3,'string');
handles.text1 = h;
guidata(hObject,handles);
uiresume(handles.figure1);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n m s0 s1 s2 s3 shijian ghfeiyong j newvp zz
switch zz
    case 1
        b = str2num(n);
        r1 = 0.10;
        r2 = 0.07;
        r3 = 0.03;
        switch b
            case 1
                r = r1;
            case 2
                r = r1*2;
            case 3
                r = r1*3;
            case 4
                r = r1*4;
            case 5
                r = r1*5;
            case 6
                r = r1*5+r2;
            case 7
                r = r1*5+r2*2;
            case 8
                r = r1*5+r2*3;
            case 9
                r = r1*5+r2*4;
            case 10
                r = r1*5+r2*5;
            case 11
                r = r1*5+r2*5+r3;
            case 12
                r = r1*5+r2*5+r3*2;
            case 13
                r = r1*5+r2*5+r3*3;
            case 14
                r = r1*5+r2*5+r3*4;
            otherwise
                r = r1*5+r2*5+r3*5;
        end
        a = str2num(m);
        switch j
            case 1
                %         dc1 = s2*(s0-s1)*(150000-a)/150
                %         dc2 = s1*s2*(150000-(a-s3))/150
                %         dc = (dc1+dc2)/1.08^b;
                dc = floor(((150000-a)/150000*(s0-s1)+s1*(150000-(a-s3))/150000)*s2*1000/1.08^b);
            otherwise
                dc = floor((b/str2num(shijian))*str2num(ghfeiyong)/1.08^b);
        end   
        zs = floor(newvp*(0.15+0.85*(1-r))/1.08^b);
    otherwise
        dc = 0;
        zs = 0;
end
val = zs + dc;
set(handles.edit1,'string',zs);
set(handles.edit2,'string',dc);
set(handles.edit3,'string',val);
handles.val = round(val);
% set(handles.edit3,'string',h);

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
