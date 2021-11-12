function varargout = lilunbaigonglidianhao(varargin)
% LILUNBAIGONGLIDIANHAO MATLAB code for lilunbaigonglidianhao.fig
%      LILUNBAIGONGLIDIANHAO, by itself, creates a new LILUNBAIGONGLIDIANHAO or raises the existing
%      singleton*.
%
%      H = LILUNBAIGONGLIDIANHAO returns the handle to a new LILUNBAIGONGLIDIANHAO or the handle to
%      the existing singleton*.
%
%      LILUNBAIGONGLIDIANHAO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LILUNBAIGONGLIDIANHAO.M with the given input arguments.
%
%      LILUNBAIGONGLIDIANHAO('Property','Value',...) creates a new LILUNBAIGONGLIDIANHAO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lilunbaigonglidianhao_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lilunbaigonglidianhao_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lilunbaigonglidianhao

% Last Modified by GUIDE v2.5 06-Jan-2021 21:49:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lilunbaigonglidianhao_OpeningFcn, ...
                   'gui_OutputFcn',  @lilunbaigonglidianhao_OutputFcn, ...
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


% --- Executes just before lilunbaigonglidianhao is made visible.
function lilunbaigonglidianhao_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lilunbaigonglidianhao (see VARARGIN)

% Choose default command line output for lilunbaigonglidianhao
handles.output = hObject;
set(gcf,'numbertitle','off','name','理论百公里电耗');
%默认气候
global diqu
value = diqu;
switch value
    case {25,26,33,23,31,32,30}
        set(handles.popupmenu6,'value',1);
    case {29,34,10,22,1,7,5,3,14}
        set(handles.popupmenu6,'value',2);
    case {16,12,21,18,4,6,28,11,20,8}
        set(handles.popupmenu6,'value',3);
    case {17,2,13,27,9,24,19}
        set(handles.popupmenu6,'value',4);
    otherwise
        set(handles.popupmenu6,'value',5);
end
value1 = get(handles.popupmenu6,'value');
switch value1
    case 1
        set(handles.edit8,'string',-20);
        set(handles.edit7,'string',5);
        set(handles.edit4,'string',40);
        set(handles.edit5,'string',30);
        set(handles.edit6,'string',25);
    case 2
        set(handles.edit8,'string',-10);
        set(handles.edit7,'string',10);
        set(handles.edit4,'string',45);
        set(handles.edit5,'string',30);
        set(handles.edit6,'string',15);
    case 3
        set(handles.edit8,'string',0);
        set(handles.edit7,'string',10);
        set(handles.edit4,'string',40);
        set(handles.edit5,'string',48);
        set(handles.edit6,'string',2);
    case 4
        set(handles.edit8,'string',10);
        set(handles.edit7,'string',10);
        set(handles.edit4,'string',85);
        set(handles.edit5,'string',5);
        set(handles.edit6,'string',0);
    otherwise
        set(handles.edit8,'string',0);
        set(handles.edit7,'string',5);
        set(handles.edit4,'string',90);
        set(handles.edit5,'string',5);
        set(handles.edit6,'string',0);
end


