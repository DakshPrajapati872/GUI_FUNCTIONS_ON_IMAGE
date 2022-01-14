function varargout = IRDE_training_GUI_17_July(varargin)
% IRDE_TRAINING_GUI_17_JULY MATLAB code for IRDE_training_GUI_17_July.fig
%      IRDE_TRAINING_GUI_17_JULY, by itself, creates a new IRDE_TRAINING_GUI_17_JULY or raises the existing
%      singleton*.
%
%      H = IRDE_TRAINING_GUI_17_JULY returns the handle to a new IRDE_TRAINING_GUI_17_JULY or the handle to
%      the existing singleton*.
%
%      IRDE_TRAINING_GUI_17_JULY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IRDE_TRAINING_GUI_17_JULY.M with the given input arguments.
%
%      IRDE_TRAINING_GUI_17_JULY('Property','Value',...) creates a new IRDE_TRAINING_GUI_17_JULY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IRDE_training_GUI_17_July_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IRDE_training_GUI_17_July_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IRDE_training_GUI_17_July

% Last Modified by GUIDE v2.5 05-Aug-2021 06:19:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IRDE_training_GUI_17_July_OpeningFcn, ...
                   'gui_OutputFcn',  @IRDE_training_GUI_17_July_OutputFcn, ...
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


% --- Executes just before IRDE_training_GUI_17_July is made visible.
function IRDE_training_GUI_17_July_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IRDE_training_GUI_17_July (see VARARGIN)

% Choose default command line output for IRDE_training_GUI_17_July
handles.output = hObject;
set(handles.slider8,'String',1);
set(handles.text12,'String',1);
set(handles.slider9,'String',0);
set(handles.text13,'String',0);
set(handles.slider4,'String',1);
set(handles.text5,'String',1);
set(handles.slider5,'String',1);
set(handles.text6,'String',1);
set(handles.slider6,'String',1);
set(handles.text7,'String',1);

set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IRDE_training_GUI_17_July wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IRDE_training_GUI_17_July_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
global I1 I2 I3;
global copy;
%red=I1;

%blue=I2;
%green=I3;
I1=get(handles.slider1,'value');
set(handles.text1,'String',I1);

Red_i=ones(480,640).*I1;
Green_i=ones(480,640).*I3;
Blue_i=ones(480,640).*I2;
color_i=ones(480,640,3);
color_i(:,:,1)=Red_i;
color_i(:,:,3)=Blue_i;

color_i(:,:,2)=Green_i;
axes(handles.axes1);
imshow(color_i);
copy=color_i;
guidata(hObject,handles);
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
global I1 I2 I3;
global copy;

I3=get(handles.slider2,'value');
set(handles.text2,'String',I3);

Red_i=ones(480,640).*I1;

Blue_i=ones(480,640).*I2;
Green_i=ones(480,640).*I3;
color_i=ones(480,640,3);
color_i(:,:,1)=Red_i;
color_i(:,:,3)=Blue_i;

color_i(:,:,2)=Green_i;
axes(handles.axes1);
imshow(color_i);
copy=color_i;
guidata(hObject,handles);
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
global I1 I2 I3; 
global copy;
I2=get(handles.slider3,'value');
set(handles.text3,'String',I2);

Red_i=ones(480,640).*I1;

Blue_i=ones(480,640).*I2;
Green_i=ones(480,640).*I3;
color_i=ones(480,640,3);
color_i(:,:,1)=Red_i;
color_i(:,:,3)=Blue_i;

color_i(:,:,2)=Green_i;


