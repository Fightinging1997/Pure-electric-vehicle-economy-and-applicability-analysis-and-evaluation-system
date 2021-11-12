 function varargout = chuzu(varargin)
% chuzu MATLAB code for chuzu.fig
%      chuzu, by itself, creates a new chuzu or raises the existing
%      singleton*.
%
%      H = chuzu returns the handle to a new chuzu or the handle to
%      the existing singleton*.
%
%      chuzu('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in chuzu.M with the given input arguments.
%
%      chuzu('Property','Value',...) creates a new chuzu or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chuzu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chuzu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chuzu

% Last Modified by GUIDE v2.5 19-Jun-2020 16:48:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chuzu_OpeningFcn, ...
                   'gui_OutputFcn',  @chuzu_OutputFcn, ...
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


% --- Executes just before chuzu is made visible.
function chuzu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chuzu (see VARARGIN)

% Choose default command line output for chuzu
set(gcf,'numbertitle','off','name','纯电动汽车出租模式总成本');
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
handles.text1='请点击输入';
handles.text2='';
guidata(hObject, handles);

set(handles.edit1,'string',handles.text1);
set(handles.edit2,'string',handles.text1);
set(handles.edit3,'string',handles.text1);
set(handles.edit4,'string',handles.text1);
set(handles.edit5,'string',handles.text1);
set(handles.edit6,'string',handles.text1);
set(handles.edit7,'string',handles.text1);
set(handles.edit8,'string',handles.text1);
set(handles.edit9,'string',handles.text1);
set(handles.edit10,'string',handles.text1);
set(handles.edit11,'string','请在此输入');
set(handles.edit12,'string',handles.text2);
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes chuzu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = chuzu_OutputFcn(hObject, eventdata, handles) 
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
    handles.s1=chuzu1(handles.text1,handles.text2);
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
%             [handles.chuzu20,handles.chuzu21]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 2
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 3
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 4
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 5
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 6
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 7
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 8
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 9
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28,handles.chuzu29]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 10
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28,handles.chuzu29,handles.chuzu210]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 11
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28,handles.chuzu29,handles.chuzu210,handles.chuzu211]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 12
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28,handles.chuzu29,handles.chuzu210,handles.chuzu211,handles.chuzu212]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 13
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28,handles.chuzu29,handles.chuzu210,handles.chuzu211,handles.chuzu212,handles.chuzu213]=chuzu2(handles.text1,handles.text2,handles.text3);
%         case 14
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28,handles.chuzu29,handles.chuzu210,handles.chuzu211,handles.chuzu212,handles.chuzu213,handles.chuzu214]=chuzu2(handles.text1,handles.text2,handles.text3);
%         otherwise
%             [handles.chuzu20,handles.chuzu21,handles.chuzu22,handles.chuzu23,handles.chuzu24,handles.chuzu25,handles.chuzu26,handles.chuzu27,handles.chuzu28,handles.chuzu29,handles.chuzu210,handles.chuzu211,handles.chuzu212,handles.chuzu213,handles.chuzu214,handles.	5]=chuzu2(handles.text1,handles.text2,handles.text3);
%     end
% else
%     set(handles.edit11,'string','输入错误');
% end
% guidata(hObject,handles);
% set(handles.edit2,'string',handles.chuzu20);
handles.text3=get(handles.edit11,'string');
val=str2double(handles.text3);
if (~isempty(val)) && (val>0)
     handles.cost20= cost2(handles.text1,handles.text2,handles.text3);
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
            [handles.chuzu30,handles.chuzu31]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.chuzu30,handles.chuzu31,handles.chuzu32]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38,handles.chuzu39]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38,handles.chuzu39,handles.chuzu310]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38,handles.chuzu39,handles.chuzu310,handles.chuzu311]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38,handles.chuzu39,handles.chuzu310,handles.chuzu311,handles.chuzu312]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38,handles.chuzu39,handles.chuzu310,handles.chuzu311,handles.chuzu312,handles.chuzu313]=chuzu3(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38,handles.chuzu39,handles.chuzu310,handles.chuzu311,handles.chuzu312,handles.chuzu313,handles.chuzu314]=chuzu3(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.chuzu30,handles.chuzu31,handles.chuzu32,handles.chuzu33,handles.chuzu34,handles.chuzu35,handles.chuzu36,handles.chuzu37,handles.chuzu38,handles.chuzu39,handles.chuzu310,handles.chuzu311,handles.chuzu312,handles.chuzu313,handles.chuzu314,handles.chuzu315]=chuzu3(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit3,'string',handles.chuzu30);



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
            [handles.chuzu40,handles.chuzu41]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.chuzu40,handles.chuzu41,handles.chuzu42]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48,handles.chuzu49]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48,handles.chuzu49,handles.chuzu410]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48,handles.chuzu49,handles.chuzu410,handles.chuzu411]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48,handles.chuzu49,handles.chuzu410,handles.chuzu411,handles.chuzu412]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48,handles.chuzu49,handles.chuzu410,handles.chuzu411,handles.chuzu412,handles.chuzu413]=chuzu4(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48,handles.chuzu49,handles.chuzu410,handles.chuzu411,handles.chuzu412,handles.chuzu413,handles.chuzu414]=chuzu4(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.chuzu40,handles.chuzu41,handles.chuzu42,handles.chuzu43,handles.chuzu44,handles.chuzu45,handles.chuzu46,handles.chuzu47,handles.chuzu48,handles.chuzu49,handles.chuzu410,handles.chuzu411,handles.chuzu412,handles.chuzu413,handles.chuzu414,handles.chuzu415]=chuzu4(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit4,'string',handles.chuzu40);



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
            [handles.chuzu50,handles.chuzu51]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.chuzu50,handles.chuzu51,handles.chuzu52]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58,handles.chuzu59]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58,handles.chuzu59,handles.chuzu510]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58,handles.chuzu59,handles.chuzu510,handles.chuzu511]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58,handles.chuzu59,handles.chuzu510,handles.chuzu511,handles.chuzu512]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58,handles.chuzu59,handles.chuzu510,handles.chuzu511,handles.chuzu512,handles.chuzu513]=chuzu5(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58,handles.chuzu59,handles.chuzu510,handles.chuzu511,handles.chuzu512,handles.chuzu513,handles.chuzu514]=chuzu5(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.chuzu50,handles.chuzu51,handles.chuzu52,handles.chuzu53,handles.chuzu54,handles.chuzu55,handles.chuzu56,handles.chuzu57,handles.chuzu58,handles.chuzu59,handles.chuzu510,handles.chuzu511,handles.chuzu512,handles.chuzu513,handles.chuzu514,handles.chuzu515]=chuzu5(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit5,'string',handles.chuzu50);



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
handles.t6=chuzu6(handles.text1,handles.text2,handles.text3);
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
            [handles.chuzu70,handles.chuzu71]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.chuzu70,handles.chuzu71,handles.chuzu72]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78,handles.chuzu79]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78,handles.chuzu79,handles.chuzu710]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78,handles.chuzu79,handles.chuzu710,handles.chuzu711]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78,handles.chuzu79,handles.chuzu710,handles.chuzu711,handles.chuzu712]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78,handles.chuzu79,handles.chuzu710,handles.chuzu711,handles.chuzu712,handles.chuzu713]=chuzu7(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78,handles.chuzu79,handles.chuzu710,handles.chuzu711,handles.chuzu712,handles.chuzu713,handles.chuzu714]=chuzu7(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.chuzu70,handles.chuzu71,handles.chuzu72,handles.chuzu73,handles.chuzu74,handles.chuzu75,handles.chuzu76,handles.chuzu77,handles.chuzu78,handles.chuzu79,handles.chuzu710,handles.chuzu711,handles.chuzu712,handles.chuzu713,handles.chuzu714,handles.chuzu715]=chuzu7(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit7,'string',handles.chuzu70);


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
    handles.chuzu80=chuzu8(handles.text1,handles.text2,handles.text3);
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit8,'string',handles.chuzu80);


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
        chushi = str2double(gouzhi) + str2double(handles.chuzu41) + cdz;
        co1 = (dc+df+str2double(handles.chuzu31)+str2double(handles.chuzu51)+str2double(handles.chuzu71)+str2double(handles.chuzu91)+str2double(handles.chuzu111))/1.08+chushi;
        number = [chushi;co1];
        zengjia0 = str2double(handles.chuzu31)+str2double(handles.chuzu41)+str2double(handles.chuzu51)+str2double(handles.chuzu71)+str2double(handles.chuzu91)+str2double(handles.chuzu111);
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (df+str2double(handles.chuzu32)+str2double(handles.chuzu42)*1.08+str2double(handles.chuzu52)+str2double(handles.chuzu72)+str2double(handles.chuzu92)+str2double(handles.chuzu112))/1.08^2;
        co2 = co1 + zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1;co2];
    end
    if year>=3
        zengjia2 = (df+str2double(handles.chuzu33)+str2double(handles.chuzu43)*1.08+str2double(handles.chuzu53)+str2double(handles.chuzu73)+str2double(handles.chuzu93)+str2double(handles.chuzu113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (df+str2double(handles.chuzu34)+str2double(handles.chuzu44)*1.08+str2double(handles.chuzu54)+str2double(handles.chuzu74)+str2double(handles.chuzu94)+str2double(handles.chuzu114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (df+str2double(handles.chuzu35)+str2double(handles.chuzu45)*1.08+str2double(handles.chuzu55)+str2double(handles.chuzu75)+str2double(handles.chuzu95)+str2double(handles.chuzu115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (df+str2double(handles.chuzu36)+str2double(handles.chuzu46)*1.08+str2double(handles.chuzu56)+str2double(handles.chuzu76)+str2double(handles.chuzu96)+str2double(handles.chuzu116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (df+str2double(handles.chuzu37)+str2double(handles.chuzu47)*1.08+str2double(handles.chuzu57)+str2double(handles.chuzu77)+str2double(handles.chuzu97)+str2double(handles.chuzu117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (df+str2double(handles.chuzu38)+str2double(handles.chuzu48)*1.08+str2double(handles.chuzu58)+str2double(handles.chuzu78)+str2double(handles.chuzu98)+str2double(handles.chuzu118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (df+str2double(handles.chuzu39)+str2double(handles.chuzu49)*1.08+str2double(handles.chuzu59)+str2double(handles.chuzu79)+str2double(handles.chuzu99)+str2double(handles.chuzu119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (df+str2double(handles.chuzu310)+str2double(handles.chuzu410)*1.08+str2double(handles.chuzu510)+str2double(handles.chuzu710)+str2double(handles.chuzu910)+str2double(handles.chuzu1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (df+str2double(handles.chuzu311)+str2double(handles.chuzu411)*1.08+str2double(handles.chuzu511)+str2double(handles.chuzu711)+str2double(handles.chuzu911)+str2double(handles.chuzu1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (df+str2double(handles.chuzu312)+str2double(handles.chuzu412)*1.08+str2double(handles.chuzu512)+str2double(handles.chuzu712)+str2double(handles.chuzu912)+str2double(handles.chuzu1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (df+str2double(handles.chuzu313)+str2double(handles.chuzu413)*1.08+str2double(handles.chuzu513)+str2double(handles.chuzu713)+str2double(handles.chuzu913)+str2double(handles.chuzu1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (df+str2double(handles.chuzu314)+str2double(handles.chuzu414)*1.08+str2double(handles.chuzu514)+str2double(handles.chuzu714)+str2double(handles.chuzu914)+str2double(handles.chuzu1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (df+str2double(handles.chuzu315)+str2double(handles.chuzu415)*1.08+str2double(handles.chuzu515)+str2double(handles.chuzu715)+str2double(handles.chuzu915)+str2double(handles.chuzu1115))/1.08^15;
        co15 = co14+zengjia14;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13 + zengjia14)/15;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
    end
else
    if year>=1
        chushi = str2double(gouzhi) + str2double(handles.chuzu41) + cdz;
        co1 = (df+dc+str2double(handles.chuzu31)+str2double(handles.chuzu51)+str2double(handles.chuzu71)+str2double(handles.chuzu91)+str2double(handles.chuzu111))/1.08+chushi;
        number = [chushi;co1];
        zengjia0 = str2double(gouzhi)+str2double(handles.chuzu31)+str2double(handles.chuzu41)+str2double(handles.chuzu51)+str2double(handles.chuzu71)+str2double(handles.chuzu91)+str2double(handles.chuzu111);
        jun1 = zengjia0;
    end
    if year>=2
        zengjia1 = (df+str2double(gouzhi)+str2double(handles.chuzu32)+str2double(handles.chuzu42)*1.08+str2double(handles.chuzu52)+str2double(handles.chuzu72)+str2double(handles.chuzu92)+str2double(handles.chuzu112))/1.08^2;
        co2 = co1+zengjia1;
        jun1 = (zengjia0 + zengjia1)/2;
        number = [chushi;co1;co2];
    end
    if year>=3
        zengjia2 = (df+str2double(gouzhi)+str2double(handles.chuzu33)+str2double(handles.chuzu43)*1.08+str2double(handles.chuzu53)+str2double(handles.chuzu73)+str2double(handles.chuzu93)+str2double(handles.chuzu113))/1.08^3;
        co3 = co2+zengjia2;
        jun1 = (zengjia0 + zengjia1 + zengjia2)/3;
        number = [chushi;chushi;co1;co2;co3];
    end
    if year>=4
        zengjia3 = (df+str2double(gouzhi)+str2double(handles.chuzu34)+str2double(handles.chuzu44)*1.08+str2double(handles.chuzu54)+str2double(handles.chuzu74)+str2double(handles.chuzu94)+str2double(handles.chuzu114))/1.08^4;
        co4 = co3+zengjia3;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3)/4;
        number = [chushi;co1;co2;co3;co4];
    end
    if year>=5
        zengjia4 = (df+str2double(gouzhi)+str2double(handles.chuzu35)+str2double(handles.chuzu45)*1.08+str2double(handles.chuzu55)+str2double(handles.chuzu75)+str2double(handles.chuzu95)+str2double(handles.chuzu115))/1.08^5;
        co5 = co4+zengjia4;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4)/5;
        number = [chushi;co1;co2;co3;co4;co5];
    end
    if year>=6
        zengjia5 = (df+str2double(gouzhi)+str2double(handles.chuzu36)+str2double(handles.chuzu46)*1.08+str2double(handles.chuzu56)+str2double(handles.chuzu76)+str2double(handles.chuzu96)+str2double(handles.chuzu116))/1.08^6;
        co6 = co5+zengjia5;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5)/6;
        number = [chushi;co1;co2;co3;co4;co5;co6];
    end
    if year>=7
        zengjia6 = (df+str2double(gouzhi)+str2double(handles.chuzu37)+str2double(handles.chuzu47)*1.08+str2double(handles.chuzu57)+str2double(handles.chuzu77)+str2double(handles.chuzu97)+str2double(handles.chuzu117))/1.08^7;
        co7 = co6+zengjia6;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6)/7;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7];
    end
    if year>=8
        zengjia7 = (df+str2double(gouzhi)+str2double(handles.chuzu38)+str2double(handles.chuzu48)*1.08+str2double(handles.chuzu58)+str2double(handles.chuzu78)+str2double(handles.chuzu98)+str2double(handles.chuzu118))/1.08^8;
        co8 = co7+zengjia7;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7)/8;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8];
    end
    if year>=9
        zengjia8 = (df+str2double(gouzhi)+str2double(handles.chuzu39)+str2double(handles.chuzu49)*1.08+str2double(handles.chuzu59)+str2double(handles.chuzu79)+str2double(handles.chuzu99)+str2double(handles.chuzu119))/1.08^9;
        co9 = co8+zengjia8;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8)/9;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9];
    end
    if year>=10
        zengjia9 = (df+str2double(gouzhi)+str2double(handles.chuzu310)+str2double(handles.chuzu410)*1.08+str2double(handles.chuzu510)+str2double(handles.chuzu710)+str2double(handles.chuzu910)+str2double(handles.chuzu1110))/1.08^10;
        co10 = co9+zengjia9;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9)/10;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
    end
    if year>=11
        zengjia10 = (df+str2double(gouzhi)+str2double(handles.chuzu311)+str2double(handles.chuzu411)*1.08+str2double(handles.chuzu511)+str2double(handles.chuzu711)+str2double(handles.chuzu911)+str2double(handles.chuzu1111))/1.08^11;
        co11 = co10+zengjia10;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10)/11;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
    end
    if year>=12
        zengjia11 = (df+str2double(gouzhi)+str2double(handles.chuzu312)+str2double(handles.chuzu412)*1.08+str2double(handles.chuzu512)+str2double(handles.chuzu712)+str2double(handles.chuzu912)+str2double(handles.chuzu1112))/1.08^12;
        co12 = co11+zengjia11;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11)/12;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
    end
    if year>=13
        zengjia12 = (df+str2double(gouzhi)+str2double(handles.chuzu313)+str2double(handles.chuzu413)*1.08+str2double(handles.chuzu513)+str2double(handles.chuzu713)+str2double(handles.chuzu913)+str2double(handles.chuzu1113))/1.08^13;
        co13 = co12+zengjia12;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12)/13;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
    end
    if year>=14
        zengjia13 = (df+str2double(gouzhi)+str2double(handles.chuzu314)+str2double(handles.chuzu414)*1.08+str2double(handles.chuzu514)+str2double(handles.chuzu714)+str2double(handles.chuzu914)+str2double(handles.chuzu1114))/1.08^14;
        co14 = co13+zengjia13;
        jun1 = (zengjia0 + zengjia1 + zengjia2 + zengjia3 + zengjia4 + zengjia5 + zengjia6 + zengjia7 + zengjia8 + zengjia9 + zengjia10 + zengjia11 + zengjia12 + zengjia13)/14;
        number = [chushi;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
    end
    if year>=15
        zengjia14 = (df+str2double(gouzhi)+str2double(handles.chuzu315)+str2double(handles.chuzu415)*1.08+str2double(handles.chuzu515)+str2double(handles.chuzu715)+str2double(handles.chuzu915)+str2double(handles.chuzu1115))/1.08^15;
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
            [handles.chuzu110,handles.chuzu111]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.chuzu110,handles.chuzu111,handles.chuzu112]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118,handles.chuzu119]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118,handles.chuzu119,handles.chuzu1110]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118,handles.chuzu119,handles.chuzu1110,handles.chuzu1111]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118,handles.chuzu119,handles.chuzu1110,handles.chuzu1111,handles.chuzu1112]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118,handles.chuzu119,handles.chuzu1110,handles.chuzu1111,handles.chuzu1112,handles.chuzu1113]=chuzu11(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118,handles.chuzu119,handles.chuzu1110,handles.chuzu1111,handles.chuzu1112,handles.chuzu1113,handles.chuzu1114]=chuzu11(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.chuzu110,handles.chuzu111,handles.chuzu112,handles.chuzu113,handles.chuzu114,handles.chuzu115,handles.chuzu116,handles.chuzu117,handles.chuzu118,handles.chuzu119,handles.chuzu1110,handles.chuzu1111,handles.chuzu1112,handles.chuzu1113,handles.chuzu1114,handles.chuzu1115]=chuzu11(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit10,'string',handles.chuzu110);


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
            [handles.chuzu90,handles.chuzu91]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.chuzu90,handles.chuzu91,handles.chuzu92]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98,handles.chuzu99]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98,handles.chuzu99,handles.chuzu910]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98,handles.chuzu99,handles.chuzu910,handles.chuzu911]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98,handles.chuzu99,handles.chuzu910,handles.chuzu911,handles.chuzu912]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98,handles.chuzu99,handles.chuzu910,handles.chuzu911,handles.chuzu912,handles.chuzu913]=chuzu9(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98,handles.chuzu99,handles.chuzu910,handles.chuzu911,handles.chuzu912,handles.chuzu913,handles.chuzu914]=chuzu9(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.chuzu90,handles.chuzu91,handles.chuzu92,handles.chuzu93,handles.chuzu94,handles.chuzu95,handles.chuzu96,handles.chuzu97,handles.chuzu98,handles.chuzu99,handles.chuzu910,handles.chuzu911,handles.chuzu912,handles.chuzu913,handles.chuzu914,handles.chuzu915]=chuzu9(handles.text1,handles.text2,handles.text3);
    end
else
    set(handles.edit11,'string','输入错误');
end
guidata(hObject,handles);
set(handles.edit9,'string',handles.chuzu90);


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