set(handles.popupmenu3,'string',["微型车";"小型车";"紧凑型车";"中型车";"中大型车";"大型车"]);
set(handles.text5,'visible','on');
set(handles.text7,'visible','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lilunbaigonglidianhao wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lilunbaigonglidianhao_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
handles.ec = get(handles.edit12,'string');
varargout{1} = handles.ec;
delete(handles.figure1);


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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = get(handles.popupmenu2,'value');
switch value
    case 1
        set(handles.popupmenu3,'value',1);
        set(handles.popupmenu3,'string',["微型车";"小型车";"紧凑型车";"中型车";"中大型车";"大型车"]);
        set(handles.text5,'visible','on');
        set(handles.text7,'visible','off');
    case 2
        set(handles.popupmenu3,'value',1);
        set(handles.popupmenu3,'string',["小型SUV";"紧凑型SUV";"中型SUV";"中大型SUV";"大型SUV"]);
        set(handles.text5,'visible','on');
        set(handles.text7,'visible','off');
    case 3
        set(handles.popupmenu3,'value',1);
        set(handles.popupmenu3,'string',["微型货车";"轻型货车";"中型货车"]);
        set(handles.text5,'visible','off');
        set(handles.text7,'visible','on');
end

value1 = get(handles.popupmenu2,'value');
value2 = get(handles.popupmenu3,'value');

if value1 == 1
    switch value2
        case 1
            set(handles.edit1,'string',787);
        case 2
            set(handles.edit1,'string',1240);
        case 3
            set(handles.edit1,'string',1535);
        case 4
            set(handles.edit1,'string',1784);
        case 5
            set(handles.edit1,'string',1978);
        otherwise
            set(handles.edit1,'string',2175);
    end
elseif value1 == 2
    switch value2
        case 1
            set(handles.edit1,'string',1579);
        case 2
            set(handles.edit1,'string',1718);
        case 3
            set(handles.edit1,'string',1890);
        case 4
            set(handles.edit1,'string',2500);
        otherwise
            set(handles.edit1,'string',2702);
    end
else
    switch value2
        case 1
            set(handles.edit1,'string',1600);
        case 2
            set(handles.edit1,'string',3800);
        otherwise
            set(handles.edit1,'string',10000);
    end  
end
    


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


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
value1 = get(handles.popupmenu2,'value');
value2 = get(handles.popupmenu3,'value');

if value1 == 1
    switch value2
        case 1
            set(handles.edit1,'string',787);
        case 2
            set(handles.edit1,'string',1240);
        case 3
            set(handles.edit1,'string',1535);
        case 4
            set(handles.edit1,'string',1784);
        case 5
            set(handles.edit1,'string',1978);
        otherwise
            set(handles.edit1,'string',2175);
    end
elseif value1 == 2
    switch value2
        case 1
            set(handles.edit1,'string',1579);
        case 2
            set(handles.edit1,'string',1718);
        case 3
            set(handles.edit1,'string',1890);
        case 4
            set(handles.edit1,'string',2500);
        otherwise
            set(handles.edit1,'string',2702);
    end
else
    switch value2
        case 1
            set(handles.edit1,'string',1600);
        case 2
            set(handles.edit1,'string',3800);
        otherwise
            set(handles.edit1,'string',10000);
    end  
end

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


% --- Executes on selection change in popupmenu4.
% function popupmenu4_Callback(hObject, eventdata, handles)
% % hObject    handle to popupmenu4 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% value = get(handles.popupmenu4,'value');
% switch value
%     case 1
%         set(handles.edit3,'string',0);
%     case 2
%         set(handles.edit3,'string',1);
%     case 3
%         set(handles.edit3,'string',1);
%     case 4
%         set(handles.edit3,'string',3);
%     otherwise
%         set(handles.edit3,'string',4);
% end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
% function popupmenu4_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to popupmenu4 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: popupmenu controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end



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


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = get(handles.popupmenu6,'value');
switch value
    case 1
        set(handles.edit8,'string',-20);
        set(handles.edit7,'string',5);
        set(handles.edit4,'string',40);
        set(handles.edit5,'string',30);
        set(handles.edit6,'string',25);
    case 2
        set(handles.edit8,'string',-10);
        set(handles.edit7,'string',10);
        set(handles.edit4,'string',45);
        set(handles.edit5,'string',30);
        set(handles.edit6,'string',15);
    case 3
        set(handles.edit8,'string',0);
        set(handles.edit7,'string',10);
        set(handles.edit4,'string',40);
        set(handles.edit5,'string',48);
        set(handles.edit6,'string',2);
    case 4
        set(handles.edit8,'string',10);
        set(handles.edit7,'string',10);
        set(handles.edit4,'string',85);
        set(handles.edit5,'string',5);
        set(handles.edit6,'string',0);
    otherwise
        set(handles.edit8,'string',0);
        set(handles.edit7,'string',5);
        set(handles.edit4,'string',90);
        set(handles.edit5,'string',5);
        set(handles.edit6,'string',0);
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8
value = get(handles.popupmenu8,'value');
switch value
    case 1
        set(handles.edit9,'string',60);
        set(handles.edit10,'string',30);
        set(handles.edit11,'string',10);
    case 2
        set(handles.edit9,'string',40);
        set(handles.edit10,'string',50);
        set(handles.edit11,'string',10);
    case 3
        set(handles.edit9,'string',20);
        set(handles.edit10,'string',60);
        set(handles.edit11,'string',20);
    case 4
        set(handles.edit9,'string',20);
        set(handles.edit10,'string',40);
        set(handles.edit11,'string',40);
    otherwise
        set(handles.edit9,'string',10);
        set(handles.edit10,'string',20);
        set(handles.edit11,'string',70);
end

% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global moshi m
%车速占比
n1 = str2num(get(handles.edit9,'string'));
n2 = str2num(get(handles.edit10,'string'));
n3 = str2num(get(handles.edit11,'string'));
n = n1 + n2 + n3;
%温度
wd1 = str2num(get(handles.edit7,'string'));
wd2 = str2num(get(handles.edit4,'string'));
wd3 = str2num(get(handles.edit5,'string'));
wd4 = str2num(get(handles.edit6,'string'));
wd = wd1 + wd2 + wd3 + wd4;
if (wd == 100) && (n == 100)
    M = str2num(get(handles.edit1,'string'));
    %delt_h = str2num(get(handles.edit3,'string'));
    delt_h = 0;
    %k = str2num(get(handles.edit2,'string'));
    k = 0;
    car = get(handles.popupmenu2,'value');
    if car == 3
        mk = str2num(get(handles.edit1,'string'));
        if mk <= 5500
            ec = EnergyConsumption_lt(M, k, delt_h, n1, n2, n3);%基准能耗
        else
            ec = EnergyConsumption_ht(M, k, delt_h, n1, n2, n3);%基准能耗
        end
    else
        ec = EnergyConsumption(M, k, delt_h, n1, n2, n3);
    end
    %温度
    cj = moshi;%物流车
    k1 = wenduxishu(cj, wd1, wd2, wd3, wd4);
    k2 = dianchilaohua(m);
    ec = (1 + k1)*(1+k2)*ec;
    
    set(handles.edit12,'string',ec);
else
    if wd ~= 100
        set(handles.text32,'visible','on');
        set(handles.text32,'string','注意全年气候占比总和为1,请您修正');
    elseif n ~= 100
        set(handles.text32,'visible','on');
        set(handles.text32,'string','注意各级速度占比总和为1,请您修正');
    end
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global qihou jiaotong
qihou = get(handles.popupmenu6,'value');
% dixing = get(handles.popupmenu4,'value');
jiaotong = get(handles.popupmenu8,'value'); 
uiresume(handles.figure1);  


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ditu()
