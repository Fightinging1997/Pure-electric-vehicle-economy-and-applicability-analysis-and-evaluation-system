function varargout = cost9(varargin)
% cost9 MATLAB code for cost9.fig
%      cost9, by itself, creates a new cost9 or raises the existing
%      singleton*.
%
%      H = cost9 returns the handle to a new cost9 or the handle to
%      the existing singleton*.
%
%      cost9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in cost9.M with the given input arguments.
%
%      cost9('Property','Value',...) creates a new cost9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cost9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cost9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cost9

% Last Modified by GUIDE v2.5 12-Jun-2020 09:38:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cost9_OpeningFcn, ...
                   'gui_OutputFcn',  @cost9_OutputFcn, ...
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


% --- Executes just before cost9 is made visible.
function cost9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cost9 (see VARARGIN)

% Choose default command line output for cost9
set(gcf,'numbertitle','off','name','Äê¼ì·Ñ');
guidata(hObject,handles);
handles.t = varargin{1};
handles.t1 = varargin{2};
handles.year=varargin{3};
set(handles.edit1,'string',handles.t);
set(handles.edit2,'string',handles.t);
set(handles.edit3,'string',handles.t);
set(handles.edit4,'string',handles.t);
set(handles.edit5,'string',handles.t);
set(handles.edit6,'string',handles.t);
set(handles.edit7,'string',handles.t);
set(handles.edit8,'string',handles.t);
set(handles.edit9,'string',handles.t);
set(handles.edit10,'string',handles.t);
set(handles.edit11,'string',handles.t);
set(handles.edit12,'string',handles.t);
set(handles.edit13,'string',handles.t);
set(handles.edit14,'string',handles.t);
set(handles.edit15,'string',handles.t);
set(handles.edit16,'string',handles.t1);
set(handles.edit1,'visible','off');
set(handles.text1,'visible','off');
set(handles.text1_,'visible','off');
set(handles.edit2,'visible','off');
set(handles.text2,'visible','off');
set(handles.text2_,'visible','off');
set(handles.edit3,'visible','off');
set(handles.text3,'visible','off');
set(handles.text3_,'visible','off');
set(handles.edit4,'visible','off');
set(handles.text4,'visible','off');
set(handles.text4_,'visible','off');
set(handles.edit5,'visible','off');
set(handles.text5,'visible','off');
set(handles.text5_,'visible','off');
set(handles.edit6,'visible','off');
set(handles.text6,'visible','off');
set(handles.text6_,'visible','off');
set(handles.edit7,'visible','off');
set(handles.text7,'visible','off');
set(handles.text7_,'visible','off');
set(handles.edit8,'visible','off');
set(handles.text8,'visible','off');
set(handles.text8_,'visible','off');
set(handles.edit9,'visible','off');
set(handles.text9,'visible','off');
set(handles.text9_,'visible','off');
set(handles.edit10,'visible','off');
set(handles.text10,'visible','off');
set(handles.text10_,'visible','off');
set(handles.edit11,'visible','off');
set(handles.text11,'visible','off');
set(handles.text11_,'visible','off');
set(handles.edit12,'visible','off');
set(handles.text12,'visible','off');
set(handles.text12_,'visible','off');
set(handles.edit13,'visible','off');
set(handles.text13,'visible','off');
set(handles.text13_,'visible','off');
set(handles.edit14,'visible','off');
set(handles.text14,'visible','off');
set(handles.text14_,'visible','off');
set(handles.edit15,'visible','off');
set(handles.text15,'visible','off');
set(handles.text15_,'visible','off');

year = str2num(handles.year);
switch year
    case 1
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
    case 2
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');        
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
    case 3
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
    case 4
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
    case 5
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
    case 6
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
    case 7
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
    case 8
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
    case 9        
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text9_,'visible','on');
    case 10        
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text9_,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text10_,'visible','on');
    case 11        
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text9_,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text10_,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text11_,'visible','on');
    case 12
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text9_,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text10_,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text11_,'visible','on');
        set(handles.edit12,'visible','on');
        set(handles.text12,'visible','on');
        set(handles.text12_,'visible','on');
    case 13
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text9_,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text10_,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text11_,'visible','on');
        set(handles.edit12,'visible','on');
        set(handles.text12,'visible','on');
        set(handles.text12_,'visible','on');
        set(handles.edit13,'visible','on');
        set(handles.text13,'visible','on');
        set(handles.text13_,'visible','on');
    case 14
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text9_,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text10_,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text11_,'visible','on');
        set(handles.edit12,'visible','on');
        set(handles.text12,'visible','on');
        set(handles.text12_,'visible','on');
        set(handles.edit13,'visible','on');
        set(handles.text13,'visible','on');
        set(handles.text13_,'visible','on');
        set(handles.edit14,'visible','on');
        set(handles.text14,'visible','on');
        set(handles.text14_,'visible','on');
    otherwise
        set(handles.edit1,'visible','on');
        set(handles.text1,'visible','on');
        set(handles.text1_,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text2_,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text3_,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text4_,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.text5,'visible','on');
        set(handles.text5_,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text6_,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text7_,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text8_,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text9_,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text10_,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text11_,'visible','on');
        set(handles.edit12,'visible','on');
        set(handles.text12,'visible','on');
        set(handles.text12_,'visible','on');
        set(handles.edit13,'visible','on');
        set(handles.text13,'visible','on');
        set(handles.text13_,'visible','on');
        set(handles.edit14,'visible','on');
        set(handles.text14,'visible','on');
        set(handles.text14_,'visible','on');
        set(handles.edit15,'visible','on');
        set(handles.text15,'visible','on');
        set(handles.text15_,'visible','on');
