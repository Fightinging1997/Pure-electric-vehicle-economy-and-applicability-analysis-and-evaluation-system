function varargout = cost2__1(varargin)
% COST2__1 MATLAB code for cost2__1.fig
%      COST2__1, by itself, creates a new COST2__1 or raises the existing
%      singleton*.
%
%      H = COST2__1 returns the handle to a new COST2__1 or the handle to
%      the existing singleton*.
%
%      COST2__1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COST2__1.M with the given input arguments.
%
%      COST2__1('Property','Value',...) creates a new COST2__1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cost2__1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cost2__1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cost2__1

% Last Modified by GUIDE v2.5 30-Mar-2020 15:11:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cost2__1_OpeningFcn, ...
                   'gui_OutputFcn',  @cost2__1_OutputFcn, ...
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


% --- Executes just before cost2__1 is made visible.
function cost2__1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cost2__1 (see VARARGIN)
set(gcf,'numbertitle','off','name','电价计算');
% Choose default command line output for cost2__1
handles.output = hObject;
set(handles.uipanel1, 'Position', [60 3 960 638]); 
set(handles.uipanel2, 'Position', [2000 25 64 16.857]); 
set(handles.uipanel3, 'Position', [2000 25 64 16.857]);  
set(handles.hedit1,'string','请在此输入');
set(handles.hedit2,'string','请在此输入');
set(handles.hedit3,'string','请在此输入');
set(handles.hedit4,'string','请在此输入');
set(handles.hedit5,'string','请在此输入');
set(handles.hedit6,'string','请在此输入');
set(handles.hedit7,'string','请在此输入');
set(handles.hedit8,'string','请在此输入');
set(handles.hedit9,'string','');
set(handles.dedit1,'string','请在此输入');
set(handles.dedit2,'string','');
set(handles.fedit1,'string','请在此输入');
set(handles.fedit2,'string','请在此输入');
set(handles.fedit3,'string','请在此输入');
set(handles.fedit4,'string','请在此输入');
set(handles.fedit5,'string','请在此输入');
set(handles.fedit6,'string','请在此输入');
set(handles.fedit7,'string','');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cost2__1 wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cost2__1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global k;
k=1;
delete(handles.figure1);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1, 'Position', [60 3 960 638]);
set(handles.uipanel1, 'Visible', 'On');
 
set(handles.uipanel2, 'Position', [200 25 64 21]);
set(handles.uipanel2, 'Visible', 'Off');
 
set(handles.uipanel3, 'Position', [2000 25 64 21]);
set(handles.uipanel3, 'Visible', 'Off');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1, 'Position', [200 25 64 21]);
set(handles.uipanel1, 'Visible', 'Off');
 
set(handles.uipanel2, 'Position', [60 3 960 638]);
set(handles.uipanel2, 'Visible', 'On');
 
set(handles.uipanel3, 'Position', [200 25 64 21]);
set(handles.uipanel3, 'Visible', 'Off');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1, 'Position', [200 25 64 21]);
set(handles.uipanel1, 'Visible', 'Off');
 
set(handles.uipanel2, 'Position', [200 25 64 21]);
set(handles.uipanel2, 'Visible', 'Off');
 
set(handles.uipanel3, 'Position', [60 3 960 638]);
set(handles.uipanel3, 'Visible', 'On');



function dedit2_Callback(hObject, eventdata, handles)
% hObject    handle to dedit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dedit2 as text
%        str2double(get(hObject,'String')) returns contents of dedit2 as a double


% --- Executes during object creation, after setting all properties.
function dedit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dedit2 (see GCBO)
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
global sum1;
sum1 = str2num(get(handles.dedit1,'string'));
set(handles.dedit2,'string',sum1);
handles.output=sum1;
guidata(hObject,handles);
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.dedit1,'string','1.09958');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiresume(handles.figure1);


function dedit1_Callback(hObject, eventdata, handles)
% hObject    handle to dedit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dedit1 as text
%        str2double(get(hObject,'String')) returns contents of dedit1 as a double


% --- Executes during object creation, after setting all properties.
function dedit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dedit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fedit1_Callback(hObject, eventdata, handles)
% hObject    handle to fedit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fedit1 as text
%        str2double(get(hObject,'String')) returns contents of fedit1 as a double


% --- Executes during object creation, after setting all properties.
function fedit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fedit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fedit2_Callback(hObject, eventdata, handles)
% hObject    handle to fedit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fedit2 as text
%        str2double(get(hObject,'String')) returns contents of fedit2 as a double


% --- Executes during object creation, after setting all properties.
function fedit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fedit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fedit3_Callback(hObject, eventdata, handles)
% hObject    handle to fedit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fedit3 as text
%        str2double(get(hObject,'String')) returns contents of fedit3 as a double


