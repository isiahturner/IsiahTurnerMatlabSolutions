function varargout = grade_Calculator(varargin)
% GRADE_CALCULATOR MATLAB code for grade_Calculator.fig
%      GRADE_CALCULATOR, by itself, creates a new GRADE_CALCULATOR or raises the existing
%      singleton*.
%
%      H = GRADE_CALCULATOR returns the handle to a new GRADE_CALCULATOR or the handle to
%      the existing singleton*.
%
%      GRADE_CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRADE_CALCULATOR.M with the given input arguments.
%
%      GRADE_CALCULATOR('Property','Value',...) creates a new GRADE_CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before grade_Calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to grade_Calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help grade_Calculator

% Last Modified by GUIDE v2.5 18-Nov-2019 20:19:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @grade_Calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @grade_Calculator_OutputFcn, ...
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


% --- Executes just before grade_Calculator is made visible.
function grade_Calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to grade_Calculator (see VARARGIN)

%%Pre-allocate variables
handles.grade1= 0;
handles.grade2= 0;
handles.grade3= 0;
handles.grade4= 0;
handles.grade5= 0;

handles.letterGrade= '';
handles.percentageScore= [];
handles.scale_checkbox= [0];

% Choose default command line output for grade_Calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes grade_Calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = grade_Calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function assignmentGrade1_editText_Callback(hObject, eventdata, handles)
% hObject    handle to assignmentGrade1_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of assignmentGrade1_editText as text
%        str2double(get(hObject,'String')) returns contents of assignmentGrade1_editText as a double

handles.grade1= str2double(get(hObject,'String'));
guidata(hObject,handles)




% --- Executes during object creation, after setting all properties.
function assignmentGrade1_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to assignmentGrade1_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function assignmentGrade5_editText_Callback(hObject, eventdata, handles)
% hObject    handle to assignmentGrade5_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of assignmentGrade5_editText as text
%        str2double(get(hObject,'String')) returns contents of assignmentGrade5_editText as a double

handles.grade5= str2double(get(hObject,'String'));
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function assignmentGrade5_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to assignmentGrade5_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function assignmentGrade2_editText_Callback(hObject, eventdata, handles)
% hObject    handle to assignmentGrade2_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of assignmentGrade2_editText as text
%        str2double(get(hObject,'String')) returns contents of assignmentGrade2_editText as a double

handles.grade2= str2double(get(hObject,'String'));
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function assignmentGrade2_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to assignmentGrade2_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function assignmentGrade3_editText_Callback(hObject, eventdata, handles)
% hObject    handle to assignmentGrade3_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of assignmentGrade3_editText as text
%        str2double(get(hObject,'String')) returns contents of assignmentGrade3_editText as a double

handles.grade3= str2double(get(hObject,'String'));
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function assignmentGrade3_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to assignmentGrade3_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function assignmentGrade4_editText_Callback(hObject, eventdata, handles)
% hObject    handle to assignmentGrade4_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of assignmentGrade4_editText as text
%        str2double(get(hObject,'String')) returns contents of assignmentGrade4_editText as a double

handles.grade4= str2double(get(hObject,'String'));
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function assignmentGrade4_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to assignmentGrade4_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in scale_checkbox.
function scale_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to scale_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.scale_checkbox= get(hObject,'Value');
guidata(hObject,handles)

% Hint: get(hObject,'Value') returns toggle state of scale_checkbox


% --- Executes on button press in gradeCalculate_pushbutton.
function gradeCalculate_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to gradeCalculate_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



%Calculating the average of the 5 assignment scores inputted
handles.percentageScore=(handles.grade1 + handles.grade2 + handles.grade3 + handles.grade4 + handles.grade5)/5;


%Assigning the average assignment scores to a letter grade and assigning it
%to a percentage score and changing the static text within the panels to dynamically change along with the average

if handles.scale_checkbox == 0
    if handles.percentageScore >= 90 && handles.percentageScore < 100
        handles.letterGrade= 'A';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
        
    elseif handles.percentageScore >= 80 && handles.percentageScore < 90
        handles.letterGrade= 'B';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
        
    elseif handles.percentageScore >= 70 && handles.percentageScore < 80
        handles.letterGrade= 'C';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
        
    elseif handles.percentageScore < 70
        handles.letterGrade= 'F';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
    end
else
    if handles.percentageScore >= 80 && handles.percentageScore < 100
        handles.letterGrade= 'A';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
        
    elseif handles.percentageScore >= 70 && handles.percentageScore < 80
        handles.letterGrade= 'B';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
        
    elseif handles.percentageScore >= 60 && handles.percentageScore < 70
        handles.letterGrade= 'C';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
        
    elseif handles.percentageScore < 60
        handles.letterGrade= 'F';
        set(handles.percentageScore_text,'String',strcat(num2str(handles.percentageScore),'%'));
        set(handles.letterGrade_text,'String',handles.letterGrade);
    end
end





    
