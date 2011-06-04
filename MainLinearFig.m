function varargout = MainLinearFig(varargin)
% MAINLINEARFIG MATLAB code for MainLinearFig.fig
%      MAINLINEARFIG, by itself, creates a new MAINLINEARFIG or raises the existing
%      singleton*.
%
%      H = MAINLINEARFIG returns the handle to a new MAINLINEARFIG or the handle to
%      the existing singleton*.
%
%      MAINLINEARFIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINLINEARFIG.M with the given input arguments.
%
%      MAINLINEARFIG('Property','Value',...) creates a new MAINLINEARFIG or raises
%      the existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MainLinearFig_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MainLinearFig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MainLinearFig

% Last Modified by GUIDE v2.5 04-Jun-2011 14:42:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainLinearFig_OpeningFcn, ...
                   'gui_OutputFcn',  @MainLinearFig_OutputFcn, ...
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

% --- Executes just before MainLinearFig is made visible.
function MainLinearFig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MainLinearFig (see VARARGIN)

% Choose default command line output for MainLinearFig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

initialize_gui(hObject, handles, false);

% UIWAIT makes MainLinearFig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MainLinearFig_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function FirstMatrix_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FirstMatrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FirstMatrix_Callback(hObject, eventdata, handles)
% hObject    handle to FirstMatrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Callback e buton koyulacak ki tabloya giri? yap?lmas?n?n bitti?i
% anla??ls?n.


% Hints: get(hObject,'String') returns contents of FirstMatrix as text
%        str2double(get(hObject,'String')) returns contents of FirstMatrix as a double
Matrix1 = str2double(get(hObject, 'String'));
if isnan(Matrix1)
    set(hObject, 'String', 0);
    errordlg('Input must be a matrix','Error');
end

% Save the new FirstMatrix value
%handles.metricdata.density = density;
handles.FirstMatrix = Matrix1;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function SecondMatrix_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SecondMatrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Callback e buton koyulacak ki tabloya giri? yap?lmas?n?n bitti?i
% anla??ls?n.

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SecondMatrix_Callback(hObject, eventdata, handles)
% hObject    handle to SecondMatrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SecondMatrix as text
%        str2double(get(hObject,'String')) returns contents of SecondMatrix as a double
Matrix2 = str2double(get(hObject, 'String'));
if isnan(Matrix2)
    set(hObject, 'String', 0);
    errordlg('Input must be a matrix','Error');
end

% Save the new SecondMatrix value
%handles.metricdata.volume = volume;
handles.SecondMatrix = Matrix2;
guidata(hObject,handles)

% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

switch ProcessNumber
    case 1
        adj(Matrix1)
    case 2
        angle(Matrix1, Matrix2)
    case 3
        cross_product(Matrix1, Matrix2)
    case 4
        %distance(Matrix1)
    case 5
        %dotproduct(Matrix1)
    case 6
        %Interpolation(Matrix1)
    case 7
        issquare(Matrix1)
    case 8
        nullity(Matrix1)
    case 9
        orthproj(Matrix1, Matrix2)
    case 10
        rowref(Matrix1)
    case 11
        %threepoints(Matrix1)
    case 12
        %vectmultip(Matrix1, Matrix2)
    case 13
        rank(Matrix1)
end
set(handles.result, 'String', ans);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

initialize_gui(gcbf, handles, true);

% --- Executes when selected object changed in opgroup.
function opgroup_SelectionChangeFcn(hObject, eventdata, handles)
clear FirstMatrix
clear SecondMatrix
% hObject    handle to the selected object in opgrosup 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (hObject == handles.adjoint)
    set(handles.text4, 'String', 'lb/cu.in');
    set(handles.text5, 'String', 'cu.in');
    set(handles.text6, 'String', 'lb');
else
    set(handles.text4, 'String', 'kg/cu.m');
    set(handles.text5, 'String', 'cu.m');
    set(handles.text6, 'String', 'kg');
end

% --------------------------------------------------------------------
function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end

handles.metricdata.density = 0;
handles.metricdata.volume  = 0;

set(handles.FirstMatrix, 'String', handles.Matrix1);
set(handles.SecondMatrix,  'String', handles.Matrix2);
set(handles.result, 'String', 0);





% Update handles structure
guidata(handles.figure1, handles);


% --- Executes on button press in angle.
function angle_Callback(hObject, eventdata, handles)
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 2;
% Hint: get(hObject,'Value') returns toggle state of angle


% --- Executes on button press in cross_product.
function cross_product_Callback(hObject, eventdata, handles)
% hObject    handle to cross_product (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 3;
% Hint: get(hObject,'Value') returns toggle state of cross_product


% --- Executes on button press in distance.
function distance_Callback(hObject, eventdata, handles)
% hObject    handle to distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 4;
% Hint: get(hObject,'Value') returns toggle state of distance


% --- Executes on button press in dotproduct.
function dotproduct_Callback(hObject, eventdata, handles)
% hObject    handle to dotproduct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 5;
% Hint: get(hObject,'Value') returns toggle state of dotproduct


% --- Executes on button press in interpolation.
function interpolation_Callback(hObject, eventdata, handles)
% hObject    handle to interpolation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 6;
% Hint: get(hObject,'Value') returns toggle state of interpolation


% --- Executes on button press in issquare.
function issquare_Callback(hObject, eventdata, handles)
% hObject    handle to issquare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 7;
% Hint: get(hObject,'Value') returns toggle state of issquare


% --- Executes on button press in nullity.
function nullity_Callback(hObject, eventdata, handles)
% hObject    handle to nullity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 8;
% Hint: get(hObject,'Value') returns toggle state of nullity


% --- Executes on button press in orthprojection.
function orthprojection_Callback(hObject, eventdata, handles)
% hObject    handle to orthprojection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 9;
% Hint: get(hObject,'Value') returns toggle state of orthprojection


% --- Executes on button press in rowechform.
function rowechform_Callback(hObject, eventdata, handles)
% hObject    handle to rowechform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 10;
% Hint: get(hObject,'Value') returns toggle state of rowechform


% --- Executes on button press in triangular3.
function triangular3_Callback(hObject, eventdata, handles)
% hObject    handle to triangular3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 11;
% Hint: get(hObject,'Value') returns toggle state of triangular3


% --- Executes on button press in vectormultiply.
function vectormultiply_Callback(hObject, eventdata, handles)
% hObject    handle to vectormultiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 12;
% Hint: get(hObject,'Value') returns toggle state of vectormultiply


% --- Executes on button press in adjoint.
function adjoint_Callback(hObject, eventdata, handles)
% hObject    handle to adjoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 1;
% Hint: get(hObject,'Value') returns toggle state of adjoint


% --- Executes on button press in rank.
function rank_Callback(hObject, eventdata, handles)
% hObject    handle to rank (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ProcessNumber = 13;
% Hint: get(hObject,'Value') returns toggle state of rank
