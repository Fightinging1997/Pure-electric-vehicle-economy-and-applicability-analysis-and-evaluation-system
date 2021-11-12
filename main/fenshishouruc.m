function varargout = fenshishouruc(varargin)
% fenshishouruc MATLAB code for fenshishouruc.fig
%      fenshishouruc, by itself, creates a new fenshishouruc or raises the existing
%      singleton*.
%
%      H = fenshishouruc returns the handle to a new fenshishouruc or the handle to
%      the existing singleton*.
%
%      fenshishouruc('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in fenshishouruc.M with the given input arguments.
%
%      fenshishouruc('Property','Value',...) creates a new fenshishouruc or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fenshishouruc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fenshishouruc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fenshishouruc

% Last Modified by GUIDE v2.5 29-Apr-2020 09:48:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fenshishouruc_OpeningFcn, ...
                   'gui_OutputFcn',  @fenshishouruc_OutputFcn, ...
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


% --- Executes just before fenshishouruc is made visible.
function fenshishouruc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fenshishouruc (see VARARGIN)
set(gcf,'numbertitle','off','name','纯电动汽车营运总收入');
handles.chuzhi = '0';
% Choose default command line output for fenshishouruc
global c
switch c
    case 1
        set(handles.uipanel7,'visible','on');
        set(handles.text14,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text15,'visible','on');
        set(handles.pushbutton2,'visible','on');        
    otherwise
        set(handles.uipanel7,'visible','off');
        set(handles.text14,'visible','off');
        set(handles.edit4,'visible','off');
        set(handles.text15,'visible','off');
        set(handles.pushbutton2,'visible','off');
end

set(gcf,'numbertitle','off','name','纯电动汽车总收入');
% ha=axes('units','normalized','position',[0 0 1 1]);
% uistack(ha,'down')
% II=imread('F:\Matlab_2019b\1\视觉中国\视觉中国25.jpg');
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
handles.text1='请在此输入';
handles.text2='';
set(handles.edit1,'string',"请点击输入");
set(handles.edit2,'string',"请点击输入");
set(handles.edit3,'string',"请点击输入");
set(handles.edit4,'string',"请点击输入");
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fenshishouruc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fenshishouruc_OutputFcn(hObject, eventdata, handles) 
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
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n
handles.text3 = n;
val = str2double(n);
switch val
        case 1
            [handles.shouru10,handles.shouru11]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.shouru10,handles.shouru11,handles.shouru12]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18,handles.shouru19]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18,handles.shouru19,handles.shouru110]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18,handles.shouru19,handles.shouru110,handles.shouru111]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18,handles.shouru19,handles.shouru110,handles.shouru111,handles.shouru112]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18,handles.shouru19,handles.shouru110,handles.shouru111,handles.shouru112,handles.shouru113]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18,handles.shouru19,handles.shouru110,handles.shouru111,handles.shouru112,handles.shouru113,handles.shouru114]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.shouru10,handles.shouru11,handles.shouru12,handles.shouru13,handles.shouru14,handles.shouru15,handles.shouru16,handles.shouru17,handles.shouru18,handles.shouru19,handles.shouru110,handles.shouru111,handles.shouru112,handles.shouru113,handles.shouru114,handles.shouru115]=sirenshouru1(handles.text1,handles.text2,handles.text3);
end
guidata(hObject,handles);
set(handles.edit1,'string',handles.shouru10);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = sirenshouru2;
handles.chuzhi = h;
guidata(hObject,handles);
set(handles.edit4,'string',h);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n
handles.text3 = n;
val = str2double(n);
switch val
        case 1
            [handles.shouru30,handles.shouru31]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.shouru30,handles.shouru31,handles.shouru32]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38,handles.shouru39]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38,handles.shouru39,handles.shouru310]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38,handles.shouru39,handles.shouru310,handles.shouru311]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38,handles.shouru39,handles.shouru310,handles.shouru311,handles.shouru312]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38,handles.shouru39,handles.shouru310,handles.shouru311,handles.shouru312,handles.shouru313]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38,handles.shouru39,handles.shouru310,handles.shouru311,handles.shouru312,handles.shouru313,handles.shouru314]=sirenshouru3(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.shouru30,handles.shouru31,handles.shouru32,handles.shouru33,handles.shouru34,handles.shouru35,handles.shouru36,handles.shouru37,handles.shouru38,handles.shouru39,handles.shouru310,handles.shouru311,handles.shouru312,handles.shouru313,handles.shouru314,handles.shouru315]=sirenshouru3(handles.text1,handles.text2,handles.text3);
