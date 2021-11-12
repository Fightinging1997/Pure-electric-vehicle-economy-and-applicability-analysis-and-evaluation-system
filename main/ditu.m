function varargout = ditu(varargin)
% DITU MATLAB code for ditu.fig
%      DITU, by itself, creates a new DITU or raises the existing
%      singleton*.
%
%      H = DITU returns the handle to a new DITU or the handle to
%      the existing singleton*.
%
%      DITU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DITU.M with the given input arguments.
%
%      DITU('Property','Value',...) creates a new DITU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ditu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ditu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ditu

% Last Modified by GUIDE v2.5 06-Jan-2021 21:31:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ditu_OpeningFcn, ...
                   'gui_OutputFcn',  @ditu_OutputFcn, ...
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


% --- Executes just before ditu is made visible.
function ditu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ditu (see VARARGIN)

% Choose default command line output for ditu
handles.output = hObject;
im = imread('tupian.png');
axes(handles.axes1)
imshow(im)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ditu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ditu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
