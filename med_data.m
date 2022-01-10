function varargout = med_data(varargin)
% MED_DATA MATLAB code for med_data.fig
%      MED_DATA, by itself, creates a new MED_DATA or raises the existing
%      singleton*.
%
%      H = MED_DATA returns the handle to a new MED_DATA or the handle to
%      the existing singleton*.
%
%      MED_DATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MED_DATA.M with the given input arguments.
%
%      MED_DATA('Property','Value',...) creates a new MED_DATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before med_data_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to med_data_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help med_data

% Last Modified by GUIDE v2.5 05-Dec-2015 20:03:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @med_data_OpeningFcn, ...
                   'gui_OutputFcn',  @med_data_OutputFcn, ...
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


% --- Executes just before med_data is made visible.
function med_data_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to med_data (see VARARGIN)

% Choose default command line output for med_data
handles.output = hObject;
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);

bg = imread('medi.jpg'); imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah, 'bottom');


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes med_data wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = med_data_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pid_Callback(hObject, eventdata, handles)

% hObject    handle to pid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pid as text
%        str2double(get(hObject,'String')) returns contents of pid as a double


% --- Executes during object creation, after setting all properties.
function pid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pid (see GCBO)
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



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_exit.
function pb_exit_Callback(hObject, eventdata, handles)
% hObject    handle to pb_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);