end
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
uiwait(handles.figure1);
% UIWAIT makes cost9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cost9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.t3;
year = str2num(handles.year);
switch year
    case 1
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
    case 2
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
    case 3
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
    case 4
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
    case 5
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
    case 6
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit11,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
    case 7
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
    case 8
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
    case 9
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
        handles.cost119 = get(handles.edit9,'string');
        varargout{10} = handles.cost119;
    case 10
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
        handles.cost119 = get(handles.edit9,'string');
        varargout{10} = handles.cost119;
        handles.cost1110 = get(handles.edit10,'string');
        varargout{11} = handles.cost1110;
    case 11
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
        handles.cost119 = get(handles.edit9,'string');
        varargout{10} = handles.cost119;
        handles.cost1110 = get(handles.edit10,'string');
        varargout{11} = handles.cost1110;
        handles.cost1111 = get(handles.edit11,'string');
        varargout{12} = handles.cost1111;
    case 12
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
        handles.cost119 = get(handles.edit9,'string');
        varargout{10} = handles.cost119;
        handles.cost1110 = get(handles.edit10,'string');
        varargout{11} = handles.cost1110;
        handles.cost1111 = get(handles.edit11,'string');
        varargout{12} = handles.cost1111;
        handles.cost1112 = get(handles.edit12,'string');
        varargout{13} = handles.cost1112;
    case 13
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
        handles.cost119 = get(handles.edit9,'string');
        varargout{10} = handles.cost119;
        handles.cost1110 = get(handles.edit10,'string');
        varargout{11} = handles.cost1110;
        handles.cost1111 = get(handles.edit11,'string');
        varargout{12} = handles.cost1111;
        handles.cost1112 = get(handles.edit12,'string');
        varargout{13} = handles.cost1112;
        handles.cost1113 = get(handles.edit13,'string');
        varargout{14} = handles.cost1113;
    case 14
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit11,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
        handles.cost119 = get(handles.edit9,'string');
        varargout{10} = handles.cost119;
        handles.cost1110 = get(handles.edit10,'string');
        varargout{11} = handles.cost1110;
        handles.cost1111 = get(handles.edit11,'string');
        varargout{12} = handles.cost1111;
        handles.cost1112 = get(handles.edit12,'string');
        varargout{13} = handles.cost1112;
        handles.cost1113 = get(handles.edit13,'string');
        varargout{14} = handles.cost1114;
        handles.cost1114 = get(handles.edit14,'string');
        varargout{15} = handles.cost1115;
    case 15
        handles.cost111 = get(handles.edit1,'string');
        varargout{2} = handles.cost111;
        handles.cost112 = get(handles.edit2,'string');
        varargout{3} = handles.cost112;
        handles.cost113 = get(handles.edit3,'string');
        varargout{4} = handles.cost113;
        handles.cost114 = get(handles.edit4,'string');
        varargout{5} = handles.cost114;
        handles.cost115 = get(handles.edit5,'string');
        varargout{6} = handles.cost115;
        handles.cost116 = get(handles.edit6,'string');
        varargout{7} = handles.cost116;
        handles.cost117 = get(handles.edit7,'string');
        varargout{8} = handles.cost117;
        handles.cost118 = get(handles.edit8,'string');
        varargout{9} = handles.cost118;
        handles.cost119 = get(handles.edit9,'string');
        varargout{10} = handles.cost119;
        handles.cost1110 = get(handles.edit10,'string');
        varargout{11} = handles.cost1110;
        handles.cost1111 = get(handles.edit11,'string');
        varargout{12} = handles.cost1111;
        handles.cost1112 = get(handles.edit12,'string');
        varargout{13} = handles.cost1112;
        handles.cost1113 = get(handles.edit13,'string');
        varargout{14} = handles.cost1113;
        handles.cost1114 = get(handles.edit14,'string');
        varargout{15} = handles.cost1114;
        handles.cost1115 = get(handles.edit15,'string');
        varargout{16} = handles.cost1115;