axes(handles.axes1);
imshow(color_i);
copy=color_i;
guidata(hObject,handles);
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
global copy;
value_red=1+get(handles.slider4,'value');
set(handles.text5,'String',value_red);
global im;
im=(im2double(im));
im_red=value_red.*im(:,:,1);
im_green=im(:,:,2);
im_blue=im(:,:,3);
I_rc(:,:,1)=im_red;
I_rc(:,:,2)=im_green;
I_rc(:,:,3)=im_blue;
axes(handles.axes1);
copy=I_rc;
imshow(I_rc);
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
global copy;
value_green=1+get(handles.slider5,'value');
set(handles.text6,'String',value_green);
global im;
im=(im2double(im));
im_red=im(:,:,1);
im_green=value_green.*im(:,:,2);
im_blue=im(:,:,3);
I_rc(:,:,1)=im_red;
I_rc(:,:,2)=im_green;
I_rc(:,:,3)=im_blue;
axes(handles.axes1);
imshow(I_rc);
copy=I_rc;
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
value_blue=1+get(handles.slider6,'value');
set(handles.text7,'String',value_blue);
global im;
global copy;
im=(im2double(im));
im_red=im(:,:,1);
im_green=im(:,:,2);
im_blue=value_blue.*im(:,:,3);
I_rc(:,:,1)=im_red;
I_rc(:,:,2)=im_green;
I_rc(:,:,3)=im_blue;
axes(handles.axes1);

imshow(I_rc);
copy=I_rc;
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','off');
global im;
global Red;
global Green;
global Blue;
global m;
global p;
global t;
global z;



[f d]=uigetfile({'*.jpg;*.tif;*.png;*.gif'},'Select an Image');
filename=strcat(d,f);

im=imread(filename);

m=im;
z=im;
Red=im(:,:,1);
Green=im(:,:,2);
Blue=im(:,:,3);

im=imread(filename);
axes(handles.axes1);
imshow(im,[]);
handles.I_gray=rgb2gray(im);
p=size(handles.I_gray);
ele=numel(handles.I_gray);
t=zeros(1,257);
% Histogram plotting
for k=1:p(1)
    for l=1:p(2)
   a=handles.I_gray(k,l);
   t(a+1)=t(a+1)+1;
    end
end
L=t;
axes(handles.axes2);
bar(L,'b')
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents
guidata(hObject,handles);



% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
 set(gca,'visible','off') %hide the current axes
 set(get(gca,'children'),'visible','off') %hide the current axes contents
global im;
global Red;
global Green;
global Blue;
global copy;
global z;

handles.I_gray=rgb2gray(im);
z=handles.I_gray;
Red=handles.I_gray;
Green=handles.I_gray;
Blue=handles.I_gray;
axes(handles.axes1);
imshow(handles.I_gray);
copy=handles.I_gray;
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents
guidata(hObject,handles);


% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)


% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(gca,'visible','off') %hide the current axes
 set(get(gca,'children'),'visible','off') %hide the current axes contents

global Red;
global Green;
global Blue;
global copy;
% 0.2989, 0.5870, 0.1140.
m=(get(handles.slider7,'value')).^1+1;
set(handles.text11,'String',m);
[R C]=size(Red);
R1=round(R.*(1-1./m)./2)+1
R2=round(R.*(1+1./m)./2)
C1=round(C.*(1-1./m)./2)+1
C2=round(C.*(1+1./m)./2)
I_C=Red(R1:R2,C1:C2);
I_Z1=imresize(I_C,m);

[R C]=size(Green);
R1=round(R.*(1-1./m)./2)+1
R2=round(R.*(1+1./m)./2)
C1=round(C.*(1-1./m)./2)+1
C2=round(C.*(1+1./m)./2)
I_C=Green(R1:R2,C1:C2);
I_Z2=imresize(I_C,m);

[R C]=size(Blue);
R1=round(R.*(1-1./m)./2)+1
R2=round(R.*(1+1./m)./2)
C1=round(C.*(1-1./m)./2)+1
C2=round(C.*(1+1./m)./2)
I_C=Blue(R1:R2,C1:C2);
I_Z3=imresize(I_C,m);

z(:,:,1)=I_Z1;
z(:,:,2)=I_Z2;
z(:,:,3)=I_Z3;
axes(handles.axes1);
imshow(z,[])
copy=z;
guidata(hObject,handles);
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
global m;
global copy;
handles.I_gray=rgb2gray(m);
value_gain=get(handles.slider8,'Value')
offset_value=get(handles.slider9,'Value')
set(handles.text12,'String',value_gain);

set(handles.text13,'String',offset_value);

handles.I_gray=offset_value+(handles.I_gray).*value_gain;
% if handles.I_gray<=0
%     handles.I_gray=0;
% else if handles.I_gray>=255
%     handles.I_gray=255;
%     end
% end
axes(handles.axes1);
imshow(handles.I_gray);
axes(handles.axes2);
imhist(handles.I_gray);
copy=handles.I_gray;
guidata(hObject,handles);


% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)

% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
global m;
global copy;
handles.I_gray=rgb2gray(m);
offset_value=get(handles.slider9,'Value')
value_gain=get(handles.slider8,'Value')
set(handles.text13,'String',offset_value);

set(handles.text12,'String',value_gain);


handles.I_gray=offset_value+(handles.I_gray).*value_gain;
% if handles.I_gray<=0
%     handles.I_gray=0;
% else if handles.I_gray>=255
%     handles.I_gray=255;
%     end
% end
axes(handles.axes1);
imshow(handles.I_gray);
axes(handles.axes2);
imhist(handles.I_gray);
copy=handles.I_gray;
guidata(hObject,handles);

% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','off');
global p;
global t;
global m;
global copy;
for k=1:256;
    s(k)=floor(256.*sum(t(1:k))./(sum(t(1:256))));
end

% Output gray value
for i=1:(p(1)-1)
    for j=1:(p(2)-1)
        
        O_I=handles.I_gray(i,j);
        M_I(i,j)=s(O_I+1);
       
    end
end

gray=rgb2gray(m);
axes(handles.axes1);
imshow(gray,[]);
axes(handles.axes2);
imshow(M_I,[])
copy=(M_I);




% Histogram plotting
for k=1:(p(1)-1)
    for l=1:(p(2)-1)
   a=M_I(k,l);
  t(a+1)=t(a+1)+1;
    end
end
% axes(handles.axes2);
% bar(t,'b')

% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','off');
global im;
global copy;


I=rgb2gray(im);
axes(handles.axes1);
imshow(I);
I_edge=edge(I,'canny',0.11);
axes(handles.axes2);
imshow(I_edge);
copy=I_edge;
% set(gca,'visible','off') %hide the current axes
% set(get(gca,'children'),'visible','off') %hide the current axes contents





% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','on');
set(handles.slider2, 'visible','on');
set(handles.slider3, 'visible','on');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.text1, 'visible','on');
set(handles.text2, 'visible','on');
set(handles.text3, 'visible','on');
set(handles.text4, 'visible','on');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','on');
set(handles.slider5, 'visible','on');
set(handles.slider6, 'visible','on');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','on');
set(handles.text6, 'visible','on');
set(handles.text7, 'visible','on');
set(handles.text8, 'visible','on');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents

% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','on');
set(handles.slider9, 'visible','on');

set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','on');
set(handles.text13, 'visible','on');
set(handles.text14, 'visible','on');
set(handles.text15, 'visible','on');
set(handles.axes2,'visible','on') %hide the current axes
 set(get(handles.axes2,'children'),'visible','on') %hide the current axes contents

% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider7, 'visible','on');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','on');
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents


% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
global copy;
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
[f d]=uiputfile({'*.jpg;*.tif;*.png;*.gif'},'Save Image');
filename=strcat(d,f);
imwrite(copy,filename);
guidata(hObject,handles);


% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents
global m;
global im;
global Red;
global Green;
global Blue;
global z;
im=m;
z=m;
Red=im(:,:,1);
Green=im(:,:,2);
Blue=im(:,:,3);
axes(handles.axes1);
imshow(im);
guidata(hObject,handles);


% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.


% --- Executes on button press in pushbutton17.


% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipanel1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




    

% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton19.


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)

set(handles.slider1, 'visible','off');
set(handles.slider2, 'visible','off');
set(handles.slider3, 'visible','off');
set(handles.slider4, 'visible','off');
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.text1, 'visible','off');
set(handles.text2, 'visible','off');
set(handles.text3, 'visible','off');
set(handles.text4, 'visible','off');
set(handles.text5, 'visible','off');
set(handles.text6, 'visible','off');
set(handles.text7, 'visible','off');
set(handles.text8, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.axes2,'visible','off') %hide the current axes
 set(get(handles.axes2,'children'),'visible','off') %hide the current axes contents
global z;
z=imrotate(z,90,'nearest');
axes(handles.axes1);
imshow(z);



