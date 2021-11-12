function varargout = sirenshouru(varargin)
% sirenshouru MATLAB code for sirenshouru.fig
%      sirenshouru, by itself, creates a new sirenshouru or raises the existing
%      singleton*.
%
%      H = sirenshouru returns the handle to a new sirenshouru or the handle to
%      the existing singleton*.
%
%      sirenshouru('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in sirenshouru.M with the given input arguments.
%
%      sirenshouru('Property','Value',...) creates a new sirenshouru or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sirenshouru_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sirenshouru_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sirenshouru

% Last Modified by GUIDE v2.5 28-Apr-2020 17:44:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sirenshouru_OpeningFcn, ...
                   'gui_OutputFcn',  @sirenshouru_OutputFcn, ...
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


% --- Executes just before sirenshouru is made visible.
function sirenshouru_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sirenshouru (see VARARGIN)

% Choose default command line output for sirenshouru
tt = varargin{1};
if tt == 2
    set(handles.uipanel3,'visible','off');    
end

set(gcf,'numbertitle','off','name','纯电动汽车私人总收入');
% ha=axes('units','normalized','position',[0 0 1 1]);
% uistack(ha,'down')
% II=imread('F:\Matlab_2019b\1\视觉中国\视觉中国25.jpg');
% I=imread('F:\Matlab_2019b\1\视觉中国\视觉中国19.jpg');
% image(II)
% colormap gray
% set(ha,'handlevisibility','off','visible','off');
% set(handles.pushbutton1,'cdata',I);
% set(handles.pushbutton2,'cdata',I);
% set(handles.pushbutton5,'cdata',I);
% set(handles.pushbutton6,'cdata',I);
handles.text1='请点击输入';
handles.text2='';
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sirenshouru wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sirenshouru_OutputFcn(hObject, eventdata, handles) 
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
            [handles.cost70,handles.cost71]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 2
            [handles.cost70,handles.cost71,handles.cost72]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 3
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 4
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 5
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 6
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 7
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 8
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 9
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 10
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 11
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 12
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 13
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712,handles.cost713]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        case 14
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712,handles.cost713,handles.cost714]=sirenshouru1(handles.text1,handles.text2,handles.text3);
        otherwise
            [handles.cost70,handles.cost71,handles.cost72,handles.cost73,handles.cost74,handles.cost75,handles.cost76,handles.cost77,handles.cost78,handles.cost79,handles.cost710,handles.cost711,handles.cost712,handles.cost713,handles.cost714,handles.cost715]=sirenshouru1(handles.text1,handles.text2,handles.text3);
end
guidata(hObject,handles);
set(handles.edit1,'string',handles.cost70);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% global n
% handles.text3 = n;
% val = str2double(n);
handles.cost90=sirenshouru2(handles.text1,handles.text2,handles.text3);
% handles.cost90 = sirenshouru2('*********************');
guidata(hObject,handles);
set(handles.edit2,'string',handles.cost90);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c sums
if c==1
    a1 = str2double(get(handles.edit1,'string'));
    a2 = str2double(get(handles.edit2,'string'));
    sums = a1 + a2 ;
else
   sums = str2double(get(handles.edit1,'string')); 