end
guidata(hObject,handles);
set(handles.edit3,'string',handles.shouru30);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n
handles.text3 = n;
val = str2double(n);
switch val
        case 1
            [handles.shouru40,handles.shouru41]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.shouru40,handles.shouru41,handles.shouru42]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48,handles.shouru49]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48,handles.shouru49,handles.shouru410]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48,handles.shouru49,handles.shouru410,handles.shouru411]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48,handles.shouru49,handles.shouru410,handles.shouru411,handles.shouru412]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48,handles.shouru49,handles.shouru410,handles.shouru411,handles.shouru412,handles.shouru413]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48,handles.shouru49,handles.shouru410,handles.shouru411,handles.shouru412,handles.shouru413,handles.shouru414]=sirenshouru4(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.shouru40,handles.shouru41,handles.shouru42,handles.shouru43,handles.shouru44,handles.shouru45,handles.shouru46,handles.shouru47,handles.shouru48,handles.shouru49,handles.shouru410,handles.shouru411,handles.shouru412,handles.shouru413,handles.shouru414,handles.shouru415]=sirenshouru4(handles.text1,handles.text2,handles.text3);
end
guidata(hObject,handles);
set(handles.edit2,'string',handles.shouru40);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a1 = str2double(get(handles.edit1,'string'));
a2 = str2double(get(handles.edit2,'string'));
a3 = str2double(get(handles.edit3,'string'));
global c sums
if c == 1
    a4 = str2double(get(handles.edit4,'string'));
    sums = a1 + a2 + a3 + a4;
else
    sums = a1 + a2 + a3 ;