% --- Executes on button press in pb_saveas.
function pb_saveas_Callback(hObject, eventdata, handles)
% hObject    handle to pb_saveas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    global pat_dr;
    md2platl=str2num(get(handles.ed_md2pll,'String'));
    md2platr=str2num(get(handles.ed_md2plr,'String'));
    md2aml=str2num(get(handles.ed_md2al,'String'));
    md2amr=str2num(get(handles.ed_md2ar,'String'));
    mmlatl=str2num(get(handles.ed_mmll,'String'));
    mmlatr=str2num(get(handles.ed_mmlr,'String'));
    mmaml=str2num(get(handles.ed_mmal,'String'));
    mmamr=str2num(get(handles.ed_mmar,'String'));
    
    
    ud5platl=str2num(get(handles.ed_ud5pll,'String'));
    ud5platr=str2num(get(handles.ed_ud5plr,'String'));
    ud5aml=str2num(get(handles.ed_ud5al,'String'));
    ud5amr=str2num(get(handles.ed_ud5ar,'String'));
    umlatl=str2num(get(handles.ed_umll,'String'));
    umlatr=str2num(get(handles.ed_umlr,'String'));
    umaml=str2num(get(handles.ed_umal,'String'));
    umamr=str2num(get(handles.ed_umar,'String'));
    
    
    
    radplatl=str2num(get(handles.ed_rpll,'String'));
    radplatr=str2num(get(handles.ed_rplr,'String'));
    radpaml=str2num(get(handles.ed_ral,'String'));
    radpamr=str2num(get(handles.ed_rar,'String'));
    rmlatl=str2num(get(handles.ed_rmll,'String'));
    rmlatr=str2num(get(handles.ed_rmlr,'String'));
    rmaml=str2num(get(handles.ed_rmal,'String'));
    rmamr=str2num(get(handles.ed_rmar,'String'));
    
    lanteplatl=str2num(get(handles.ed_lapll,'String'));
    lanteplatr=str2num(get(handles.ed_laplr,'String'));
    lantepaml=str2num(get(handles.ed_laal,'String'));
    lantepamr=str2num(get(handles.ed_laar,'String'));
    avmll=str2num(get(handles.ed_amll,'String'));
    avmlr=str2num(get(handles.ed_amlr,'String'));
    avaml=str2num(get(handles.ed_amal,'String'));
    avamr=str2num(get(handles.ed_amar,'String'));
    
    maplatl=str2num(get(handles.ed_mapll,'String'));
    maplatr=str2num(get(handles.ed_maplr,'String'));
    mapaml=str2num(get(handles.ed_maal,'String'));
    mapamr=str2num(get(handles.ed_maar,'String'));
    muslatl=str2num(get(handles.ed_mull,'String'));
    muslatr=str2num(get(handles.ed_mulr,'String'));
    musaml=str2num(get(handles.ed_mual,'String'));
    musamr=str2num(get(handles.ed_muar,'String'));
    
    md1platl=str2num(get(handles.ed_md1pll,'String'));
    md1platr=str2num(get(handles.ed_md1plr,'String'));
    md1aml=str2num(get(handles.ed_md1al,'String'));
    md1amr=str2num(get(handles.ed_md1ar,'String'));
    sulatl=str2num(get(handles.ed_sull,'String'));
    sulatr=str2num(get(handles.ed_sulr,'String'));
    suaml=str2num(get(handles.ed_sual,'String'));
    suamr=str2num(get(handles.ed_suar,'String'));
    
    md3platl=str2num(get(handles.ed_md3pll,'String'));
    md3platr=str2num(get(handles.ed_md3plr,'String'));
    md3aml=str2num(get(handles.ed_md3al,'String'));
    md3amr=str2num(get(handles.ed_md3ar,'String'));
    inlatl=str2num(get(handles.ed_inll,'String'));
    inplatr=str2num(get(handles.ed_inlr,'String'));
    inaml=str2num(get(handles.ed_inal,'String'));
    inamr=str2num(get(handles.ed_inar,'String'));
    
    
    if isempty(md2platl) || isempty(md2platl) || isempty(md2platr) || isempty(md2aml) || isempty(md2amr) || isempty(mmlatl) || isempty(mmlatr) || isempty(mmaml) || isempty(mmamr) || isempty(ud5platl) || isempty(ud5platr) || isempty(ud5aml) || isempty(ud5amr) || isempty(umlatl) || isempty(umlatr) || isempty(umaml) || isempty(umamr) || isempty(radplatl) || isempty(radplatr) || isempty(radpaml) || isempty(radpamr) || isempty(rmlatl) || isempty(rmlatr) || isempty(rmaml) || isempty(rmamr) || isempty(lanteplatl) || isempty(lanteplatr) || isempty(lantepaml) || isempty(lantepamr) || isempty(avmll) || isempty(avmlr) || isempty(avaml) || isempty(avamr) || isempty(maplatl) || isempty(maplatr) || isempty(mapaml) || isempty(mapamr) || isempty(muslatl) || isempty(muslatr) || isempty(musaml) || isempty(musamr) || isempty(md1platl) || isempty(md1platr) || isempty(md1aml) || isempty(md1amr) || isempty(sulatl) || isempty(sulatr) || isempty(suaml) || isempty(suamr) || isempty(md3platl) || isempty(md3platr) || isempty(md3aml) || isempty(md3amr) || isempty(inlatl) || isempty(inplatr) || isempty(inaml) || isempty(inamr)
        
       errordlg('Complete All Fields OR Remove Special Characters','Missing')
        
    
    else
        
    full_data=[md2platl md2platr md2aml md2amr; mmlatl mmlatr mmaml mmamr;ud5platl ud5platr ud5aml ud5amr; umlatl umlatr umaml umamr;radplatl radplatr radpaml radpamr; rmlatl rmlatr rmaml rmamr;lanteplatl lanteplatr lantepaml lantepamr; avmll avmlr avaml avamr;maplatl maplatr mapaml mapamr; muslatl muslatr musaml musamr;md1platl md1platr md1aml md1amr; sulatl sulatr suaml suamr;md3platl md3platr md3aml md3amr; inlatl inplatr inaml inamr];

        csvwrite(pat_dr,full_data);
        msgbox('Patient data saved successfully')
        return;
    end

function ed_mmar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mmar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mmar as text
%        str2double(get(hObject,'String')) returns contents of ed_mmar as a double


% --- Executes during object creation, after setting all properties.
function ed_mmar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mmar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_mmal_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mmal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mmal as text
%        str2double(get(hObject,'String')) returns contents of ed_mmal as a double


% --- Executes during object creation, after setting all properties.
function ed_mmal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mmal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_mmlr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mmlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mmlr as text
%        str2double(get(hObject,'String')) returns contents of ed_mmlr as a double


% --- Executes during object creation, after setting all properties.
function ed_mmlr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mmlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_umar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_umar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_umar as text
%        str2double(get(hObject,'String')) returns contents of ed_umar as a double


% --- Executes during object creation, after setting all properties.
function ed_umar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_umar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_umal_Callback(hObject, eventdata, handles)
% hObject    handle to ed_umal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_umal as text
%        str2double(get(hObject,'String')) returns contents of ed_umal as a double