end
set(handles.edit5,'string',sums);
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n numbers c jun2
year = str2double(n);
switch c
    case 1
        ccc = str2double(handles.cost90)/year;
        if year>=1
            co1 = str2double(handles.cost71)+ccc;
            jun2 = co1;
            numbers = [0;co1];
        end
        if year>=2
            zengjia1 = (str2double(handles.cost72)+ccc)/1.08;
            co2 = co1+zengjia1;
            jun2 = co2/2;
            numbers = [0;co1;co2];
        end
        if year>=3
            zengjia2 = (str2double(handles.cost73)+ccc)/1.08^2;
            co3 = co2+zengjia2;
            jun2 = co3/3;
            numbers = [0;co1;co2;co3];
        end
        if year>=4
            zengjia3 = (str2double(handles.cost74)+ccc)/1.08^3;
            co4 = co3+zengjia3;
            jun2 = co4/4;
            numbers = [0;co1;co2;co3;co4];
        end
        if year>=5
            zengjia4 = (str2double(handles.cost75)+ccc)/1.08^4;
            co5 = co4+zengjia4;
            jun2 = co5/5;
            numbers = [0;co1;co2;co3;co4;co5];
        end
        if year>=6
            zengjia5 = (str2double(handles.cost76)+ccc)/1.08^5;
            co6 = co5+zengjia5;
            jun2 = co6/6;
            numbers = [0;co1;co2;co3;co4;co5;co6];
        end
        if year>=7
            zengjia6 = (str2double(handles.cost77)+ccc)/1.08^6;
            co7 = co6+zengjia6;
            jun2 = co7/7;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7];
        end
        if year>=8
            zengjia7 = (str2double(handles.cost78)+ccc)/1.08^7;
            co8 = co7+zengjia7;
            jun2 = co8/8;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8];
        end
        if year>=9
            zengjia8 = (str2double(handles.cost79)+ccc)/1.08^8;
            co9 = co8+zengjia8;
            jun2 = co9/9;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9];
        end
        if year>=10
            zengjia9 = (str2double(handles.cost710)+ccc)/1.08^9;
            co10 = co9+zengjia9;
            jun2 = co10/10;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
        end
        if year>=11
            zengjia10 = (str2double(handles.cost711)+ccc)/1.08^10;
            co11 = co10+zengjia10;
            jun2 = co11/11;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
        end
        if year>=12
            zengjia11 = (str2double(handles.cost712)+ccc)/1.08^11;
            co12 = co11+zengjia11;
            jun2 = co12/12;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
        end
        if year>=13
            zengjia12 = (str2double(handles.cost713)+ccc)/1.08^12;
            co13 = co12+zengjia12;
            jun2 = co13/13;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
        end
        if year>=14
            zengjia13 = (str2double(handles.cost714)+ccc)/1.08^13;
            co14 = co13+zengjia13;
            jun2 = co14/14;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
        end
        if year>=15
            zengjia14 = (str2double(handles.cost715)+ccc)/1.08^14;
            co15 = co14+zengjia14;
            jun2 = co15/15;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
        end
    case 2
        ccc = 0;
        if year>=1
            co1 = str2double(handles.cost71)+ccc;
            jun2 = co1;
            numbers = [0;co1];
        end
        if year>=2
            zengjia1 = (str2double(handles.cost72)+ccc)/1.08;
            co2 = co1+zengjia1;
            jun2 = co2/2;
            numbers = [0;co1,co2];
        end
        if year>=3
            zengjia2 = (str2double(handles.cost73)+ccc)/1.08^2;
            co3 = co2+zengjia2;
            jun2 = co3/3;
            numbers = [0;co1;co2;co3];
        end
        if year>=4
            zengjia3 = (str2double(handles.cost74)+ccc)/1.08^3;
            co4 = co3+zengjia3;
            jun2 = co4/4;
            numbers = [0;co1;co2;co3;co4];
        end
        if year>=5
            zengjia4 = (str2double(handles.cost75)+ccc)/1.08^4;
            co5 = co4+zengjia4;
            jun2 = co5/5;
            numbers = [0;co1;co2;co3;co4;co5];
        end
        if year>=6
            zengjia5 = (str2double(handles.cost76)+ccc)/1.08^5;
            co6 = co5+zengjia5;
            jun2 = co6/6;
            numbers = [0;co1;co2;co3;co4;co5;co6];
        end
        if year>=7
            zengjia6 = (str2double(handles.cost77)+ccc)/1.08^6;
            co7 = co6+zengjia6;
            jun2 = co7/7;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7];
        end
        if year>=8
            zengjia7 = (str2double(handles.cost78)+ccc)/1.08^7;
            co8 = co7+zengjia7;
            jun2 = co8/8;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8];
        end
        if year>=9
            zengjia8 = (str2double(handles.cost79)+ccc)/1.08^8;
            co9 = co8+zengjia8;
            jun2 = co9/9;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9];
        end
        if year>=10
            zengjia9 = (str2double(handles.cost710)+ccc)/1.08^9;
            co10 = co9+zengjia9;
            jun2 = co10/10;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10];
        end
        if year>=11
            zengjia10 = (str2double(handles.cost711)+ccc)/1.08^10;
            co11 = co10+zengjia10;
            jun2 = co11/11;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11];
        end
        if year>=12
            zengjia11 = (str2double(handles.cost712)+ccc)/1.08^11;
            co12 = co11+zengjia11;
            jun2 = co12/12;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12];
        end
        if year>=13
            zengjia12 = (str2double(handles.cost713)+ccc)/1.08^12;
            co13 = co12+zengjia12;
            jun2 = co13/13;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13];
        end
        if year>=14
            zengjia13 = (str2double(handles.cost714)+ccc)/1.08^13;
            co14 = co13+zengjia13;
            jun2 = co14/14;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14];
        end
        if year>=15
            zengjia14 = (str2double(handles.cost715)+ccc)/1.08^14;
            co15 = co14+zengjia14;
            jun2 = co15/15;
            numbers = [0;co1;co2;co3;co4;co5;co6;co7;co8;co9;co10;co11;co12;co13;co14;co15];
        end
end
close(gcf)