% --- Executes during object creation, after setting all properties.
function fedit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fedit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fedit4_Callback(hObject, eventdata, handles)
% hObject    handle to fedit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fedit4 as text
%        str2double(get(hObject,'String')) returns contents of fedit4 as a double


% --- Executes during object creation, after setting all properties.
function fedit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fedit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fedit5_Callback(hObject, eventdata, handles)
% hObject    handle to fedit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fedit5 as text
%        str2double(get(hObject,'String')) returns contents of fedit5 as a double


% --- Executes during object creation, after setting all properties.
function fedit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fedit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fedit6_Callback(hObject, eventdata, handles)
% hObject    handle to fedit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fedit6 as text
%        str2double(get(hObject,'String')) returns contents of fedit6 as a double


% --- Executes during object creation, after setting all properties.
function fedit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fedit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fedit7_Callback(hObject, eventdata, handles)
% hObject    handle to fedit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fedit7 as text
%        str2double(get(hObject,'String')) returns contents of fedit7 as a double


% --- Executes during object creation, after setting all properties.
function fedit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fedit7 (see GCBO)
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
global sum1;
f1=str2num(get(handles.fedit1,'string'));
f2=str2num(get(handles.fedit2,'string'));
f3=str2num(get(handles.fedit3,'string'));
f4=str2num(get(handles.fedit4,'string'));
f5=str2num(get(handles.fedit5,'string'));
f6=str2num(get(handles.fedit6,'string'));
sum1 = (f1*f4+f2*f5+f3*f6)/10;
set(handles.fedit7,'string',sum1);
handles.output=sum1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.fedit1,'string','1.4050');
set(handles.fedit4,'string','5');
set(handles.fedit2,'string','1.1686');
set(handles.fedit5,'string','3');
set(handles.fedit3,'string','0.9360');
set(handles.fedit6,'string','2');

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiresume(handles.figure1);



function hedit1_Callback(hObject, eventdata, handles)
% hObject    handle to hedit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit1 as text
%        str2double(get(hObject,'String')) returns contents of hedit1 as a double


% --- Executes during object creation, after setting all properties.
function hedit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hedit2_Callback(hObject, eventdata, handles)
% hObject    handle to hedit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit2 as text
%        str2double(get(hObject,'String')) returns contents of hedit2 as a double


% --- Executes during object creation, after setting all properties.
function hedit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hedit3_Callback(hObject, eventdata, handles)
% hObject    handle to hedit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit3 as text
%        str2double(get(hObject,'String')) returns contents of hedit3 as a double


% --- Executes during object creation, after setting all properties.
function hedit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hedit5_Callback(hObject, eventdata, handles)
% hObject    handle to hedit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit5 as text
%        str2double(get(hObject,'String')) returns contents of hedit5 as a double


% --- Executes during object creation, after setting all properties.
function hedit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hedit6_Callback(hObject, eventdata, handles)
% hObject    handle to hedit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit6 as text
%        str2double(get(hObject,'String')) returns contents of hedit6 as a double


% --- Executes during object creation, after setting all properties.
function hedit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hedit7_Callback(hObject, eventdata, handles)
% hObject    handle to hedit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit7 as text
%        str2double(get(hObject,'String')) returns contents of hedit7 as a double


% --- Executes during object creation, after setting all properties.
function hedit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hedit9_Callback(hObject, eventdata, handles)
% hObject    handle to hedit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit9 as text
%        str2double(get(hObject,'String')) returns contents of hedit9 as a double


% --- Executes during object creation, after setting all properties.
function hedit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global sum1;
h1=str2num(get(handles.hedit1,'string'));
h2=str2num(get(handles.hedit2,'string'));
h3=str2num(get(handles.hedit3,'string'));
h4=str2num(get(handles.hedit4,'string'));
h5=str2num(get(handles.hedit5,'string'));
h6=str2num(get(handles.hedit6,'string'));
h7=str2num(get(handles.hedit7,'string'));
h8=str2num(get(handles.hedit8,'string'));
sum1 = (h1*h4+h2*h5+h3*h6+h4*h8)/10;
set(handles.hedit9,'string',sum1);
handles.output=sum1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.hedit1,'string','1.4050');
set(handles.hedit5,'string','4');
set(handles.hedit2,'string','1.1686');
set(handles.hedit6,'string','2');
set(handles.hedit3,'string','0.9360');
set(handles.hedit7,'string','1');
set(handles.hedit4,'string','1.0000');
set(handles.hedit8,'string','3');

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiresume(handles.figure1);

function hedit4_Callback(hObject, eventdata, handles)
% hObject    handle to hedit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit4 as text
%        str2double(get(hObject,'String')) returns contents of hedit4 as a double


% --- Executes during object creation, after setting all properties.
function hedit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hedit8_Callback(hObject, eventdata, handles)
% hObject    handle to hedit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hedit8 as text
%        str2double(get(hObject,'String')) returns contents of hedit8 as a double


% --- Executes during object creation, after setting all properties.
function hedit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hedit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