% --- Executes during object creation, after setting all properties.
function ed_umal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_umal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_umlr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_umlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_umlr as text
%        str2double(get(hObject,'String')) returns contents of ed_umlr as a double


% --- Executes during object creation, after setting all properties.
function ed_umlr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_umlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_umll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_umll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_umll as text
%        str2double(get(hObject,'String')) returns contents of ed_umll as a double


% --- Executes during object creation, after setting all properties.
function ed_umll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_umll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rmar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rmar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_rmar as text
%        str2double(get(hObject,'String')) returns contents of ed_rmar as a double


% --- Executes during object creation, after setting all properties.
function ed_rmar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rmar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rmal_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rmal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_rmal as text
%        str2double(get(hObject,'String')) returns contents of ed_rmal as a double


% --- Executes during object creation, after setting all properties.
function ed_rmal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rmal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rmlr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rmlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_rmlr as text
%        str2double(get(hObject,'String')) returns contents of ed_rmlr as a double


% --- Executes during object creation, after setting all properties.
function ed_rmlr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rmlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rmll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rmll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_rmll as text
%        str2double(get(hObject,'String')) returns contents of ed_rmll as a double


% --- Executes during object creation, after setting all properties.
function ed_rmll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rmll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_muar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_muar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_muar as text
%        str2double(get(hObject,'String')) returns contents of ed_muar as a double


% --- Executes during object creation, after setting all properties.
function ed_muar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_muar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_mual_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mual as text
%        str2double(get(hObject,'String')) returns contents of ed_mual as a double


% --- Executes during object creation, after setting all properties.
function ed_mual_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_mulr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mulr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mulr as text
%        str2double(get(hObject,'String')) returns contents of ed_mulr as a double