end
delete(handles.figure1);


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



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
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
year = str2num(handles.year);
switch year
    case 1
        set(handles.edit1,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        sum=s1;
    case 2
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        sum=s1+s2;
    case 3
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        s3 = str2double(get(handles.edit3,'string'));
        sum=s1+s2+s3;
    case 4
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        s3 = str2double(get(handles.edit3,'string'));
        s4 = str2double(get(handles.edit4,'string'));
        sum=s1+s2+s3+s4;
    case 5
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        s3 = str2double(get(handles.edit3,'string'));
        s4 = str2double(get(handles.edit4,'string'));
        s5 = str2double(get(handles.edit5,'string'));
        sum=s1+s2+s3+s4+s5;
    case 6
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        s3 = str2double(get(handles.edit3,'string'));
        s4 = str2double(get(handles.edit4,'string'));
        s5 = str2double(get(handles.edit5,'string'));
        s6 = str2double(get(handles.edit6,'string'));
        sum=s1+s2+s3+s4+s5+s6;
    case 7
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        s3 = str2double(get(handles.edit3,'string'));
        s4 = str2double(get(handles.edit4,'string'));
        s5 = str2double(get(handles.edit5,'string'));
        s6 = str2double(get(handles.edit6,'string'));
        s7 = str2double(get(handles.edit7,'string'));
        sum=s1+s2+s3+s4+s5+s6+s7;    
    case 8
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        s3 = str2double(get(handles.edit3,'string'));
        s4 = str2double(get(handles.edit4,'string'));
        s5 = str2double(get(handles.edit5,'string'));
        s6 = str2double(get(handles.edit6,'string'));
        s7 = str2double(get(handles.edit7,'string'));
        s8 = str2double(get(handles.edit8,'string'));
        sum=s1+s2+s3+s4+s5+s6+s7+s8;
    case 9
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        s1 = str2double(get(handles.edit1,'string'));
        s2 = str2double(get(handles.edit2,'string'));
        s3 = str2double(get(handles.edit3,'string'));
        s4 = str2double(get(handles.edit4,'string'));
        s5 = str2double(get(handles.edit5,'string'));
        s6 = str2double(get(handles.edit6,'string'));
        s7 = str2double(get(handles.edit7,'string'));
        s8 = str2double(get(handles.edit8,'string'));
        s9 = str2double(get(handles.edit9,'string'));
        sum=s1+s2+s3+s4+s5+s6+s7+s8+s9;   
    case 10
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.edit10,'visible','on');
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
        sum=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10;
    case 11
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.edit11,'visible','on');
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
        sum=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11;
    case 12
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.edit12,'visible','on');
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
        s12 = str2double(get(handles.edit12,'string'));
        sum=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12;
    case 13
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.edit12,'visible','on');
        set(handles.edit13,'visible','on');
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
        s12 = str2double(get(handles.edit12,'string'));
        s13 = str2double(get(handles.edit13,'string'));
        sum=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13;
    case 14
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.edit12,'visible','on');
        set(handles.edit13,'visible','on');
        set(handles.edit14,'visible','on');
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
        s12 = str2double(get(handles.edit12,'string'));
        s13 = str2double(get(handles.edit13,'string'));
        s14 = str2double(get(handles.edit14,'string'));
        sum=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14;
    otherwise
        set(handles.edit1,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.edit6,'visible','on');
        set(handles.edit7,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.edit11,'visible','on');
        set(handles.edit12,'visible','on');
        set(handles.edit13,'visible','on');
        set(handles.edit14,'visible','on');
        set(handles.edit15,'visible','on');
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
        s12 = str2double(get(handles.edit12,'string'));
        s13 = str2double(get(handles.edit13,'string'));
        s14 = str2double(get(handles.edit14,'string'));
        s15 = str2double(get(handles.edit15,'string'));
        sum=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15;
end
set(handles.edit16,'string',sum);
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value=get(handles.edit16,'string');
handles.t3=value;
guidata(hObject,handles);
uiresume(handles.figure1); 


function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
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
set(handles.edit1,'string','200');
set(handles.edit2,'string','200');
set(handles.edit3,'string','200');
set(handles.edit4,'string','200');
set(handles.edit5,'string','200');
set(handles.edit6,'string','200');
set(handles.edit7,'string','200');
set(handles.edit8,'string','200');
set(handles.edit9,'string','200');
set(handles.edit10,'string','200');
set(handles.edit11,'string','200');
set(handles.edit12,'string','200');
set(handles.edit13,'string','200');
set(handles.edit14,'string','200');
set(handles.edit15,'string','200');