end
set(handles.edit5,'string',num2str(sums));

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n numbers c jun2
year = str2double(n);
switch c
    case 1
        if year>=1
            co1 = str2double(handles.shouru11)+str2double(handles.chuzhi)+str2double(handles.shouru31)+str2double(handles.shouru41);
            numbers = [0;co1];
            jun2 = co1;
        end
        if year>=2
            zengjia1 = (str2double(handles.shouru12)+str2double(handles.shouru32)+str2double(handles.shouru42))/1.08;
            co2 = co1+zengjia1;
            jun2 = co2/2;
            numbers = [0;co1;co2];
        end
        if year>=3
            zengjia2 = (str2double(handles.shouru13)+str2double(handles.shouru33)+str2double(handles.shouru43))/1.08^2;
            co3 = co2+zengjia2;
            jun2 = co3/3;
            numbers = [0;co1;co2;co3];
        end
        if year>=4
            zengjia3 = (str2double(handles.shouru14)+str2double(handles.shouru34)+str2double(handles.shouru44))/1.08^3;
            co4 = co3+zengjia3;
            jun2 = co4/4;
            numbers = [0;co1;co2;co3;co4];
        end
        if year>=5
            zengjia4 = (str2double(handles.shouru15)+str2double(handles.shouru35)+str2double(handles.shouru45))/1.08^4;
            co5 = co4+zengjia4;
            jun2 = co5/5;
            numbers = [0;co1;co2;co3;co4;co5];
        end
        if year>=6
            zengjia5 = (str2double(handles.shouru16)+str2double(handles.shouru36)+str2double(handles.shouru46))/1.08^5;
            co6 = co5+zengjia5;
            jun2 = co6/6;
            numbers = [0;co1;co2;co3;co4;co5;co6];
        end
        if year>=7
            zengjia6 = (str2double(handles.shouru17)+str2double(handles.shouru37)+str2double(handles.shouru47))/1.08^6;
            co7 = co6+zengjia6;
            jun2 = co7/7;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7];
        end
        if year>=8
            zengjia7 = (str2double(handles.shouru18)+str2double(handles.shouru38)+str2double(handles.shouru48))/1.08^7;
            co8 = co7+zengjia7;
            jun2 = co8/8;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8];
        end
        if year>=9
            zengjia8 = (str2double(handles.shouru19)+str2double(handles.shouru39)+str2double(handles.shouru49))/1.08^8;
            co9 = co8+zengjia8;
            jun2 = co9/9;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9];
        end
        if year>=10
            zengjia9 = (str2double(handles.shouru110)+str2double(handles.shouru310)+str2double(handles.shouru410))/1.08^9;
            co10 = co9+zengjia9;
            jun2 = co10/10;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
        end
        if year>=11
            zengjia10 = (str2double(handles.shouru111)+str2double(handles.shouru311)+str2double(handles.shouru411))/1.08^10;
            co11 = co10+zengjia10;
            jun2 = co11/11;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
        end
        if year>=12
            zengjia11 = (str2double(handles.shouru112)+str2double(handles.shouru312)+str2double(handles.shouru412))/1.08^11;
            co12 = co11+zengjia11;
            jun2 = co12/12;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
        end
        if year>=13
            zengjia12 = (str2double(handles.shouru113)+str2double(handles.shouru313)+str2double(handles.shouru413))/1.08^12;
            co13 = co12+zengjia12;
            jun2 = co13/13;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
        end
        if year>=14
            zengjia13 = (str2double(handles.shouru114)+str2double(handles.shouru314)+str2double(handles.shouru414))/1.08^13;
            co14 = co13+zengjia13;
            jun2 = co14/14;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
        end
        if year>=15
            zengjia14 = (str2double(handles.shouru115)+str2double(handles.shouru315)+str2double(handles.shouru415))/1.08^14;
            co15 = co14+zengjia14;
            jun2 = co15/15;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
        end
    case 2
        if year>=1
            co1 = str2double(handles.shouru11)+str2double(handles.shouru41)+str2double(handles.shouru31);
            jun2 = co1;
            numbers = [0;co1];
        end
        if year>=2
            zengjia1 = (str2double(handles.shouru12)+str2double(handles.shouru32)+str2double(handles.shouru42))/1.08;
            co2 = co1+zengjia1;
            jun2 = co2/2;
            numbers = [0;co1;co2];
        end
        if year>=3
            zengjia2 = (str2double(handles.shouru13)+str2double(handles.shouru33)+str2double(handles.shouru43))/1.08^2;
            co3 = co2+zengjia2;
            jun2 = co3/3;
            numbers = [0;co1;co2;co3];
        end
        if year>=4
            zengjia3 = (str2double(handles.shouru14)+str2double(handles.shouru34)+str2double(handles.shouru44))/1.08^3;
            co4 = co3+zengjia3;
            jun2 = co4/4;
            numbers = [0;co1;co2;co3;co4];
        end
        if year>=5
            zengjia4 = (str2double(handles.shouru15)+str2double(handles.shouru35)+str2double(handles.shouru45))/1.08^4;
            co5 = co4+zengjia4;
            jun2 = co5/5;
            numbers = [0;co1;co2;co3;co4;co5];
        end
        if year>=6
            zengjia5 = (str2double(handles.shouru16)+str2double(handles.shouru36)+str2double(handles.shouru46))/1.08^5;
            co6 = co5+zengjia5;
            jun2 = co6/6;
            numbers = [0;co1;co2;co3;co4;co5;co6];
        end
        if year>=7
            zengjia6 = (str2double(handles.shouru17)+str2double(handles.shouru37)+str2double(handles.shouru47))/1.08^6;
            co7 = co6+zengjia6;
            jun2 = co7/7;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7];
        end
        if year>=8
            zengjia7 = (str2double(handles.shouru18)+str2double(handles.shouru38)+str2double(handles.shouru48))/1.08^7;
            co8 = co7+zengjia7;
            jun2 = co8/8;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8];
        end
        if year>=9
            zengjia8 = (str2double(handles.shouru19)+str2double(handles.shouru39)+str2double(handles.shouru49))/1.08^8;
            co9 = co8+zengjia8;
            jun2 = co9/9;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9];
        end
        if year>=10
            zengjia9 = (str2double(handles.shouru110)+str2double(handles.shouru310)+str2double(handles.shouru410))/1.08^9;
            co10 = co9+zengjia9;
            jun2 = co10/10;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
        end
        if year>=11
            zengjia10 = (str2double(handles.shouru111)+str2double(handles.shouru311)+str2double(handles.shouru411))/1.08^10;
            co11 = co10+zengjia10;
            jun2 = co11/11;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
        end
        if year>=12
            zengjia11 = (str2double(handles.shouru112)+str2double(handles.shouru312)+str2double(handles.shouru412))/1.08^11;
            co12 = co11+zengjia11;
            jun2 = co12/12;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
        end
        if year>=13
            zengjia12 = (str2double(handles.shouru113)+str2double(handles.shouru313)+str2double(handles.shouru413))/1.08^12;
            co13 = co12+zengjia12;
            jun2 = co13/13;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
        end
        if year>=14
            zengjia13 = (str2double(handles.shouru114)+str2double(handles.shouru314)+str2double(handles.shouru414))/1.08^13;
            co14 = co13+zengjia13;
            jun2 = co14/14;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
        end
        if year>=15
            zengjia14 = (str2double(handles.shouru115)+str2double(handles.shouru315)+str2double(handles.shouru415))/1.08^14;
            co15 = co14+zengjia14;
            jun2 = co15/15;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
        end
end
close(gcf)
