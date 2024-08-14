function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 24-Apr-2024 14:20:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
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
a=imread('peppers.png');
axes(handles.axes2);
imshow(a);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
x=imread('peppers.png');
hr=imhist(x(:,:,1));
hv=imhist(x(:,:,2));
hb=imhist(x(:,:,3));
plot([hr hv hb]);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
img=imread('peppers.png');
b=imresize(img,0.5);
imshow(b);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
f1=@(block_struct) dct2(block_struct.data);
RGB=imread('peppers.png');
Im=rgb2gray(RGB);
J=blockproc(Im,[8,8],f1);
imshow(J);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=imread('peppers.png');
axes(handles.axes1);
gris=rgb2gray(a);
imshow(gris);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png'); 
r=img; 
r(:,:,[2 3])=0;
imshow(r); 

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png');
 X=rgb2gray(img);
 I=double(X)/255; 
 n=4;
 d=256/n;
 imhist(floor(I*2500/d)/(n-1));

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png');
 X=rgb2gray(img);
 I=double(X)/255; 
 n=2;
 d=256/n;
 imhist(floor(I*2500/d)/(n-1));

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png'); 
r=img; 
r(:,:,[1 2])=0;
imshow(r); 

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png'); 
r=img; 
r(:,:,[1 3])=0;
imshow(r); 

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
RGB=imread('peppers.png');
I=regb2gray(RGB);
J=  dct2(I);
imshow(log(abs(J)),[]),colormap(jet(64)),colorbar
J(abs(J)<10)=0;
K=idct2(J);
imshow(K,[0 255]);













% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png');
 X=rgb2gray(img);
 I=double(X)/255; 
 n=8;
 d=256/n;
 imshow(floor(I*255/d)/(n-1));

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png');
 X=rgb2gray(img);
 I=double(X)/255; 
 n=4;
 d=256/n;
 imshow(floor(I*255/d)/(n-1));



% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png');
 X=rgb2gray(img);
 I=double(X)/255; 
 n=8;
 d=256/n;
 imhist(floor(I*2500/d)/(n-1));


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png');
 X=rgb2gray(img);
 I=double(X)/255; 
 n=2;
 d=256/n;
 imshow(floor(I*2500/d)/(n-1));


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img = imread('peppers.png');
la = 255 - img; % Inverser chaque canal de couleur
imshow(la);
% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1); 
img=imread('peppers.png');
 h=imhist(img);
 hn=h/numel(img);
 bar(hn);


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('peppers.png') ;
k=imnoise(I,'gaussian');  
moy=(1/9)*[1,1,1;1,1,1;1,1,1] ;
G=imfilter(k,moy) ;
imshow(G);title('moyenne'); 


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=imread('peppers.png');
k=imnoise(I,'gaussian'); 
moy=(1/9)*[1,1,1;1,1,1;1,1,1];  
s=medfilt2(k);  
imshow(s);title('mediom');


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RGB = imread('peppers.png') ;
I = rgb2gray (RGB) ;
J = dct2 (I) ;
imshow (log(abs (J) ) , []), colormap(jet (64) ), colorbar
J(abs (J) < 10) = 0;
K = idct2 (J) ;
imshow (K, [0 255]) ;


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i = imread('peppers.png');
subplot(2,2,1);
imshow(i);
A = imadjust(i);
subplot(2,1,2);
imshow(A);


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = imread('peppers.png');
x_gray = rgb2gray(x);
imhist(x_gray);
title('Histogram');



function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
x = imread('peppers.png');
x_gray = rgb2gray(x); % Convertir l'image en niveaux de gris
h = imhist(x_gray);
hc = cumsum(h);
bar(hc),title('histogramme cumul?');






% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('peppers.png');
axes(handles.axes1);
gris = rgb2gray(a);
h = imhist(gris);
hn = h / numel(gris); % Utilisez numel(gris) ici
bar(hn),title('histogramme normalis?');


% --- Executes on button press in pushbutton35.
%function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%i=imread('cameraman.tif'); 
%axes(handles.axes1);
%g=imnoise(i,'gaussian');
%imshow(g);


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i=imread('peppers.png'); 
axes(handles.axes1);
g=imnoise(i,'salt & pepper');
imshow(g);


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=imread('peppers.png') 
axes(handles.axes1);
imshow(a);
k1=imnoise(a,'salt & pepper'); 
moy=(1/9)*[1,1,1;1,1,1;1,1,1] ;
G1=imfilter(k1,moy); 
axes(handles.axes1);
imshow(G1);title(' salt & pepper moyenne');

% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=imread('peppers.png');
axes(handles.axes1);
imshow(a);
k=imnoise(a,'gaussian'); 
moy=(1/9)*[1,1,1;1,1,1;1,1,1] ; 
s=medfilt2(k)  ;
axes(handles.axes2);
imshow(s);
title('mediom');


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=imread('peppers.png');
axes(handles.axes1);
imshow(a);
b=edge(a,'sobel')
axes(handles.axes2);
imshow(b);


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=imread('peppers.png');
axes(handles.axes1);title('img original');
imshow(a);
b=edge(a,'canny')
axes(handles.axes2);
imshow(b);


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = imread('peppers.png');
axes(handles.axes2);
[r, c] = size(x);
s = 128;
m = zeros(r, c); % Preallocate the output matrix
for i = 1:r
    for j = 1:c
        if x(i, j) >= s
            m(i, j) = 255;
        else
            m(i, j) = 0;
        end
    end
end
axes(handles.axes1);
imshow(m); title(' image binaire');