% --- Executes during object creation, after setting all properties.
function ed_mulr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mulr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_mull_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mull (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mull as text
%        str2double(get(hObject,'String')) returns contents of ed_mull as a double


% --- Executes during object creation, after setting all properties.
function ed_mull_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mull (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_inar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_inar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_inar as text
%        str2double(get(hObject,'String')) returns contents of ed_inar as a double


% --- Executes during object creation, after setting all properties.
function ed_inar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_inar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_inal_Callback(hObject, eventdata, handles)
% hObject    handle to ed_inal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_inal as text
%        str2double(get(hObject,'String')) returns contents of ed_inal as a double


% --- Executes during object creation, after setting all properties.
function ed_inal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_inal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_inlr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_inlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_inlr as text
%        str2double(get(hObject,'String')) returns contents of ed_inlr as a double


% --- Executes during object creation, after setting all properties.
function ed_inlr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_inlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_inll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_inll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_inll as text
%        str2double(get(hObject,'String')) returns contents of ed_inll as a double


% --- Executes during object creation, after setting all properties.
function ed_inll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_inll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_suar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_suar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_suar as text
%        str2double(get(hObject,'String')) returns contents of ed_suar as a double


% --- Executes during object creation, after setting all properties.
function ed_suar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_suar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_sual_Callback(hObject, eventdata, handles)
% hObject    handle to ed_sual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_sual as text
%        str2double(get(hObject,'String')) returns contents of ed_sual as a double


% --- Executes during object creation, after setting all properties.
function ed_sual_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_sual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_sulr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_sulr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_sulr as text
%        str2double(get(hObject,'String')) returns contents of ed_sulr as a double


% --- Executes during object creation, after setting all properties.
function ed_sulr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_sulr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_sull_Callback(hObject, eventdata, handles)
% hObject    handle to ed_sull (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_sull as text
%        str2double(get(hObject,'String')) returns contents of ed_sull as a double


% --- Executes during object creation, after setting all properties.
function ed_sull_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_sull (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_amar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_amar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_amar as text
%        str2double(get(hObject,'String')) returns contents of ed_amar as a double


% --- Executes during object creation, after setting all properties.
function ed_amar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_amar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_amal_Callback(hObject, eventdata, handles)
% hObject    handle to ed_amal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_amal as text
%        str2double(get(hObject,'String')) returns contents of ed_amal as a double


% --- Executes during object creation, after setting all properties.
function ed_amal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_amal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_amlr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_amlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_amlr as text
%        str2double(get(hObject,'String')) returns contents of ed_amlr as a double


% --- Executes during object creation, after setting all properties.
function ed_amlr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_amlr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_amll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_amll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_amll as text
%        str2double(get(hObject,'String')) returns contents of ed_amll as a double


% --- Executes during object creation, after setting all properties.
function ed_amll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_amll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_mmll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mmll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mmll as text
%        str2double(get(hObject,'String')) returns contents of ed_mmll as a double


% --- Executes during object creation, after setting all properties.
function ed_mmll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mmll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md2ar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md2ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md2ar as text
%        str2double(get(hObject,'String')) returns contents of ed_md2ar as a double


% --- Executes during object creation, after setting all properties.
function ed_md2ar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md2ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md2al_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md2al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md2al as text
%        str2double(get(hObject,'String')) returns contents of ed_md2al as a double


% --- Executes during object creation, after setting all properties.
function ed_md2al_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md2al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md2plr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md2plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md2plr as text
%        str2double(get(hObject,'String')) returns contents of ed_md2plr as a double


% --- Executes during object creation, after setting all properties.
function ed_md2plr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md2plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_ud5ar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_ud5ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_ud5ar as text
%        str2double(get(hObject,'String')) returns contents of ed_ud5ar as a double


% --- Executes during object creation, after setting all properties.
function ed_ud5ar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_ud5ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_ud5al_Callback(hObject, eventdata, handles)
% hObject    handle to ed_ud5al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_ud5al as text
%        str2double(get(hObject,'String')) returns contents of ed_ud5al as a double


% --- Executes during object creation, after setting all properties.
function ed_ud5al_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_ud5al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_ud5plr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_ud5plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_ud5plr as text
%        str2double(get(hObject,'String')) returns contents of ed_ud5plr as a double


% --- Executes during object creation, after setting all properties.
function ed_ud5plr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_ud5plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_ud5pll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_ud5pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_ud5pll as text
%        str2double(get(hObject,'String')) returns contents of ed_ud5pll as a double


% --- Executes during object creation, after setting all properties.
function ed_ud5pll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_ud5pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_rar as text
%        str2double(get(hObject,'String')) returns contents of ed_rar as a double


% --- Executes during object creation, after setting all properties.
function ed_rar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_ral_Callback(hObject, eventdata, handles)
% hObject    handle to ed_ral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_ral as text
%        str2double(get(hObject,'String')) returns contents of ed_ral as a double


% --- Executes during object creation, after setting all properties.
function ed_ral_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_ral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rplr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rplr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_rplr as text
%        str2double(get(hObject,'String')) returns contents of ed_rplr as a double


% --- Executes during object creation, after setting all properties.
function ed_rplr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rplr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rpll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rpll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_rpll as text
%        str2double(get(hObject,'String')) returns contents of ed_rpll as a double


% --- Executes during object creation, after setting all properties.
function ed_rpll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rpll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_maar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_maar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_maar as text
%        str2double(get(hObject,'String')) returns contents of ed_maar as a double


% --- Executes during object creation, after setting all properties.
function ed_maar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_maar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_maplr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_maplr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_maplr as text
%        str2double(get(hObject,'String')) returns contents of ed_maplr as a double


% --- Executes during object creation, after setting all properties.
function ed_maplr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_maplr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_mapll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_mapll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_mapll as text
%        str2double(get(hObject,'String')) returns contents of ed_mapll as a double


% --- Executes during object creation, after setting all properties.
function ed_mapll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_mapll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md3ar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md3ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md3ar as text
%        str2double(get(hObject,'String')) returns contents of ed_md3ar as a double


% --- Executes during object creation, after setting all properties.
function ed_md3ar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md3ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md3al_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md3al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md3al as text
%        str2double(get(hObject,'String')) returns contents of ed_md3al as a double


% --- Executes during object creation, after setting all properties.
function ed_md3al_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md3al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md3plr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md3plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md3plr as text
%        str2double(get(hObject,'String')) returns contents of ed_md3plr as a double


% --- Executes during object creation, after setting all properties.
function ed_md3plr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md3plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md3pll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md3pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md3pll as text
%        str2double(get(hObject,'String')) returns contents of ed_md3pll as a double


% --- Executes during object creation, after setting all properties.
function ed_md3pll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md3pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md1ar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md1ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md1ar as text
%        str2double(get(hObject,'String')) returns contents of ed_md1ar as a double


% --- Executes during object creation, after setting all properties.
function ed_md1ar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md1ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md1al_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md1al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md1al as text
%        str2double(get(hObject,'String')) returns contents of ed_md1al as a double


% --- Executes during object creation, after setting all properties.
function ed_md1al_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md1al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md1plr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md1plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md1plr as text
%        str2double(get(hObject,'String')) returns contents of ed_md1plr as a double


% --- Executes during object creation, after setting all properties.
function ed_md1plr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md1plr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md1pll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md1pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md1pll as text
%        str2double(get(hObject,'String')) returns contents of ed_md1pll as a double


% --- Executes during object creation, after setting all properties.
function ed_md1pll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md1pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_laar_Callback(hObject, eventdata, handles)
% hObject    handle to ed_laar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_laar as text
%        str2double(get(hObject,'String')) returns contents of ed_laar as a double


% --- Executes during object creation, after setting all properties.
function ed_laar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_laar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_laal_Callback(hObject, eventdata, handles)
% hObject    handle to ed_laal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_laal as text
%        str2double(get(hObject,'String')) returns contents of ed_laal as a double


% --- Executes during object creation, after setting all properties.
function ed_laal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_laal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_laplr_Callback(hObject, eventdata, handles)
% hObject    handle to ed_laplr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_laplr as text
%        str2double(get(hObject,'String')) returns contents of ed_laplr as a double


% --- Executes during object creation, after setting all properties.
function ed_laplr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_laplr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_lapll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_lapll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_lapll as text
%        str2double(get(hObject,'String')) returns contents of ed_lapll as a double


% --- Executes during object creation, after setting all properties.
function ed_lapll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_lapll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_md2pll_Callback(hObject, eventdata, handles)
% hObject    handle to ed_md2pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_md2pll as text
%        str2double(get(hObject,'String')) returns contents of ed_md2pll as a double


% --- Executes during object creation, after setting all properties.
function ed_md2pll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_md2pll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_maal_Callback(hObject, eventdata, handles)
% hObject    handle to ed_maal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_maal as text
%        str2double(get(hObject,'String')) returns contents of ed_maal as a double


% --- Executes during object creation, after setting all properties.
function ed_maal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_maal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_reset.
function pb_reset_Callback(hObject, eventdata, handles)
% hObject    handle to pb_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.ed_md2pll,'String','');
    set(handles.ed_md2plr,'String','');
    set(handles.ed_md2al,'String','');
    set(handles.ed_md2ar,'String','');
    set(handles.ed_mmll,'String','');
    set(handles.ed_mmlr,'String','');
    set(handles.ed_mmal,'String','');
    set(handles.ed_mmar,'String','');
    
    
    set(handles.ed_ud5pll,'String','');
    set(handles.ed_ud5plr,'String','');
    set(handles.ed_ud5al,'String','');
    set(handles.ed_ud5ar,'String','');
    set(handles.ed_umll,'String','');
    set(handles.ed_umlr,'String','');
    set(handles.ed_umal,'String','');
    set(handles.ed_umar,'String','');
    
    
    
    set(handles.ed_rpll,'String','');
    set(handles.ed_rplr,'String','');
    set(handles.ed_ral,'String','');
    set(handles.ed_rar,'String','');
    set(handles.ed_rmll,'String','');
    set(handles.ed_rmlr,'String','');
    set(handles.ed_rmal,'String','');
    set(handles.ed_rmar,'String','');
    
    set(handles.ed_lapll,'String','');
    set(handles.ed_laplr,'String','');
    set(handles.ed_laal,'String','');
    set(handles.ed_laar,'String','');
    set(handles.ed_amll,'String','');
    set(handles.ed_amlr,'String','');
    set(handles.ed_amal,'String','');
    set(handles.ed_amar,'String','');
    
    set(handles.ed_mapll,'String','');
    set(handles.ed_maplr,'String','');
    set(handles.ed_maal,'String','');
    set(handles.ed_maar,'String','');
    set(handles.ed_mull,'String','');
    set(handles.ed_mulr,'String','');
    set(handles.ed_mual,'String','');
    set(handles.ed_muar,'String','');
    
    set(handles.ed_md1pll,'String','');
    set(handles.ed_md1plr,'String','');
    set(handles.ed_md1al,'String','');
    set(handles.ed_md1ar,'String','');
    set(handles.ed_sull,'String','');
    set(handles.ed_sulr,'String','');
    set(handles.ed_sual,'String','');
    set(handles.ed_suar,'String','');
    
    set(handles.ed_md3pll,'String','');
    set(handles.ed_md3plr,'String','');
    set(handles.ed_md3al,'String','');
    set(handles.ed_md3ar,'String','');
    set(handles.ed_inll,'String','');
    set(handles.ed_inlr,'String','');
    set(handles.ed_inal,'String','');
    set(handles.ed_inar,'String','');
    


% --- Executes on button press in pb_list.
function pb_list_Callback(hObject, eventdata, handles)
% hObject    handle to pb_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pat_dr;
pat_id=get(handles.pid,'String');
if isempty(pat_id)
    errordlg('Enter the patient ID','Patient ID');
else
    dire=[pwd '\data_base\' num2str(pat_id)];
        d=dir(dire);
        d=d(~ismember({d.name},{'.','..'}));
        str = {d.name};
        [s,v] = listdlg('PromptString','Select Patient Data From List',...
                      'SelectionMode','single',...
                      'ListSize',[400 300],'ListString',str);
                
         
   if v==0
   else
       ButtonName = questdlg('SELECT THE ACTION REQUIRED!', ...
                         'ACTION REQUIRED', ...
                         'View/Modify', 'Delete', 'Cancel','');
    sel_file=d(s).name;
    switch ButtonName,
     case 'View/Modify',
            pat_dr=[dire '\'  sel_file];
            pat_det=csvread(pat_dr);
    %---------------------------------------------        
    set(handles.ed_md2pll,'String',pat_det(1,1));
    set(handles.ed_md2plr,'String',pat_det(1,2));
    set(handles.ed_md2al,'String',pat_det(1,3));
    set(handles.ed_md2ar,'String',pat_det(1,4));
    set(handles.ed_mmll,'String',pat_det(2,1));
    set(handles.ed_mmlr,'String',pat_det(2,2));
    set(handles.ed_mmal,'String',pat_det(2,3));
    set(handles.ed_mmar,'String',pat_det(2,4));
    
    
    set(handles.ed_ud5pll,'String',pat_det(3,1));
    set(handles.ed_ud5plr,'String',pat_det(3,2));
    set(handles.ed_ud5al,'String',pat_det(3,3));
    set(handles.ed_ud5ar,'String',pat_det(3,4));
    set(handles.ed_umll,'String',pat_det(4,1));
    set(handles.ed_umlr,'String',pat_det(4,2));
    set(handles.ed_umal,'String',pat_det(4,3));
    set(handles.ed_umar,'String',pat_det(4,4));
    
    
    
    set(handles.ed_rpll,'String',pat_det(5,1));
    set(handles.ed_rplr,'String',pat_det(5,2));
    set(handles.ed_ral,'String',pat_det(5,3));
    set(handles.ed_rar,'String',pat_det(5,4));
    set(handles.ed_rmll,'String',pat_det(6,1));
    set(handles.ed_rmlr,'String',pat_det(6,2));
    set(handles.ed_rmal,'String',pat_det(6,3));
    set(handles.ed_rmar,'String',pat_det(6,4));
    
    set(handles.ed_lapll,'String',pat_det(7,1));
    set(handles.ed_laplr,'String',pat_det(7,2));
    set(handles.ed_laal,'String',pat_det(7,3));
    set(handles.ed_laar,'String',pat_det(7,4));
    set(handles.ed_amll,'String',pat_det(8,1));
    set(handles.ed_amlr,'String',pat_det(8,2));
    set(handles.ed_amal,'String',pat_det(8,3));
    set(handles.ed_amar,'String',pat_det(8,4));
    
    set(handles.ed_mapll,'String',pat_det(9,1));
    set(handles.ed_maplr,'String',pat_det(9,2));
    set(handles.ed_maal,'String',pat_det(9,3));
    set(handles.ed_maar,'String',pat_det(9,4));
    set(handles.ed_mull,'String',pat_det(10,1));
    set(handles.ed_mulr,'String',pat_det(10,2));
    set(handles.ed_mual,'String',pat_det(10,3));
    set(handles.ed_muar,'String',pat_det(10,4));
    
    set(handles.ed_md1pll,'String',pat_det(11,1));
    set(handles.ed_md1plr,'String',pat_det(11,2));
    set(handles.ed_md1al,'String',pat_det(11,3));
    set(handles.ed_md1ar,'String',pat_det(11,4));
    set(handles.ed_sull,'String',pat_det(12,1));
    set(handles.ed_sulr,'String',pat_det(12,2));
    set(handles.ed_sual,'String',pat_det(12,3));
    set(handles.ed_suar,'String',pat_det(12,4));
    
    set(handles.ed_md3pll,'String',pat_det(13,1));
    set(handles.ed_md3plr,'String',pat_det(13,2));
    set(handles.ed_md3al,'String',pat_det(13,3));
    set(handles.ed_md3ar,'String',pat_det(13,4));
    set(handles.ed_inll,'String',pat_det(14,1));
    set(handles.ed_inlr,'String',pat_det(14,2));
    set(handles.ed_inal,'String',pat_det(14,3));
    set(handles.ed_inar,'String',pat_det(14,4));
    
    set(handles.pb_save,'Visible','off')
    set(handles.pb_saveas,'Visible','on')
         
     case 'Delete',
        pat_dr=[dire '\'  sel_file];
        dg=['Do you want to delete ' sel_file '?'];
        ButtonName = questdlg(dg, ...
                         'DELETE', ...
                         'Yes', 'No', '');
        switch ButtonName,
            case 'Yes', 
            delete(pat_dr);
            case 'No'
        end
                
        
     case 'Cancel',
 
    end
   end
          
    
    
end


% --- Executes on button press in pb_save.
function pb_save_Callback(hObject, eventdata, handles)
% hObject    handle to pb_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dpaths=[pwd '\data_base'];
if exist(dpaths,'dir')
else
    mkdir(dpaths);
end

pat_id=get(handles.pid,'String');
if isempty(pat_id)
    errordlg('Enter the patient ID','Patient ID');
else
    pat_path=[dpaths '\' pat_id];
    if exist(pat_path,'dir')
    else
        mkdir(pat_path);
    end
    %---------------------------------------------
    md2platl=str2num(get(handles.ed_md2pll,'String'));
    md2platr=str2num(get(handles.ed_md2plr,'String'));
    md2aml=str2num(get(handles.ed_md2al,'String'));
    md2amr=str2num(get(handles.ed_md2ar,'String'));
    mmlatl=str2num(get(handles.ed_mmll,'String'));
    mmlatr=str2num(get(handles.ed_mmlr,'String'));
    mmaml=str2num(get(handles.ed_mmal,'String'));
    mmamr=str2num(get(handles.ed_mmar,'String'));
    
    
    ud5platl=str2num(get(handles.ed_ud5pll,'String'));
    ud5platr=str2num(get(handles.ed_ud5plr,'String'));
    ud5aml=str2num(get(handles.ed_ud5al,'String'));
    ud5amr=str2num(get(handles.ed_ud5ar,'String'));
    umlatl=str2num(get(handles.ed_umll,'String'));
    umlatr=str2num(get(handles.ed_umlr,'String'));
    umaml=str2num(get(handles.ed_umal,'String'));
    umamr=str2num(get(handles.ed_umar,'String'));
    
    
    
    radplatl=str2num(get(handles.ed_rpll,'String'));
    radplatr=str2num(get(handles.ed_rplr,'String'));
    radpaml=str2num(get(handles.ed_ral,'String'));
    radpamr=str2num(get(handles.ed_rar,'String'));
    rmlatl=str2num(get(handles.ed_rmll,'String'));
    rmlatr=str2num(get(handles.ed_rmlr,'String'));
    rmaml=str2num(get(handles.ed_rmal,'String'));
    rmamr=str2num(get(handles.ed_rmar,'String'));
    
    lanteplatl=str2num(get(handles.ed_lapll,'String'));
    lanteplatr=str2num(get(handles.ed_laplr,'String'));
    lantepaml=str2num(get(handles.ed_laal,'String'));
    lantepamr=str2num(get(handles.ed_laar,'String'));
    avmll=str2num(get(handles.ed_amll,'String'));
    avmlr=str2num(get(handles.ed_amlr,'String'));
    avaml=str2num(get(handles.ed_amal,'String'));
    avamr=str2num(get(handles.ed_amar,'String'));
    
    maplatl=str2num(get(handles.ed_mapll,'String'));
    maplatr=str2num(get(handles.ed_maplr,'String'));
    mapaml=str2num(get(handles.ed_maal,'String'));
    mapamr=str2num(get(handles.ed_maar,'String'));
    muslatl=str2num(get(handles.ed_mull,'String'));
    muslatr=str2num(get(handles.ed_mulr,'String'));
    musaml=str2num(get(handles.ed_mual,'String'));
    musamr=str2num(get(handles.ed_muar,'String'));
    
    md1platl=str2num(get(handles.ed_md1pll,'String'));
    md1platr=str2num(get(handles.ed_md1plr,'String'));
    md1aml=str2num(get(handles.ed_md1al,'String'));
    md1amr=str2num(get(handles.ed_md1ar,'String'));
    sulatl=str2num(get(handles.ed_sull,'String'));
    sulatr=str2num(get(handles.ed_sulr,'String'));
    suaml=str2num(get(handles.ed_sual,'String'));
    suamr=str2num(get(handles.ed_suar,'String'));
    
    md3platl=str2num(get(handles.ed_md3pll,'String'));
    md3platr=str2num(get(handles.ed_md3plr,'String'));
    md3aml=str2num(get(handles.ed_md3al,'String'));
    md3amr=str2num(get(handles.ed_md3ar,'String'));
    inlatl=str2double(get(handles.ed_inll,'String'));
    inplatr=str2num(get(handles.ed_inlr,'String'));
    inaml=str2num(get(handles.ed_inal,'String'));
    inamr=str2num(get(handles.ed_inar,'String'));
    
    
if isempty(md2platl) || isempty(md2platl) || isempty(md2platr) || isempty(md2aml) || isempty(md2amr) || isempty(mmlatl) || isempty(mmlatr) || isempty(mmaml) || isempty(mmamr) || isempty(ud5platl) || isempty(ud5platr) || isempty(ud5aml) || isempty(ud5amr) || isempty(umlatl) || isempty(umlatr) || isempty(umaml) || isempty(umamr) || isempty(radplatl) || isempty(radplatr) || isempty(radpaml) || isempty(radpamr) || isempty(rmlatl) || isempty(rmlatr) || isempty(rmaml) || isempty(rmamr) || isempty(lanteplatl) || isempty(lanteplatr) || isempty(lantepaml) || isempty(lantepamr) || isempty(avmll) || isempty(avmlr) || isempty(avaml) || isempty(avamr) || isempty(maplatl) || isempty(maplatr) || isempty(mapaml) || isempty(mapamr) || isempty(muslatl) || isempty(muslatr) || isempty(musaml) || isempty(musamr) || isempty(md1platl) || isempty(md1platr) || isempty(md1aml) || isempty(md1amr) || isempty(sulatl) || isempty(sulatr) || isempty(suaml) || isempty(suamr) || isempty(md3platl) || isempty(md3platr) || isempty(md3aml) || isempty(md3amr) || isempty(inlatl) || isempty(inplatr) || isempty(inaml) || isempty(inamr)
   errordlg('Complete All Fields OR Remove Special Characters','Missing')
else
        
full_data=[md2platl md2platr md2aml md2amr; mmlatl mmlatr mmaml mmamr;ud5platl ud5platr ud5aml ud5amr; umlatl umlatr umaml umamr;radplatl radplatr radpaml radpamr; rmlatl rmlatr rmaml rmamr;lanteplatl lanteplatr lantepaml lantepamr; avmll avmlr avaml avamr;maplatl maplatr mapaml mapamr; muslatl muslatr musaml musamr;md1platl md1platr md1aml md1amr; sulatl sulatr suaml suamr;md3platl md3platr md3aml md3amr; inlatl inplatr inaml inamr];
    
    
dt=datestr(now,'dd-mm-yyyy');
tm=datestr(now,'HH_MM_SS');
    
    f_path=[pat_path '\' pat_id '_' dt '_' tm '.csv'];
    csvwrite(f_path,full_data);
    msgbox('Patient data saved successfully')
    return;
end
    
    

end
