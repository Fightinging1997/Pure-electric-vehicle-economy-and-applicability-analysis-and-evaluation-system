function varargout = zhujiemian(varargin)
% zhujiemian MATLAB code for zhujiemian.fig
%      zhujiemian, by itself, creates a new zhujiemian or raises the existing
%      singleton*.
%
%      H = zhujiemian returns the handle to a new zhujiemian or the handle to
%      the existing singleton*.
%
%      zhujiemian('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in zhujiemian.M with the given input arguments.
%
%      zhujiemian('Property','Value',...) creates a new zhujiemian or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before zhujiemian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to zhujiemian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help zhujiemian

% Last Modified by GUIDE v2.5 07-Jan-2021 14:31:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @zhujiemian_OpeningFcn, ...
                   'gui_OutputFcn',  @zhujiemian_OutputFcn, ...
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


% --- Executes just before zhujiemian is made visible.
function zhujiemian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to zhujiemian (see VARARGIN)

% Choose default command line output for zhujiemian
set(gcf,'numbertitle','off','name','纯电动汽车经济性和适用性专用评价系统');

handles.output = hObject;
set(handles.edit1,'string','请在此输入');
set(handles.edit2,'string','请在此输入');
set(handles.edit4,'string','请在此输入');
set(handles.edit3,'string','请在此输入');
set(handles.popupmenu4,'string',{'朝阳区';'海淀区';'通州区';'房山区';'丰台区';'昌平区';'大兴区';'顺义区';'西城区';'延庆县';'石景山区';'宣武区';'怀柔区';'崇文区';'密云县';'东城区';'平谷区';'门头沟区'});
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes zhujiemian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = zhujiemian_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m n diqu moshi
moshi = get(handles.popupmenu1,'value');
diqu = get(handles.popupmenu3,'value');
n = num2str(year(now)-str2double(get(handles.edit3,'string')));
m = get(handles.edit4,'string');
field = get(handles.popupmenu1,'value');
switch field
    case 1
        h = cost;
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
    case 2
        h = fenshi;        
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
    case 3
        h = chuzu;
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
    otherwise
        h = wuliu;
        h_edit = findall(h,'Tag','edit11');
        set(h_edit,'string',n);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
field = get(handles.popupmenu1,'value');
switch field
    case 1
        sirenshouru(1)
    case 2        
        fenshishouruc()
    case 3
        fenshishouruc()
    otherwise        
        fenshishouruc()
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pingheng

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
shiyongxing()


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = get(handles.popupmenu3,'val');
switch val
    case 1
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'朝阳区';'海淀区';'通州区';'房山区';'丰台区';'昌平区';'大兴区';'顺义区';'西城区';'延庆县';'石景山区';'宣武区';'怀柔区';'崇文区';'密云县';'东城区';'平谷区';'门头沟区'});
    case 2
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'东莞市';' 广州市';' 中山市';' 深圳市';' 惠州市';' 江门市';' 珠海市';' 汕头市';' 佛山市';' 湛江市';' 河源市';' 肇庆市';' 清远市';' 潮州市';' 韶关市';' 揭阳市';' 阳江市';' 梅州市';' 云浮市';' 茂名市';' 汕尾市'});
    case 3
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'济南市';'青岛市';'临沂市';'济宁市';'菏泽市';'烟台市';'淄博市';'泰安市';'潍坊市';'日照市';'威海市';'滨州市';'东营市';'聊城市';'德州市';'莱芜市';'枣庄市'});
    case 4
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'苏州市';'徐州市';'盐城市';'无锡市';'南京市';'南通市';'连云港市';'常州市';'镇江市';'扬州市';'淮安市';'泰州市';'宿迁市'});
    case 5
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'郑州市';'南阳市';'新乡市';'安阳市';'洛阳市';'信阳市';'平顶山市';'周口市';'商丘市';'开封市';'焦作市';'驻马店市';'濮阳市';'三门峡市';'漯河市';'许昌市';'鹤壁市';'济源市'});
    case 6
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'松江区';'宝山区';'金山区';'嘉定区';'南汇区';'青浦区';'浦东新区';'奉贤区';'徐汇区';'静安区';'闵行区';'黄浦区';'杨浦区';'虹口区';'普陀区';'闸北区';'长宁区';'崇明县';'卢湾区'});
    case 7
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'石家庄市';'唐山市';'保定市';'邯郸市';'邢台市';'河北区';'沧州市';'秦皇岛市';'张家口市';'衡水市';'廊坊市';'承德市'});
    case 8
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'温州市';'宁波市';'杭州市';'台州市';'嘉兴市';'金华市';'湖州市';'绍兴市';'舟山市';'丽水市';'衢州市'});
    case 9
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',' ');
    case 10
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'西安市';'咸阳市';'宝鸡市';'汉中市';'渭南市';'安康市';'榆林市';'商洛市';'延安市';'铜川市'});
    case 11
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'长沙市';'邵阳市';'常德市';'衡阳市';'株洲市';'湘潭市';'永州市';'岳阳市';'怀化市';'郴州市';'娄底市';'益阳市';'张家界市';'湘西州'});
    case 12
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'江北区';'渝北区';'沙坪坝区';'九龙坡区';'万州区';'永川市';'南岸区';'酉阳县';'北碚区';'涪陵区';'秀山县';'巴南区';'渝中区';'石柱县';'忠县';'合川市';'大渡口区';'开县';'长寿区';'荣昌县';'云阳县';'梁平县';'潼南县';'江津市';'彭水县';'綦江县';'璧山县';'黔江区';'大足县';'巫山县';'巫溪县';'垫江县';'丰都县';'武隆县';'万盛区';'铜梁县';'南川市';'奉节县';'双桥区';'城口县'});
    case 13
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'漳州市';'厦门市';'泉州市';'福州市';'莆田市';'宁德市';'三明市';'南平市';'龙岩市'});
    case 14
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'和平区';'北辰区';'河北区';'河西区';'西青区';'津南区';'东丽区';'武清区';'宝坻区';'红桥区';'大港区';'汉沽区';'静海县';'塘沽区';'宁河县';'蓟县';'南开区';'河东区'});
    case 15
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'昆明市';'红河州';'大理州';'文山州';'德宏州';'曲靖市';'昭通市';'楚雄州';'保山市';'玉溪市';'丽江地区';'临沧地区';'思茅地区';'西双版纳州';'怒江州';'迪庆州'});
    case 16
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'成都市';'绵阳市';'广元市';'达州市';'南充市';'德阳市';'广安市';'阿坝州';'巴中市';'遂宁市';'内江市';'凉山州';'攀枝花市';'乐山市';'自贡市';'泸州市';'雅安市';'宜宾市';'资阳市';'眉山市';'甘孜州'});
    case 17
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'贵港市';'玉林市';'北海市';'南宁市';'柳州市';'桂林市';'梧州市';'钦州市';'来宾市';'河池市';'百色市';'贺州市';'崇左市';'防城港市'});
    case 18
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'芜湖市';'合肥市';'六安市';'宿州市';'阜阳市';'安庆市';'马鞍山市';'蚌埠市';'淮北市';'淮南市';'宣城市';'黄山市';'铜陵市';'亳州市';'池州市';'巢湖市';'滁州市'});
    case 19
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'三亚市';'海口市';'琼海市';'文昌市';'东方市';'昌江县';'陵水县';'乐东县';'保亭县';'五指山市';'澄迈县';'万宁市';'儋州市';'临高县';'白沙县';'定安县';'琼中县';'屯昌县'});
    case 20
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'南昌市';'赣州市';'上饶市';'吉安市';'九江市';'新余市';'抚州市';'宜春市';'景德镇市';'萍乡市';'鹰潭市'});
    case 21
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'武汉市';'宜昌市';'襄樊市';'荆州市';'恩施州';'黄冈市';'孝感市';'十堰市';'咸宁市';'黄石市';'仙桃市';'天门市';'随州市';'荆门市';'潜江市';'鄂州市';'神农架林区'});
    case 22
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'太原市';'大同市';'运城市';'长治市';'晋城市';'忻州市';'临汾市';'吕梁市';'晋中市';'阳泉市';'朔州市'});
    case 23
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'大连市';'沈阳市';'丹东市';'辽阳市';'葫芦岛市';'锦州市';'朝阳市';'营口市';'鞍山市';'抚顺市';'阜新市';'盘锦市';'本溪市';'铁岭市'});
    case 24
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'台北市';'高雄市';'台中市';'新竹市';'基隆市';'台南市';'嘉义市'});
    case 25
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'齐齐哈尔市';'哈尔滨市';'大庆市';'佳木斯市';'双鸭山市';'牡丹江市';'鸡西市';'黑河市';'绥化市';'鹤岗市';'伊春市';'大兴安岭地区';'七台河市'});
    case 26
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'赤峰市';'包头市';'通辽市';'呼和浩特市';'鄂尔多斯市';'乌海市';'呼伦贝尔市';'兴安盟';'巴彦淖尔盟';'乌兰察布盟';'锡林郭勒盟';'阿拉善盟'});
    case 27
        set(handles.popupmenu4,'string',' ');
    case 28
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'贵阳市';'黔东南州';'黔南州';'遵义市';'黔西南州';'毕节地区';'铜仁地区';'安顺市';'六盘水市'});
    case 29
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'兰州市';'天水市';'庆阳市';'武威市';'酒泉市';'张掖市';'陇南地区';'白银市';'定西地区';'平凉市';'嘉峪关市';'临夏回族自治州';'金昌市';'甘南州'});
    case 30
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'西宁市';'海西州';'海东地区';'海北州';'果洛州';'玉树州';'黄南藏族自治州'});
    case 31
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'乌鲁木齐市';'伊犁州';'昌吉州';'石河子市';'哈密地区';'阿克苏地区';'巴音郭楞州';'喀什地区';'塔城地区';'克拉玛依市';'和田地区';'阿勒泰州';'吐鲁番地区';'阿拉尔市';'博尔塔拉州';'五家渠市';'克孜勒苏州';'图木舒克市'});
    case 32
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'拉萨市';'山南地区';'林芝地区';'日喀则地区';'阿里地区';'昌都地区';'那曲地区'});
    case 33
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'吉林市';'长春市';'白山市';'延边州';'白城市';'松原市';'辽源市';'通化市';'四平市'});
    otherwise
        set(handles.popupmenu4,'value',1);
        set(handles.popupmenu4,'string',{'银川市';'吴忠市';'中卫市';'石嘴山市';'固原市'});
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


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


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'string','请在此输入');
set(handles.edit2,'string','请在此输入');
set(handles.edit4,'string','请在此输入');
set(handles.edit3,'string','请在此输入');
set(handles.popupmenu1,'value',1);
set(handles.popupmenu3,'value',1);
set(handles.popupmenu4,'value',1);
