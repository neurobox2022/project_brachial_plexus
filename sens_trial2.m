function varargout = sens_trial2(varargin)
% addpath('E:\aims\backup\NCV COMBINED GUI\')
% SENS_TRIAL2 MATLAB code for sens_trial2.fig
%      SENS_TRIAL2, by itself, creates a new SENS_TRIAL2 or raises the existing
%      singleton*.
%
%      H = SENS_TRIAL2 returns the handle to a new SENS_TRIAL2 or the handle to
%      the existing singleton*.
%
%      SENS_TRIAL2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SENS_TRIAL2.M with the given input arguments.
%
%      SENS_TRIAL2('Property','Value',...) creates a new SENS_TRIAL2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sens_trial2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sens_trial2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sens_trial2

% Last Modified by GUIDE v2.5 05-Dec-2015 14:29:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sens_trial2_OpeningFcn, ...
                   'gui_OutputFcn',  @sens_trial2_OutputFcn, ...
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


% --- Executes just before sens_trial2 is made visible.
function sens_trial2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sens_trial2 (see VARARGIN)

% Choose default command line output for sens_trial2
handles.output = hObject;
set(handles.sens_lat_l,'string','')
set(handles.sens_lat_r,'string','')
set(handles.moto_lat_l,'string','')
set(handles.moto_lat_r,'string','')

set(handles.moto_amp_l,'string','')
set(handles.moto_amp_r,'string','')
set(handles.sens_amp_l,'string','')
set(handles.sens_amp_r,'string','')
set(handles.edit_patientid,'string','')
set(handles.edit_days,'string','')
set(handles.edit_disp_result,'string','')
set(handles.edit_moto_results,'string','')
set(handles.edit32,'string','');
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);

bg = imread('medi.jpg'); imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah, 'bottom');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sens_trial2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Executes during object creation, after setting all properties.
function edit_disp_result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_disp_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
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


% --- Outputs from this function are returned to the command line.
function varargout = sens_trial2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function edit_moto_results_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_moto_results (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
function edit_days_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_days (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function edit_patientid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_patientid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%-----------------------------------------------------------------------------------------------------





function edit_patientid_Callback(hObject, eventdata, handles)
% hObject    handle to edit_patientid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_patientid as text
%        str2double(get(hObject,'String')) returns contents of edit_patientid as a double



function edit_days_Callback(hObject, eventdata, handles)
% hObject    handle to edit_days (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_days as text
%        str2double(get(hObject,'String')) returns contents of edit_days as a double


% --- Executes on button press in pB_cancel.
function pB_cancel_Callback(hObject, eventdata, handles)
set(handles.sens_lat_l,'string','');
set(handles.sens_lat_r,'string','');
set(handles.moto_lat_l,'string','');
set(handles.moto_lat_r,'string','');

set(handles.moto_amp_l,'string','');
set(handles.moto_amp_r,'string','');
set(handles.sens_amp_l,'string','');
set(handles.sens_amp_r,'string','');
set(handles.edit_patientid,'string','');
set(handles.edit_days,'string','');
set(handles.edit_disp_result,'string','');
set(handles.edit_moto_results,'string','');
set(handles.edit32,'string','');










%----------------------------------------------------------------------------------------------------

% --- Executes on button press in pb_submit.
function pb_submit_Callback(hObject, eventdata, handles)
global pat_dr;


id=get(handles.edit_patientid,'string');
if isempty(id)
    errordlg('Enter the patient ID','Patient ID');
else
     dire=[pwd '\data_base\' num2str(id)];
        d=dir(dire);
        d=d(~ismember({d.name},{'.','..'}));
        str = {d.name};
        [s,v] = listdlg('PromptString','Select Patient Data From List',...
                      'SelectionMode','single',...
                      'ListSize',[400 300],'ListString',str);
                
end
set(handles.edit_disp_result,'max',20);
set(handles.edit_moto_results,'max',20);
set(handles.edit32,'max',20);

sel_file=d(s).name;
pat_dr=[dire '\'  sel_file];
pat_det=csvread(pat_dr);
pat_det=[pat_det(:,1),pat_det(:,3),pat_det(:,2),pat_det(:,4)];
matx=[];
for i=1:2:13
    matx=[matx; pat_det(i,1:4)  pat_det(i+1,1:4);];
end
a=[];
a=matx;

id=str2num(id);



    set(handles.sens_lat_l,'string',a(:,1));
    set(handles.sens_lat_r,'string',a(:,3));
     set(handles.sens_amp_l,'string',a(:,2));
     set(handles.sens_amp_r,'string',a(:,4)); 
     
     set(handles.moto_lat_l,'string',a(:,5));
     set(handles.moto_lat_r,'string',a(:,7));
     set(handles.moto_amp_l,'string',a(:,6));
     set(handles.moto_amp_r,'string',a(:,8));

%-----------------------------------------------------------------
%loading is done. now submit


days=get(handles.edit_days,'string');              
if isempty(str2num(days))
 errordlg('ENTER A VALID NUMBER for number of days');return
end


% hObject    handle to pb_submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


set(handles.edit_disp_result,'max',20);
set(handles.edit_moto_results,'max',20);
set(handles.edit32,'max',20);


med_d2_lat_L=a(1,1);
ul_lat_L=a(2,1);
rad_lat_L=a(3,1);
latante_lat_L=a(4,1);
medante_lat_L=a(5,1);
med_d1_lat_L=a(6,1);
med_d3_lat_L=a(7,1);

med_d2_amp_L=a(1,2);
ul_amp_L=a(2,2);
rad_amp_L=a(3,2);
latante_amp_L=a(4,2);
medante_amp_L=a(5,2);
med_d1_amp_L=a(6,2);
med_d3_amp_L=a(7,2);

med_d2_lat_R=a(1,3);
ul_lat_R=a(2,3);
rad_lat_R=a(3,3);
latante_lat_R=a(4,3);
medante_lat_R=a(5,3);
med_d1_lat_R=a(6,3);
med_d3_lat_R=a(7,3);

med_d2_amp_R=a(1,4);
ul_amp_R=a(2,4);
rad_amp_R=a(3,4);
latante_amp_R=a(4,4);
medante_amp_R=a(5,4);
med_d1_amp_R=a(6,4);
med_d3_amp_R=a(7,4);




median_APB_lat_L=a(1,5);
ulner_ADM_lat_L=a(2,5);
radial_EIP_lat_L=a(3,5);
axill_delt_lat_L=a(4,5);
labc_bicep_lat_L=a(5,5);
suprascap_lat_L=a(6,5);
infrascap_lat_L=a(7,5);

median_APB_amp_L=a(1,6);
ulner_ADM_amp_L=a(2,6);
radial_EIP_amp_L=a(3,6);
axill_delt_amp_L=a(4,6);
labc_bicep_amp_L=a(5,6);
suprascap_amp_L=a(6,6);
infrascap_amp_L=a(7,6);

median_APB_lat_R=a(1,7);
ulner_ADM_lat_R=a(2,7);
radial_EIP_lat_R=a(3,7);
axill_delt_lat_R=a(4,7);
labc_bicep_lat_R=a(5,7);
suprascap_lat_R=a(6,7);
infrascap_lat_R=a(7,7);

median_APB_amp_R=a(1,8);
ulner_ADM_amp_R=a(2,8);
radial_EIP_amp_R=a(3,8);
axill_delt_amp_R=a(4,8);
labc_bicep_amp_R=a(5,8);
suprascap_amp_R=a(6,8);
infrascap_amp_R=a(7,8);




             %-----------------------------------------------------------------------------------------------------------
             %              SENSORY LEFT SIDE
             %-----------------------------------------------------------------------------------------------------------

      ts=get(handles.edit_disp_result,'string');
      ts=strvcat(ts,'LEFT SIDE');
      set(handles.edit_disp_result,'string',ts);
            
 for i=1:7

        c6_sens_L(i)=0;
        c7_sens_L(i)=0;
        c8_sens_L(i)=0;
        t1_sens_L(i)=0;

        ut_sens_L(i)=0;
        mt_sens_L(i)=0;
        lt_sens_L(i)=0;

        lc_sens_L(i)=0;
        pc_sens_L(i)=0;
        mc_sens_L(i)=0;

        median_sens_L(i)=0;
        radial_sens_L(i)=0;
        labc_sens_L(i)=0;
        ulner_sens_L(i)=0;
        mabc_sens_L(i)=0;
        
        c6_sens_R(i)=0;
        c7_sens_R(i)=0;
        c8_sens_R(i)=0;
        t1_sens_R(i)=0;

        ut_sens_R(i)=0;
        mt_sens_R(i)=0;
        lt_sens_R(i)=0;

        lc_sens_R(i)=0;
        pc_sens_R(i)=0;
        mc_sens_R(i)=0;

        median_sens_R(i)=0;
        radial_sens_R(i)=0;
        labc_sens_R(i)=0;
        ulner_sens_R(i)=0;
        mabc_sens_R(i)=0;
        

            abno_sens_count_L(i)=0;
            abno_sens_count_R(i)=0;
end
      
med_sens=[0 0 0];uln_sens=0;rad_sens=0;
%median d2
if (med_d2_lat_L>3.5)||(med_d2_amp_L<10)
      c6_sens_L(1)=20;
      c7_sens_L(1)=80;
      ut_sens_L(1)=20;
      mt_sens_L(1)=60;
      lc_sens_L(1)=100;
      median_sens_L(1)=100;
      
     abno_sens_count_L(1)=1;med_sens(1)=med_sens(1)+1; 
      ts=get(handles.edit_disp_result,'string');
      ts=strvcat(ts,'MEDIAN D2 SNAP is affected');
      set(handles.edit_disp_result,'string',ts);

        else if (med_d2_amp_L<(.5*med_d2_amp_R))
      c6_sens_L(1)=20;
      c7_sens_L(1)=80;
      ut_sens_L(1)=20;
      mt_sens_L(1)=60;
      lc_sens_L(1)=100;
      median_sens_L(1)=100;
             abno_sens_count_L(1)=1;med_sens(1)=med_sens(1)+1;  
      ts=get(handles.edit_disp_result,'string');
      ts=strvcat(ts,'MEDIAN D2 SNAP is asymmetrically reduced');
      set(handles.edit_disp_result,'string',ts);
             end
     

end 


%ulner d5
if (ul_lat_L>3.2)||(ul_amp_L<5)
      c8_sens_L(2)=100;
      lt_sens_L(2)=100;
      mc_sens_L(2)=100;
      ulner_sens_L(2)=100;
      
        c6_sens_L(2)=0;
        c7_sens_L(2)=0;
        t1_sens_L(2)=0;

       abno_sens_count_L(2)=1;     uln_sens=uln_sens+1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'ULNER SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
     else if (ul_amp_L<(.5*ul_amp_R))
      c8_sens_L(2)=100;
      lt_sens_L(2)=100;
      mc_sens_L(2)=100;
      ulner_sens_L(2)=100;
      
        c6_sens_L(2)=0;
        c7_sens_L(2)=0;
        t1_sens_L(2)=0;

          abno_sens_count_L(2)=1;   uln_sens=uln_sens+1;  
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'ULNER SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
          end
     
  
end
  % s- radial
  if (rad_lat_L>2.7)||(rad_amp_L<15)
      c7_sens_L(3)=40;
      ut_sens_L(3)=60;
      mt_sens_L(3)=40;
      pc_sens_L(3)=100;
      radial_sens_L(3)=100;
          abno_sens_count_L(3)=1;   rad_sens=rad_sens+1;  
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'RADIAL SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
     else if (rad_amp_L<(.5*rad_amp_R))
              c7_sens_L(3)=40;
              ut_sens_L(3)=60;
              mt_sens_L(3)=40;
              pc_sens_L(3)=100;
              radial_sens_L(3)=100;
              abno_sens_count_L(3)=1;rad_sens=rad_sens+1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'RADIAL SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
          end

  end
    % LABC
  if (latante_lat_L>2.6)||(latante_amp_L<6.8)
      c6_sens_L(4)=100;
      ut_sens_L(4)=100;
      lc_sens_L(4)=100;
      labc_sens_L(4)=100; 

          abno_sens_count_L(4)=1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'LABC SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
       else if (latante_amp_L<(.5*latante_amp_R))
          c6_sens_L(4)=100;
          ut_sens_L(4)=100;
          lc_sens_L(4)=100;
          labc_sens_L(4)=100; 

            abno_sens_count_L(4)=1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'LABC SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
            end
     
  
  end         
  % MABC
  if (medante_lat_L>2.6)||(medante_amp_L<10)
      t1_sens_L(5)=100;
      lt_sens_L(5)=100;
      mc_sens_L(5)=100;
      mabc_sens_L(5)=100;
          abno_sens_count_L(5)=1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MABC is affected');
          set(handles.edit_disp_result,'string',ts);
         else if (medante_amp_L<(.5*medante_amp_R))
              t1_sens_L(5)=100;
              lt_sens_L(5)=100;
              mc_sens_L(5)=100;
              mabc_sens_L(5)=100;
              abno_sens_count_L(5)=1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MABC SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
             end 
  end
  
  
  %MED D1
    if (med_d1_lat_L>3.5)||(med_d1_amp_L<10)
      c6_sens_L(6)=100;
      ut_sens_L(6)=100;
      lc_sens_L(6)=100;
      median_sens_L(6)=100; med_sens(2)=med_sens(2)+1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D1 SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
        else if (med_d1_amp_L<(.5*med_d1_amp_R))
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D1 SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
              c6_sens_L(6)=100;
              ut_sens_L(6)=100;
              lc_sens_L(6)=100;
              median_sens_L(6)=100; 
             abno_sens_count_L(6)=1;  med_sens(2)=med_sens(2)+1;
                    
             end

    end
% MED D3
  if (med_d3_lat_L>3.5)||(med_d3_amp_L<10)
    c6_sens_L(7)=10;
    c7_sens_L(7)=70;
    c8_sens_L(7)=20;
    
      ut_sens_L(7)=10;
      mt_sens_L(7)=70;
      lt_sens_L(7)=20;
      
         lc_sens_L(7)=80;
         mc_sens_L(7)=20;
         median_sens_L(7)=100; 
          abno_sens_count_L(7)=1;     med_sens(3)=med_sens(3)+1;    
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D3 SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
         else if (med_d3_amp_L<(.5*med_d3_amp_R))
            c6_sens_L(7)=10;
            c7_sens_L(7)=70;
            c8_sens_L(7)=20;

              ut_sens_L(7)=10;
              mt_sens_L(7)=70;
              lt_sens_L(7)=20;

                 lc_sens_L(7)=80;
                 mc_sens_L(7)=20;
                 median_sens_L(7)=100; 
              abno_sens_count_L(7)=1;      med_sens(3)=med_sens(3)+1;  
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D3 SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
             end
  end
 
    abno_sens_count_L;
     if abno_sens_count_L==0
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'ALL THE SENSORY PARAMETERS ARE WITHIN NORMAL LIMITS');
          set(handles.edit_disp_result,'string',ts);
     end
            %-----------------------------------------------------------------------------------------------------------
            %                                       SENSORY RIGHT SIDE
            %----------------------------------------------------------------------------------------------------------- 
      ts=get(handles.edit_disp_result,'string');
      ts=strvcat(ts,'   ');
      ts=strvcat(ts,'RIGHT SIDE');
      set(handles.edit_disp_result,'string',ts);

            
            
%median d2
if (med_d2_lat_R>3.5)||(med_d2_amp_R<10)
      c6_sens_R(1)=20;
      c7_sens_R(1)=80;
      ut_sens_R(1)=20;
      mt_sens_R(1)=60;
      lc_sens_R(1)=100;
      median_sens_R(1)=100;
        abno_sens_count_R(1)=1;med_sens(1)=med_sens(1)+1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D2 SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
       else if (med_d2_amp_R<(.5*med_d2_amp_L))
              c6_sens_R(1)=20;
              c7_sens_R(1)=80;
              ut_sens_R(1)=20;
              mt_sens_R(1)=60;
              lc_sens_R(1)=100;
              median_sens_R(1)=100;
             abno_sens_count_R(1)=1;      med_sens(1)=med_sens(1)+1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D2 SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
           end
            
end   
  
 
  %ulner d5
 if (ul_lat_R>3.2)||(ul_amp_R<5)
      c8_sens_R(2)=100;
      lt_sens_R(2)=100;
      mc_sens_R(2)=100;
      ulner_sens_R(2)=100;
        
        abno_sens_count_R(2)=1;    uln_sens=uln_sens+1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'ULNER SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
     else if (ul_amp_R<(.5*ul_amp_L))
          c8_sens_R(2)=100;
          lt_sens_R(2)=100;
          mc_sens_R(2)=100;
          ulner_sens_R(2)=100;
          abno_sens_count_R(2)=1;  uln_sens=uln_sens+1;  
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'ULNER SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
         end
 end 
  

  % s- radial
 if (rad_lat_R>2.7)||(rad_amp_R<15)
      c6_sens_R(3)=60;
      c7_sens_R(3)=40;
      ut_sens_R(3)=60;
      mt_sens_R(3)=40;
      pc_sens_R(3)=100;
      radial_sens_R(3)=100;
      
         abno_sens_count_R(3)=1;  rad_sens=rad_sens+1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'RADIAL SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
         else if (rad_amp_R<(.5*rad_amp_L))
              c6_sens_R(3)=60;
              c7_sens_R(3)=40;
              ut_sens_R(3)=60;
              mt_sens_R(3)=40;
              pc_sens_R(3)=100;
              radial_sens_R(3)=100;
      
              abno_sens_count_R(3)=1;  rad_sens=rad_sens+1;   
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'RADIAL SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
             end
             
           
 end
  
 
  % LABC
   if (latante_lat_R>2.6)||(latante_amp_R<6.8)
      c6_sens_R(4)=100;
      ut_sens_R(4)=100;
      lc_sens_R(4)=100;
      labc_sens_R(4)=100; 

          abno_sens_count_R(4)=1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'LABC SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
      else if (latante_amp_R<(.5*latante_amp_L))
              c6_sens_R(4)=100;
              ut_sens_R(4)=100;
              lc_sens_R(4)=100;
              labc_sens_R(4)=100; 

            abno_sens_count_R(4)=1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'LABC SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
            end
   end 
  

  % MABC
  if (medante_lat_R>2.6)||(medante_amp_R<10)
      t1_sens_R(5)=100;
      lt_sens_R(5)=100;
      mc_sens_R(5)=100;
      mabc_sens_R(5)=100;
      
          abno_sens_count_R(5)=1;       
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MABC is affected');
          set(handles.edit_disp_result,'string',ts);
         else if (medante_amp_R<(.5*medante_amp_L))
              t1_sens_R(5)=100;
              lt_sens_R(5)=100;
              mc_sens_R(5)=100;
              mabc_sens_R(5)=100;

              abno_sens_count_R(5)=1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MABC SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
              end
     
  end  
  
 
  %MED D1
if (med_d1_lat_R>3.5)||(med_d1_amp_R<10)
      c6_sens_R(6)=100;
      ut_sens_R(6)=100;
      lc_sens_R(6)=100;
      median_sens_R(6)=100; 

          abno_sens_count_R(6)=1;    med_sens(2)=med_sens(2)+1;
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D1 SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
        else if (med_d1_amp_R<(.5*med_d1_amp_L))
              c6_sens_R(6)=100;
              ut_sens_R(6)=100;
              lc_sens_R(6)=100;
              median_sens_R(6)=100; 
             abno_sens_count_R(6)=1;  med_sens(2)=med_sens(2)+1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D1 SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
            end
            
             
end   
  


% MED D3
if (med_d3_lat_R>3.5)||(med_d3_amp_R<10)
    c6_sens_R(7)=10;
    c7_sens_R(7)=70;
    c8_sens_R(7)=20;
    ut_sens_R(7)=10;
    mt_sens_R(7)=70;
    lt_sens_R(7)=20;
         
         lc_sens_R(7)=80;
         mc_sens_R(7)=20;
         median_sens_R(7)=100; 
           abno_sens_count_R(7)=1;  med_sens(3)=med_sens(3)+1; 
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D3 SNAP is affected');
          set(handles.edit_disp_result,'string',ts);
         else if (med_d3_amp_R<(.5*med_d3_amp_L))
                c6_sens_R(7)=10;
                c7_sens_R(7)=70;
                c8_sens_R(7)=20;
                ut_sens_R(7)=10;
                mt_sens_R(7)=70;
                lt_sens_R(7)=20;

              abno_sens_count_R(7)=1;  med_sens(3)=med_sens(3)+1;   
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'MEDIAN D3 SNAP is asymmetrically reduced');
          set(handles.edit_disp_result,'string',ts);
             end
                          
end
abno_sens_count_R;
 if abno_sens_count_R==0
          ts=get(handles.edit_disp_result,'string');
          ts=strvcat(ts,'ALL THE SENSORY PARAMETERS ARE WITHIN NORMAL LIMITS');
          set(handles.edit_disp_result,'string',ts);
 end
 
%doubt
% if (nnz(abno_sens_count_L)==0)&&(nnz(abno_sens_count_R)==0)&&(7<no_of_days)&&(no_of_days<=11)
%           ts=('SINCE DAYS ELAPSED ARE LESS THAN 11, SENSORY PRAMETERS CHECK MAY GIVE WRONG RESULTS');
%           ts=strvcat(ts,'HENCE NO CONCLUSION CAN BE MADE FROM SNAP')
%           set(handles.edit_disp_result,'string',ts);
% 
% 
% end
             %-----------------------------------------------------------------------------------------------------------
             %             MOTOR LEFT SIDE
             %-----------------------------------------------------------------------------------------------------------
      ts=get(handles.edit_moto_results,'string');
      ts=strvcat(ts,'LEFT SIDE');
      set(handles.edit_moto_results,'string',ts);

for i=1:7
        c5_moto_L(i)=0 ;   
        c6_moto_L(i)=0;
        c7_moto_L(i)=0;
        c8_moto_L(i)=0;
        t1_moto_L(i)=0;

        ut_moto_L(i)=0;
        mt_moto_L(i)=0;
        lt_moto_L(i)=0;

        lc_moto_L(i)=0;
        pc_moto_L(i)=0;
        mc_moto_L(i)=0;
        
        c5_moto_R(i)=0;
        c6_moto_R(i)=0;
        c7_moto_R(i)=0;
        c8_moto_R(i)=0;
        t1_moto_R(i)=0;

        ut_moto_R(i)=0;
        mt_moto_R(i)=0;
        lt_moto_R(i)=0;

        lc_moto_R(i)=0;
        pc_moto_R(i)=0;
        mc_moto_R(i)=0;

        median_APB_moto_L(i)=0;
        ulner_ADM_moto_L(i)=0;
        radial_EIP_moto_L(i)=0;
        axill_delt_moto_L(i)=0;
        labc_bicep_moto_L(i)=0;
        suprascap_moto_L(i)=0;
        infrascap_moto_L(i)=0;

        median_APB_moto_R(i)=0;
        ulner_ADM_moto_R(i)=0;
        radial_EIP_moto_R(i)=0;
        axill_delt_moto_R(i)=0;
        labc_bicep_moto_R(i)=0;
        suprascap_moto_R(i)=0;
        infrascap_moto_R(i)=0;

        abno_moto_count_L(i)=0;
        abno_moto_count_R(i)=0;
end
med_moto=[0 0 0];uln_moto=0;rad_moto=0;
%MEDIAN APB
if (median_APB_lat_L>3.8)||(median_APB_amp_L<5)
        c8_moto_L(1)=20;
        t1_moto_L(1)=80;
        lt_moto_L(1)=100;
        lc_moto_L(1)=100;
        median_APB_moto_L(1)=100;     

           abno_moto_count_L(1)=1;  med_moto=med_moto+1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MEDIAN APB CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
        else if (median_APB_amp_L<(.5*median_APB_amp_R))
                c8_moto_L(1)=20;
                t1_moto_L(1)=80;
                lt_moto_L(1)=100;
                lc_moto_L(1)=100;
                median_APB_moto_L(1)=100;     
             abno_moto_count_L(1)=1;    med_moto=med_moto+1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MEDIAN APB CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
            end
      
end

%ULNER ADM
if (ulner_ADM_lat_L>3)||(ulner_ADM_amp_L<5)
    c8_moto_L(2)=100;
    lt_moto_L(2)=100;
    mc_moto_L(2)=100;
    ulner_ADM_moto_L(2)=100;     

       abno_moto_count_L(2)=1;     uln_moto=uln_moto+1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'ULNER ADM CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
    else if (ulner_ADM_amp_L<(.5*ulner_ADM_amp_R))
            c8_moto_L(2)=100;
            lt_moto_L(2)=100;
            mc_moto_L(2)=100;
            ulner_ADM_moto_L(2)=100;     
         abno_moto_count_L(2)=1;   uln_moto=uln_moto+1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'ULNER ADM CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
        end
      
end 
  
%RADIAL EIP
if (radial_EIP_lat_L>2.9)||(radial_EIP_amp_L<5)
    c8_moto_L(3)=100;
    lt_moto_L(3)=100;
    pc_moto_L(3)=100;
    radial_EIP_moto_L(3)=0;

        abno_moto_count_L(3)=1;  rad_moto=rad_moto+1;  
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'RADIAL EIP CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
        else if (radial_EIP_amp_L<(.5*radial_EIP_amp_R))
                    c8_moto_L(3)=100;
                    lt_moto_L(3)=100;
                    pc_moto_L(3)=100;
                    radial_EIP_moto_L(3)=0;
             abno_moto_count_L(3)=1; rad_moto=rad_moto+1;  
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'RADIAL EIP CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
            end
           
end 
  
  
% AXILLARY DELTOID
if (axill_delt_lat_L>5)||(axill_delt_amp_L<5)
    c5_moto_L(4)=50;
    c6_moto_L(4)=50;
    ut_moto_L(4)=100;
    pc_moto_L(4)=100;
    axill_delt_moto_L(4)=100;
 
         abno_moto_count_L(4)=1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'AXILLARY DELTOID CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
        else if (axill_delt_amp_L<(.5*axill_delt_amp_R))
                c5_moto_L(4)=50;
                c6_moto_L(4)=50;
                ut_moto_L(4)=100;
                pc_moto_L(4)=100;
                axill_delt_moto_L(4)=100;
             abno_moto_count_L(4)=1;     
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'AXILLARY DELTOID  CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
             end
end 

% musculocutaneous BICEPS
if (labc_bicep_lat_L>5.7)||(labc_bicep_amp_L<5)
    c5_moto_L(5)=50;
    c6_moto_L(5)=50;
    ut_moto_L(5)=100;
    lc_moto_L(5)=100;
    labc_bicep_moto_L(5)=100;

     abno_moto_count_L(5)=1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MUSCULOCUTANEOUS BICEPS CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
     else if (labc_bicep_amp_L<(.5*labc_bicep_amp_R))
            c5_moto_L(5)=50;
            c6_moto_L(5)=50;
            ut_moto_L(5)=100;
            lc_moto_L(5)=100;
            labc_bicep_moto_L(5)=100;
         abno_moto_count_L(5)=1;  
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MUSCULOCUTANEOUS BICEPS  CMAP is asymmetrically reduced ');
          set(handles.edit_moto_results,'string',ts);
          end
end 
  
% SUPRASCAPULAR
if (suprascap_lat_L>3.7)||(suprascap_amp_L<5)||(infrascap_lat_L>4.2)||(infrascap_amp_L<5)
    c5_moto_L(6)=50;
    c6_moto_L(6)=50;
    %c7_moto_L(6)=33;
    ut_moto_L(6)=100;
    suprascap_moto_L(6)=100;

   abno_moto_count_L(6)=1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'SUPRASCAPULAR CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
      else if (suprascap_amp_L<(.5*suprascap_amp_R))||(infrascap_amp_L<(.5*infrascap_amp_R))
                c5_moto_L(6)=50;
                c6_moto_L(6)=50;
                %c7_moto_L(6)=33;
                ut_moto_L(6)=100;
                suprascap_moto_L(6)=100;
             abno_moto_count_L(6)=1; 
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'SUPRASCAPULAR CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
          end
end 
  
         abno_moto_count_L;
           if abno_moto_count_L==0
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'ALL THE MOTOR PARAMETERS ARE WITHIN NORMAL LIMITS');
          set(handles.edit_moto_results,'string',ts);
           end




             %-----------------------------------------------------------------------------------------------------------
             %             MOTOR RIGHT SIDE
             %-----------------------------------------------------------------------------------------------------------

      ts=get(handles.edit_moto_results,'string');
      ts=strvcat(ts,'  ');
      ts=strvcat(ts,'RIGHT SIDE');
      set(handles.edit_moto_results,'string',ts);

 

%MEDIAN APB
if (median_APB_lat_R>3.8)||(median_APB_amp_R<5)
    c8_moto_R(1)=20;
    t1_moto_R(1)=80;
    lt_moto_R(1)=100;
    lc_moto_R(1)=100;
    median_APB_moto_R(1)=100;     

             abno_moto_count_R(1)=1; med_moto=med_moto+1; 
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MEDIAN APB CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
         else if (median_APB_amp_R<(.5*median_APB_amp_L))
                c8_moto_R(1)=20;
                t1_moto_R(1)=80;
                lt_moto_R(1)=100;
                lc_moto_R(1)=100;
                median_APB_moto_R(1)=100;     
             abno_moto_count_R(1)=1;     med_moto=med_moto+1; 
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MEDIAN APB CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
             end
    
     
end 

%ULNER ADM
if (ulner_ADM_lat_R>3)||(ulner_ADM_amp_R<5)
    c8_moto_R(2)=100;
    lt_moto_R(2)=100;
    mc_moto_R(2)=100;
    ulner_ADM_moto_R(2)=100;     

       abno_moto_count_R(2)=1;   uln_moto=uln_moto+1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'ULNER ADM CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
     else if (ulner_ADM_amp_R<(.5*ulner_ADM_amp_L))
            c8_moto_R(2)=100;
            lt_moto_R(2)=100;
            mc_moto_R(2)=100;
            ulner_ADM_moto_R(2)=100;     
         abno_moto_count_R(2)=1;  uln_moto=uln_moto+1;  
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'ULNER ADM CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
         end
      
end
  
%RADIAL EIP
if (radial_EIP_lat_R>2.9)||(radial_EIP_amp_R<5)
    c8_moto_R(3)=100;
    lt_moto_R(3)=100;
    pc_moto_R(3)=100;
    radial_EIP_moto_R(3)=0;
        abno_moto_count_R(3)=1;  rad_moto=rad_moto+1;  
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'RADIAL EIP CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
        else if (radial_EIP_amp_R<(.5*radial_EIP_amp_L))
                c8_moto_R(3)=100;
                lt_moto_R(3)=100;
                pc_moto_R(3)=100;
                radial_EIP_moto_R(3)=0;
             abno_moto_count_R(3)=1;   rad_moto=rad_moto+1;  
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'RADIAL EIP CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
             end
            
end 
  
  
% AXILLARY DELTOID
if (axill_delt_lat_R>5)||(axill_delt_amp_R<5)
    c5_moto_R(4)=50;
    c6_moto_R(4)=50;
    ut_moto_R(4)=100;
    pc_moto_R(4)=100;
    axill_delt_moto_R(4)=100;

         abno_moto_count_R(4)=1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'AXILLARY DELTOID CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
         else if (axill_delt_amp_R<(.5*axill_delt_amp_L))
                c5_moto_R(4)=50;
                c6_moto_R(4)=50;
                ut_moto_R(4)=100;
                pc_moto_R(4)=100;
                axill_delt_moto_R(4)=100;
             abno_moto_count_R(4)=1; 
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'AXILLARY DELTOID  CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
              end
end 

% LABC BICEPS
if (labc_bicep_lat_R>5.7)||(labc_bicep_amp_R<5)
    c5_moto_R(5)=50;
    c6_moto_R(5)=50;
    ut_moto_R(5)=100;
    lc_moto_R(5)=100;
    labc_bicep_moto_R(5)=100;

     abno_moto_count_R(5)=1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MUSCULOCUTANEOUS BICEPS CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
     else if (labc_bicep_amp_R<(.5*labc_bicep_amp_L))
            c5_moto_R(5)=50;
            c6_moto_R(5)=50;
            ut_moto_R(5)=100;
            lc_moto_R(5)=100;
            labc_bicep_moto_R(5)=100;
         abno_moto_count_R(5)=1;    
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'MUSCULOCUTANEOUS  CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
          end
end 
  
% SUPRASCAPULAR
if (suprascap_lat_R>3.7)||(suprascap_amp_R<5)||(infrascap_lat_R>4.2)||(infrascap_amp_R<5)

    c5_moto_R(6)=50;
    c6_moto_R(6)=50;
 %   c7_moto_R(6)=33;
    ut_moto_R(6)=100;
    suprascap_moto_R(6)=100;

   abno_moto_count_R(6)=1;
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'SUPRASCAPULAR CMAP is affected');
          set(handles.edit_moto_results,'string',ts);
      else if (suprascap_amp_R<(.5*suprascap_amp_L))||(infrascap_amp_R<(.5*infrascap_amp_L))
                c5_moto_R(6)=50;
                c6_moto_R(6)=50;
               % c7_moto_R(6)=33;
                ut_moto_R(6)=100;
                suprascap_moto_R(6)=100;
             abno_moto_count_R(6)=1;         
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'SUPRASCAPULAR CMAP is asymmetrically reduced');
          set(handles.edit_moto_results,'string',ts);
          end
end 
   
           abno_moto_count_R;
            if abno_moto_count_R==0
          ts=get(handles.edit_moto_results,'string');
          ts=strvcat(ts,'ALL THE MOTOR PARAMETERS ARE WITHIN NORMAL LIMITS');
          set(handles.edit_moto_results,'string',ts);
                            
            end
%================================================================
%      MAIN PROGRAM                                   
%================================================================
   left_side=0;
   right_side=0;
   sens_L=0;
   moto_L=0;
   sens_R=0;
   moto_R=0;
   both_sens_moto_L=0;
   both_sens_moto_R=0;
   sensory_para=[];
   motor_para=[];
   
 sens_abno_med_L=abno_sens_count_L(1,1)|abno_sens_count_L(1,6)|abno_sens_count_L(1,7);
 sens_abno_med_R=abno_sens_count_R(1,1)|abno_sens_count_R(1,6)|abno_sens_count_R(1,7);
 sens_abno_rad_L=abno_sens_count_L(1,3);
 sens_abno_rad_R=abno_sens_count_R(1,3);
 sens_abno_uln_L=abno_sens_count_L(1,2);
 sens_abno_uln_R=abno_sens_count_R(1,2);
 
 moto_abno_med_L=abno_moto_count_L(1,1);
 moto_abno_med_R=abno_moto_count_R(1,1);
 moto_abno_rad_L=abno_moto_count_L(1,3);
 moto_abno_rad_R=abno_moto_count_R(1,3);
 moto_abno_uln_L=abno_moto_count_L(1,2);
 moto_abno_uln_R=abno_moto_count_R(1,2);
  
 med_L=sens_abno_med_L|moto_abno_med_L;
 med_R=sens_abno_med_R|moto_abno_med_R;
 
 rad_L=sens_abno_rad_L|moto_abno_rad_L;
 rad_R=sens_abno_rad_R|moto_abno_rad_R;
 
 uln_L=sens_abno_uln_L|moto_abno_uln_L;
 uln_R=sens_abno_uln_R|moto_abno_uln_R;
 
 mabc_L=abno_sens_count_L(1,5);
 mabc_R=abno_sens_count_R(1,5);
 labc_L=abno_sens_count_L(1,4);
 labc_R=abno_sens_count_R(1,4);
  
 axil_L=abno_moto_count_L(1,4);
 axil_R=abno_moto_count_R(1,4);

 musc_L=abno_moto_count_L(1,5);
 musc_R=abno_moto_count_R(1,5);

 supra_L=abno_moto_count_L(1,6)|abno_moto_count_L(1,7);
 supra_R=abno_moto_count_R(1,6)|abno_moto_count_R(1,7);

 
 left=0;
 right=0;
 abno_moto_count_L;
 abno_L=med_L+uln_L+rad_L+abno_sens_count_L(1,4)+abno_moto_count_L(1,4)+abno_sens_count_L(1,5)+abno_moto_count_L(1,6);
 abno_R=med_R+uln_R+rad_R+abno_sens_count_R(1,4)+abno_moto_count_R(1,4)+abno_sens_count_R(1,5)+abno_moto_count_R(1,6);
left=abno_L;
right=abno_R; 

if (right>1)&&(left>1)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'SINCE  BOTH LIMBS ARE AFFECTED IT IS NOT UNILATERAL PLEXOPATHY, FURTHER ANALYSIS IS REQUIRED');
          set(handles.edit32,'string',ts);

     
else 
    if (right==1)&&(left==1)
        if (med_L)&&(med_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL MEDIAN NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
        if (uln_L)&&(uln_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL ULNER NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
        if (rad_L)&&(rad_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL RADIAL NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
        if (mabc_L)&&(mabc_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL MABC NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
        if (labc_L)&&(labc_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL LABC NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
        if (axil_L)&&(axil_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL AXILLARY NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
        if (musc_L)&&(musc_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL MUSCULOCUTANEOUS NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
        if (supra_L)&&(supra_R)&&(abno_L==1)&&(abno_R==1)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,'BILATERAL SUPRASCAPULAR NEUROPATHY');
              set(handles.edit32,'string',ts);return;
        end
    end
      if (left==1) && (right>1)
         abno_moto_count_L=[0 0 0 0 0 0 0];abno_sens_count_L=[0 0 0 0 0 0 0];
      end 
     
      if (right==1) && (left>1)
          abno_moto_count_R=[0 0 0 0 0 0 0];abno_sens_count_R=[0 0 0 0 0 0 0];
      end
     
%                                 OVERALL ANALYSIS STARTED          
%             *****************************************************         
%____________________________________________________________________   
%if both limbs are not affected , we wanted to know which of the limbs are affected.LEFT OR RIGHT??   
    if nnz(abno_sens_count_R>0)||nnz(abno_moto_count_R>0)
                    right_side=1;
                    abno_sens_count_L=0;
                    abno_moto_count_L=0;
                        c6_sens=c6_sens_R;
                        c7_sens=c7_sens_R;
                        c8_sens=c8_sens_R;
                        t1_sens=t1_sens_R;

                        ut_sens=ut_sens_R;
                        mt_sens=mt_sens_R;
                        lt_sens=lt_sens_R;

                        lc_sens=lc_sens_R;
                        pc_sens=pc_sens_R;
                        mc_sens=mc_sens_R;

                                median_sens=median_sens_R;
                                radial_sens=radial_sens_R;
                                labc_sens=labc_sens_R;
                                ulner_sens=ulner_sens_R;
                                mabc_sens=mabc_sens_R;
                                
                        c5_moto=c5_moto_R;
                        c6_moto=c6_moto_R;
                        c7_moto=c7_moto_R;
                        c8_moto=c8_moto_R;
                        t1_moto=t1_moto_R;

                        ut_moto=ut_moto_R;
                        mt_moto=mt_moto_R;
                        lt_moto=lt_moto_R;

                        lc_moto=lc_moto_R;
                        pc_moto=pc_moto_R;
                        mc_moto=mc_moto_R;

                                median_APB_moto=median_APB_moto_R;
                                ulner_ADM_moto=ulner_ADM_moto_R;
                                radial_EIP_moto=radial_EIP_moto_R;
                                axill_delt_moto=axill_delt_moto_R;
                                labc_bicep_moto=labc_bicep_moto_R;
                                suprascap_moto=suprascap_moto_R;   
 
%                                 OBSERVATION -I                               
%    ____________________________________________________________________   

                     if nnz(abno_sens_count_R>0)&&nnz(abno_moto_count_R>0)
                           both_sens_moto_R=1;
                           sensory_para=abno_sens_count_R;
                           motor_para=abno_moto_count_R;
                     else
                     if nnz(abno_sens_count_R>0)&&nnz(abno_moto_count_R==0)
                            sens_L=1;
                            sensory_para=abno_sens_count_R;
                     end
                      if nnz(abno_sens_count_R==0)&&nnz(abno_moto_count_R>0)
                              moto_L=1;
                              motor_para=abno_moto_count_R;
                      end
                     end
 else
                     
      if nnz(abno_sens_count_L>0)||nnz(abno_moto_count_L>0)
                left_side=1;
                  abno_sens_count_R=0;
                  abno_moto_count_R=0;
                                    
                      c6_sens=c6_sens_L;
                      c7_sens=c7_sens_L;
                      c8_sens=c8_sens_L;
                      t1_sens=t1_sens_L;

               ut_sens=ut_sens_L;
                mt_sens=mt_sens_L;
                 lt_sens=lt_sens_L;

                                            lc_sens=lc_sens_L;
                                            pc_sens=pc_sens_L;
                                            mc_sens=mc_sens_L;

                                                    median_sens=median_sens_L;
                                                    radial_sens=radial_sens_L;
                                                    labc_sens=labc_sens_L;
                                                    ulner_sens=ulner_sens_L;
                                                    mabc_sens=mabc_sens_L;
                                                    
                                            c5_moto=c5_moto_L;
                                            c6_moto=c6_moto_L;
                                            c7_moto=c7_moto_L;
                                            c8_moto=c8_moto_L;
                                            t1_moto=t1_moto_L;

                                            ut_moto=ut_moto_L;
                                            mt_moto=mt_moto_L;
                                            lt_moto=lt_moto_L;

                                            lc_moto=lc_moto_L;
                                            pc_moto=pc_moto_L;
                                            mc_moto=mc_moto_L;

                                                    median_APB_moto=median_APB_moto_L;
                                                    ulner_ADM_moto=ulner_ADM_moto_L;
                                                    radial_EIP_moto=radial_EIP_moto_L;
                                                    axill_delt_moto=axill_delt_moto_L;
                                                    labc_bicep_moto=labc_bicep_moto_L;
                                                    suprascap_moto=suprascap_moto_L;     

                                                    
                                    
                             if  nnz(abno_sens_count_L>0)&&nnz(abno_moto_count_L>0)                                             
                                              both_sens_moto_L=1;
                                              sensory_para=abno_sens_count_L;
                                              motor_para=abno_moto_count_L;
                             else                 
                                     if nnz(abno_sens_count_L>0)&&nnz(abno_moto_count_L==0);                                                                              
                                                  sens_L=1;
                                                  sensory_para=abno_sens_count_L;
                                     end
                                     if nnz(abno_sens_count_L==0)&&nnz(abno_moto_count_L>0)
                                             moto_L=1;
                                             motor_para=abno_moto_count_L;
                                     end
                             end
                      end  
                 end
%____________________________________________________________________________________________________ 
     if (left_side==1)   
       if (med_L==1)&&(sum(abno_sens_count_L(1,2:5))==0)&&(sum(abno_moto_count_L(1,2:6))==0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT MEDIAN NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end 
       if (uln_L==1)&&(sum(abno_sens_count_L(1,3:7))==0)&&(abno_sens_count_L(1,1)==0)&&(sum(abno_moto_count_L(1,3:6))==0)&&(abno_moto_count_L(1,1)==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT ULNER NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end
       if (rad_L==1)&&(sum(abno_sens_count_L(1,4:7))==0)&&(sum(abno_sens_count_L(1,1:2))==0)&&(sum(abno_moto_count_L(1,4:6))==0)&&(sum(abno_moto_count_L(1,1:2))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT RADIAL NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_sens_count_L(1,4)==1)&&(sum(abno_sens_count_L(1,5:7))==0)&&(sum(abno_sens_count_L(1,1:3))==0)&&(sum(abno_moto_count_L(1,1:6))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT LATERAL ANTI BRACHIAL CUTANEOUS NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_sens_count_L(1,5)==1)&&(sum(abno_sens_count_L(1,6:7)==0))&&(sum(abno_sens_count_L(1,1:4))==0)&&(sum(abno_moto_count_L(1,1:6))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT MUSCULOCUTANEOUS NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_moto_count_L(1,4)==1)&&(sum(abno_moto_count_L(1,1:3))==0)&&(sum(abno_moto_count_L(1,5:6))==0)&&(sum(abno_sens_count_L(1,1:7))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT AXILLARY NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_moto_count_L(1,5)==1)&&(sum(abno_moto_count_L(1,1:4))==0)&&(abno_moto_count_L(1,6)==0)&&(sum(abno_sens_count_L(1,1:7))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT MUSCULOCUTANEOUS NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_moto_count_L(1,6)==1)&&(sum(abno_moto_count_L(1,1:5))==0)&&(sum(abno_sens_count_L(1,1:7))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'LEFT SUPRASCAPULAR NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
     end
   
   if (right_side==1)     
       if ((med_R==1)&&(sum(abno_sens_count_R(1,2:5))==0)&&(sum(abno_moto_count_R(1,2:6))==0))
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'RIGHT MEDIAN NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end 
       if (uln_R==1)&&(sum(abno_sens_count_R(1,3:7))==0)&&(abno_sens_count_R(1,1)==0)&&(sum(abno_moto_count_R(1,3:6))==0)&&(abno_moto_count_R(1,1)==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'RIGHT ULNER NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end
       if (rad_R==1)&&(sum(abno_sens_count_R(1,4:7))==0)&&(sum(abno_sens_count_R(1,1:2))==0)&&(sum(abno_moto_count_R(1,4:6))==0)&&(sum(abno_moto_count_R(1,1:2))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'RIGHT RADIAL NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_sens_count_R(1,4)==1)&&(sum(abno_sens_count_R(1,5:7)==0))&&(sum(abno_sens_count_R(1,1:3))==0)&&(sum(abno_moto_count_R(1,1:6))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'RIGHT LATERAL ANTI BRACHIAL CUTANEOUS NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_sens_count_R(1,5)==1)&&(sum(abno_sens_count_R(1,6:7))==0)&&(sum(abno_sens_count_R(1,1:4))==0)&&(sum(abno_moto_count_R(1,1:6))==0)
           ts=get(handles.edit32,'string');
           ts=strvcat(ts,'RIGHT MUSCULOCUTANEOUS NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_moto_count_R(1,4)==1)&&(sum(abno_moto_count_R(1,1:3))==0)&&(sum(abno_moto_count_R(1,5:6))==0)&&(sum(abno_sens_count_R(1,1:7))==0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'RIGHT AXILLARY NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_moto_count_R(1,5)==1)&&(sum(abno_moto_count_R(1,1:4))==0)&&(abno_moto_count_R(1,6)==0)&&(sum(abno_sens_count_R(1,1:7))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'RIGHT MUSCULOCUTANEOUS NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
       if (abno_moto_count_R(1,6)==1)&&(sum(abno_moto_count_R(1,1:5))==0)&&(sum(abno_sens_count_R(1,1:7))==0)
           ts=get(handles.edit32,'string');
          ts=strvcat(ts,'RIGHT SUPRASCAPULAR NEUROPATHY');
          set(handles.edit32,'string',ts);return 
       end        
   end
        ela_days=get(handles.edit_days,'string');
        ela_days=str2num(ela_days);
        if ela_days<=11
        errordlg('SINCE NUMBER OF DAYS ELAPSED IS LESS THAN 11, NCV NEEDS TO BE REPEATED AFTER 11th DAY FOR VALID RESULTS');
        end

  
            if (isempty(sensory_para)&&isempty(motor_para))
                ts='ALL PARAMETERS ARE NORMAL';
               set(handles.edit32,'string',ts);return;
            end
   
%______________________________________________________________________________________________________________________

         %if suprascapular nerve is affected
         if (motor_para(6)==1)
        
                       %for roots
                       root_count=0;
                       trunk_count=0; 
                       
 %------------- RULE-I CHECK------------------------  
                       %rule1
                       if (nnz(c5_moto)>0||nnz(c6_sens)>0||nnz(c6_moto)>0)&&(nnz(t1_sens)>0||nnz(t1_moto)>0)
                           root_count=1;
                       end  
                       if (nnz(ut_sens)>0||nnz(ut_moto)>0)&&(nnz(lt_sens)>0||nnz(lt_moto)>0)
                          trunk_count=1;
                       end
 %------------------------------------------------                      
 %variables for abs and sum check           
              for i=1:7
                      c6_100s(i)=0;
                      c7_100s(i)=0;
                      c8_100s(i)=0;
                      t1_100s(i)=0;
                      ut_100s(i)=0;
                      mt_100s(i)=0;
                      lt_100s(i)=0;
                      lc_100s(i)=0;
                      pc_100s(i)=0;
                      mc_100s(i)=0;
                      
                      
                      c5_100m(i)=0;
                      c6_100m(i)=0;
                      c7_100m(i)=0;
                      c8_100m(i)=0;
                      t1_100m(i)=0;
                      ut_100m(i)=0;
                      mt_100m(i)=0;
                      lt_100m(i)=0;
                      lc_100m(i)=0;
                      pc_100m(i)=0;
                      mc_100m(i)=0;

                      end  
                      for i=1:5
                          root_sum(i)=0;
                      end
                      for i=1:3
                          trunk_sum(i)=0;
                      end
                      for i=1:3
                          cord_sum(i)=0;
                      end
                          
                    
   %ABSOLUTE PERCENTAGE CHECK----------------------------------------
                      for i=1:7
                          if c6_sens(i)>=100
                              c6_100s(i)=1;
                          end
                          if c7_sens(i)>=100
                              c7_100s(i)=1;
                          end
                          if c8_sens(i)>=100
                              c8_100s(i)=1;
                          end
                          if t1_sens(i)>=100
                              t1_100s(i)=1;
                          end
                          if ut_sens(i)>=100
                              ut_100s(i)=1;
                          end
                          if mt_sens(i)>=100
                              mt_100s(i)=1;
                          end
                          if lt_sens(i)>=100
                              lt_100s(i)=1;
                          end
                          if c5_moto(i)>=100
                              c5_100m(i)=1;
                          end
                          if c6_moto(i)>=100
                              c6_100m(i)=1;
                          end
                          if c7_moto(i)>=100
                              c7_100m(i)=1;
                          end
                          if c8_moto(i)>=100
                              c8_100m(i)=1;
                          end
                          if t1_moto(i)>=100
                              t1_100m(i)=1;
                          end
                          if ut_moto(i)>=100
                              ut_100m(i)=1;
                          end
                          if mt_moto(i)>=100
                              mt_100m(i)=1;
                          end
                          if lt_moto(i)>=100
                              lt_100m(i)=1;
                          end
                      end

  c5=0;c6=0;c7=0;c8=0;t1=0;ut=0;mt=0;lt=0;
                      if nnz(c5_100m)>0                                             
                        c5=c5+1;
                      end    
                      if ((nnz(c6_100s)>0)||(nnz(c6_100m)>0))
                        c6=c6+1;
                      end
                      if ((nnz(c7_100s)>0)||(nnz(c7_100m)>0))
                         c7=c7+1;
                      end
                      if ((nnz(c8_100s)>0)||(nnz(c8_100m)>0))
                         c8=c8+1;
                      end
                      if ((nnz(t1_100s)>0)||(nnz(t1_100m)>0))
                         t1=t1+1;
                      end
                      if ((nnz(ut_100s)>0)||(nnz(ut_100m)>0))
                         ut=ut+1;
                      end
                      if ((nnz(mt_100s)>0)||(nnz(mt_100m)>0))
                         mt=mt+1;
                      end
                      if ((nnz(lt_100s)>0)||(nnz(lt_100m)>0))
                         lt=lt+1;
                      end       %ABSOLUTE PERCENTAGE CHECK over for supra unaffected
%-------------------------------------------------------------------------

%------------------------SUM PARAMETERS CHECK------------------------------
                     
               for i=1:7      
                    root_sum(1)=root_sum(1)+c5_moto(i);
                    root_sum(2)=root_sum(2)+c6_sens(i)+c6_moto(i);
                    root_sum(3)=root_sum(3)+c7_sens(i)+c7_moto(i);
                    root_sum(4)=root_sum(4)+c8_sens(i)+c8_moto(i);
                    root_sum(5)=root_sum(5)+t1_sens(i)+t1_moto(i);
                       trunk_sum(1)=trunk_sum(1)+ut_sens(i)+ut_moto(i);
                       trunk_sum(2)=trunk_sum(2)+mt_sens(i)+mt_moto(i);
                       trunk_sum(3)=trunk_sum(3)+lt_sens(i)+lt_moto(i);
               end  
               
               r=sort(root_sum,'descend');
               t=sort(trunk_sum,'descend');
               
             
             for i=1:5
                       if (r(i)==root_sum(1))&&(r(i)>=100)
                          c5=c5+1;
                      end
                       if (r(i)==root_sum(2))&&(r(i)>=100)
                          c6=c6+1;
                      end
                       if (r(i)==root_sum(3))&&(r(i)>=100)
                          c7=c7+1;
                      end
                       if (r(i)==root_sum(4))&&(r(i)>=100)
                          c8=c8+1;
                      end
                       if (r(i)==root_sum(5))&&(r(i)>=100)
                          t1=t1+1;
                       end
             end
             
             for i=1:3                     
                       if (t(i)==trunk_sum(1))&&(t(i)>=100)
                          ut=ut+1;
                      end
                       if (t(i)==trunk_sum(2))&&(t(i)>=100)
                          mt=mt+1;
                      end
                       if (t(i)==trunk_sum(3))&&(t(i)>=100)
                          lt=lt+1;
                       end
             end
%---------------------------------------------------------sumpara check over for supra unaffected
%---------------- ,now conclusion for supra unaffected, sens normal

 if (nnz(abno_sens_count_L)==0)&&(nnz(abno_sens_count_R)==0)
          ts=get(handles.edit32,'string');
          ts1=strvcat(ts,'PRE GANGLIONIC ');
          set(handles.edit32,'string',ts1);
         
      if (c5~=0)&&(t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'ALL ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c5~=0)&&(c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 C7 C8 ROOTS');
          set(handles.edit32,'string',ts); 
      elseif (c5~=0)&&(c7~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 C7 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c5~=0)&&(c6~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)&&(t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 C8 T1 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)&&(c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C6 C7 C8 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)&&(c7~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C6 C7 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c7~=0)&&(t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C7 C8 T1 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c7~=0)&&(c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C7 C8 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c5~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 ROOT');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C6 ROOT');
          set(handles.edit32,'string',ts);
      elseif (c7~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C7 ROOT');
          set(handles.edit32,'string',ts);
      elseif (c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C8 ROOT');
          set(handles.edit32,'string',ts);
      elseif (t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'T1 ROOT');
          set(handles.edit32,'string',ts);
   end  
    if left_side==1
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      LEFT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    else
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      RIGHT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    end
 
    
        if ((left==1) && (right>1))||((left>1) && (right==1))
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'WITH ADDITIONAL MONO NEUROPATHY IN OPPOSITE  SIDE');
          set(handles.edit32,'string',ts);
        end
%----------------------------------------pregangli over--supra affe,sens normal over             
%--------------------now supra affected, post gan/sens abnormal
 else
    root_all_sum=sum(root_sum(1,:));
    trunk_all_sum=sum(trunk_sum(1,:));
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'POST GANGLIONIC  ');
          set(handles.edit32,'string',ts);
    root_output=[];  trunk_output=[];      


   if (root_all_sum>=trunk_all_sum)                   
      if (c5~=0)&&(t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'ALL ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c5~=0)&&(c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 C7 C8 ROOTS');
          set(handles.edit32,'string',ts); 
      elseif (c5~=0)&&(c7~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 C7 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c5~=0)&&(c6~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)&&(t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 C6 C8 T1 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)&&(c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C6 C7 C8 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)&&(c7~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C6 C7 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c7~=0)&&(t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C7 C8 T1 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c7~=0)&&(c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C7 C8 ROOTS');
          set(handles.edit32,'string',ts);
      elseif (c5~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C5 ROOT');
          set(handles.edit32,'string',ts);
      elseif (c6~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C6 ROOT');
          set(handles.edit32,'string',ts);
      elseif (c7~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C7 ROOT');
          set(handles.edit32,'string',ts);
      elseif (c8~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'C8 ROOT');
          set(handles.edit32,'string',ts);
      elseif (t1~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'T1 ROOT');
          set(handles.edit32,'string',ts);
      end  
         
   else 
      if (ut~=0)&&(lt~=0)
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'ALL TRUNKS ');
          set(handles.edit32,'string',ts);
      end
         
   end
       if left_side==1
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      LEFT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    else
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      RIGHT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    end
        if ((left==1) && (right>1))||((left>1) && (right==1))
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'WITH ADDITIONAL MONO NEUROPATHY IN OPPOSITE  SIDE');
          set(handles.edit32,'string',ts);
        end

 end %end of supra affected analysis               
%=======================================================================================
 %if supra is UNAFFECTED         
else 
      
                   for i=1:7
                      c6_100s(i)=0;
                      c7_100s(i)=0;
                      c8_100s(i)=0;
                      t1_100s(i)=0;
                      ut_100s(i)=0;
                      mt_100s(i)=0;
                      lt_100s(i)=0;
                      lc_100s(i)=0;
                      pc_100s(i)=0;
                      mc_100s(i)=0;
                      
                      
                      c5_100m(i)=0;
                      c6_100m(i)=0;
                      c7_100m(i)=0;
                      c8_100m(i)=0;
                      t1_100m(i)=0;
                      ut_100m(i)=0;
                      mt_100m(i)=0;
                      lt_100m(i)=0;
                      lc_100m(i)=0;
                      pc_100m(i)=0;
                      mc_100m(i)=0;

                      end  
                      for i=1:5
                          root_sum(i)=0;
                      end
                      for i=1:3
                          trunk_sum(i)=0;
                      end
                      for i=1:3
                          cord_sum(i)=0;
                      end
             
                      for i=1:7
                          if c7_sens(i)>=100
                              c7_100s(i)=1;
                          end
                          if c8_sens(i)>=100
                              c8_100s(i)=1;
                          end
                          if t1_sens(i)>=100
                              t1_100s(i)=1;
                          end
                          if mt_sens(i)>=100
                              mt_100s(i)=1;
                          end
                          if lt_sens(i)>=100
                              lt_100s(i)=1;
                          end
                          if lc_sens(i)>=100
                              lc_100s(i)=1;
                          end
                          if pc_sens(i)>=100
                              pc_100s(i)=1;
                          end
                          if mc_sens(i)>=100
                              mc_100s(i)=1;
                          end
                          
                          if c7_moto(i)>=100
                              c7_100m(i)=1;
                          end
                          if c8_moto(i)>=100
                              c8_100m(i)=1;
                          end
                          if t1_moto(i)>=100
                              t1_100m(i)=1;
                          end
                          if mt_moto(i)>=100
                              mt_100m(i)=1;
                          end
                          if lt_moto(i)>=100
                              lt_100m(i)=1;
                          end
                          if lc_moto(i)>=100
                              lc_100m(i)=1;
                          end
                          if pc_moto(i)>=100
                              pc_100m(i)=1;
                          end
                          if mc_moto(i)>=100
                              mc_100m(i)=1;
                          end
                      end
                      
  c7=0;c8=0;t1=0;ut=0;mt=0;lt=0; lc=0;pc=0;mc=0;   

 %----------------------------------------------------------------------------------------
 %------------------ABSOLUTE VALUE CHECK  for supra affected
 
                      if ((nnz(c7_100s)>0)||(nnz(c7_100m)>0))
                         c7=c7+1;
                      end
                      if ((nnz(c8_100s)>0)||(nnz(c8_100m)>0))
                        c8=c8+1;
                      end
                      if ((nnz(t1_100s)>0)||(nnz(t1_100m)>0))
                        t1=t1+1;
                      end
                      
                      
                      if ((nnz(mt_100s)>0)||(nnz(mt_100m)>0))
                         mt=mt+1;
                      end
                      if ((nnz(lt_100s)>0)||(nnz(lt_100m)>0))
                          lt=lt+1;
                      end
                      if ((nnz(lc_100s)>0)||(nnz(lc_100m)>0))
                         lc=lc+1;
                      end
                      if ((nnz(pc_100s)>0)||(nnz(pc_100m)>0))
                         pc=pc+1;
                      end
                      if ((nnz(mc_100s)>0)||(nnz(mc_100m)>0))
                         mc=mc+1;
                      end
 
%--------------------------------------------------------------------------------
%----------SUM PARAMETERS CHECK for supra unaffected--------------                                 
                for i=1:7
                    root_sum(1)=root_sum(1)+c5_moto(i);
                    root_sum(2)=root_sum(2)+c6_sens(i)+c6_moto(i);
                    root_sum(3)=root_sum(3)+c7_sens(i)+c7_moto(i);
                    root_sum(4)=root_sum(4)+c8_sens(i)+c8_moto(i);
                    root_sum(5)=root_sum(5)+t1_sens(i)+t1_moto(i);
                    trunk_sum(1)=0;
                    trunk_sum(2)=trunk_sum(2)+mt_sens(i)+mt_moto(i);
                    trunk_sum(3)=trunk_sum(3)+lt_sens(i)+lt_moto(i);
                           cord_sum(1)=cord_sum(1)+lc_sens(i)+lc_moto(i);
                           cord_sum(2)=cord_sum(2)+pc_sens(i)+pc_moto(i);
                           cord_sum(3)=cord_sum(3)+mc_sens(i)+mc_moto(i);
                
                end
%--------------------to find the sum parameters in the sorted manner
               r=sort(root_sum,'descend');
               t=sort(trunk_sum,'descend');
               s=sort(cord_sum,'descend');
             abno_trunk_count(1,1:3)=0;
             abno_cord_count(1,1:3)=0;
                        
               
             for i=1:5
                       if (r(i)==root_sum(3))&&(r(i)>=100)
                          c7=c7+1;
                      end
                       if (r(i)==root_sum(4))&&(r(i)>=100)
                          c8=c8+1;
                      end
                       if (r(i)==root_sum(5))&&(r(i)>=100)
                          t1=t1+1;
                       end
             end
             for i=1:3                     
                       if (t(i)==trunk_sum(2))&&(t(i)>=100)
                          mt=mt+1;
                          abno_trunk_count(1,2)=1;
                      end
                       if (t(i)==trunk_sum(3))&&(t(i)>=100)
                          lt=lt+1;
                          abno_trunk_count(1,3)=1;
                       end
             end
             for i=1:3
                       if (s(i)==cord_sum(1))&&(s(i)>=100)
                          lc=lc+1;
                          abno_cord_count(1,1)=1;
                       end
                       if (s(i)==cord_sum(2))&&(s(i)>=100)
                          pc=pc+1;
                          abno_cord_count(1,2)=1;
                       end
                       if (s(i)==cord_sum(3))&&(s(i)>=100)
                          mc=mc+1;
                          abno_cord_count(1,3)=1;
                       end
             end
%-------------------------------------------------------------------------------------             
cords_61=[0 0 0];
                      if pc~=0                                            
                          cords_61(2)=1;
                      end    
                      if (mc~=0)
                          cords_61(3)=1;
                      end
                      if (lc~=0)
                         cords_61(1)=1;
                      end

             
%-------------------------------------------------------------------------------------             
 %if the soted list contains trunks and cords, lets decide between them!!
 trunk_only(1,1:3)=0;
 cord_only(1,1:3)=0;
check_comp_r=[0 0 0];
check_comp_t=[0 0 0];
check_comp_c=[0 0 0];
            %LT/MC
            if (abno_trunk_count(3)==1)&&(abno_cord_count(3)==1)
            check_comp_c(1)=1

              if (sensory_para(2)||motor_para(2))==1
                      if motor_para(3)==1
                        trunk_only(1,3)=1;
                        cord_only(1,1:3)=0; 
                      else
                         cord_only(1,3)=1;
                      end
              end
            end
                    
              %UT/LC
            if (abno_trunk_count(1)==1)&&(abno_cord_count(1)==1)
              if (sensory_para(4)||sensory_para(6)||motor_para(5))==1
                      if motor_para(4)==1
                        trunk_only(1,1)=1;
                        cord_only(1,1:3)=0; 
                         cord_only(1,1:3)=0;                       
                      else
                        cord_only(1,1)=1;
                      end
              end               
            end
            
            %MT/PC
            if (abno_trunk_count(2)==1)&&(abno_cord_count(2)==1)
                   if (sensory_para(7))==1            
                    trunk_only(1,3)=1;                  
                    cord_only(1,1:3)=0;                                                               
                   elseif motor_para(3)==1                      
                       cord_only(1,2)=1;
                   elseif  motor_para(4)==1
                       cord_only(1,2)=1;
                   end
                   
            end    
%---------------------------------------conclusions for supra UNffected sens
%normal/pregangli

 if (nnz(abno_sens_count_L)==0)&&(nnz(abno_sens_count_R)==0) %SENS NORMAL,SUPRA UNAFFE
     ts=get(handles.edit32,'string');
     ts=strvcat(ts,'PRE GANGLIONIC  ');
     set(handles.edit32,'string',ts);
     sm=0;
                         for i=1:5
                                   if (r(i)==root_sum(3))&&(r(i)>=100)
                                     ts=get(handles.edit32,'string');
                                     ts=strvcat(ts,'C7 ROOT');
                                     set(handles.edit32,'string',ts);
                                  end
                                   if (r(i)==root_sum(4))&&(r(i)>=100)
                                     ts=get(handles.edit32,'string');
                                     ts=strvcat(ts,'C8 ROOT  ');
                                     set(handles.edit32,'string',ts);
                                  end
                                   if (r(i)==root_sum(5))&&(r(i)>=100)
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,' T1 ROOT  ');
                                         set(handles.edit32,'string',ts);
                                   end
                         end
         if sm==0
                     if (c7~=0)
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,' C7 ROOT  ');
                                         set(handles.edit32,'string',ts);
                      end
                      if (c8~=0)
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,' C8 ROOT  ');
                                         set(handles.edit32,'string',ts);
                      end
                      if (t1~=0)
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,' T1 ROOT  ');
                                         set(handles.edit32,'string',ts);
                      end
         end
   if left_side==1
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      LEFT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    else
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      RIGHT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    end

         
        if ((left==1) && (right>1))||((left>1) && (right==1))
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,'WITH ADDITIONAL MONO NEUROPATHY IN OPPOSITE  SIDE');
                                         set(handles.edit32,'string',ts);
       
        end
                   
 else %SENS NOT NORMAL,SUPRA UNAFFE= POST GANGLI--------------------------------------------------------
     %----------------------------------------------------------------------------------------------------
                       ts=get(handles.edit32,'string');
                        ts=strvcat(ts,'POST GANGLIONIC');
                         set(handles.edit32,'string',ts);
                         sm=0;
            
                                for i=1:5
                                   if (r(i)==root_sum(3))&&(r(i)>=100)
                                      sm=1;
                                  end
                                   if (r(i)==root_sum(4))&&(r(i)>=100)
                                      sm=1;
                                  end
                                   if (r(i)==root_sum(5))&&(r(i)>=100)
                                      sm=1;
                                   end
                        
                                end  
           
                 if trunk_only(1)==1;
                  m=1;
                 end
                 if trunk_only(2)==1;
                  m=1;
                 end
                 if trunk_only(3)==1;
                  m=1;
                 end
                                
                  if cord_only(1)==1;
                          m=1;
                          sm=1;
                  end
                        if cord_only(2)==1;
                         m=1;
                         sm=1;
                         end
                        if cord_only(3)==1;
                         m=1;
                         sm=1;
                        end
                        
                        if nnz(check_comp_c)~=0
                            if check_comp_c(1)==0
%                                          ts=get(handles.edit32,'string');
%                                          ts=strvcat(ts,'MEDIAL CORD');
%                                          set(handles.edit32,'string',ts);
                            end
                            if check_comp_c(2)==0
%                                          ts=get(handles.edit32,'string');
%                                          ts=strvcat(ts,'POSTERIOR CORD');
%                                          set(handles.edit32,'string',ts);
                            end
                            if check_comp_c(3)==0
%                                            ts=get(handles.edit32,'string');
%                                          ts=strvcat(ts,'LATERAL CORD');
%                                          set(handles.edit32,'string',ts);
                            end
                        end             
      if (nnz(cord_only)==0)&&(nnz(trunk_only==0))                
%-------------------------999ROOTS/ TRUNKS??     FINAL CONCLUSION                ');
            root_all_sum=sum(root_sum(1,:));
            trunk_all_sum=sum(trunk_sum(1,:));no_final=0;
            if (trunk_only(1)~=0)&&((nnz(c8_sens)~=0)||(nnz(c8_moto)~=0))
           
                 if trunk_only(1)==1;
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'UPPER TRUNK/');
                     set(handles.edit32,'string',ts);no_final=1;
                 end
                 if trunk_only(2)==1;
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'MIDDLE TRUNK /');
                     set(handles.edit32,'string',ts);no_final=1;
                 end
                 if trunk_only(3)==1;
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'LOWER TRUNK');
                     set(handles.edit32,'string',ts);no_final=1;
                 end
  
        
            elseif (cords_61(1)~=0)&&((nnz(c8_sens)~=0)||(nnz(c8_moto)~=0))

                        if cords_61(1)==1
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'LATERAL CORD');
                     set(handles.edit32,'string',ts);
                            sm=1;no_final=1;
                         end
                        if cords_61(2)==1
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'POSTERIOR CORD');
                     set(handles.edit32,'string',ts);
                      sm=1;no_final=1;
                         end
                        if cords_61(3)==1
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'MEDIAL CORD');
                     set(handles.edit32,'string',ts);
                     sm=1;no_final=1;
                        end                
            else
                      if (c7~=0)
                      ts=get(handles.edit32,'string');
                       ts=strvcat(ts,'C7 ROOT');
                       set(handles.edit32,'string',ts);no_final=1;
                      end
                      if (c8~=0)
                      ts=get(handles.edit32,'string');
                      ts=strvcat(ts,'C8 ROOT');
                      set(handles.edit32,'string',ts);no_final=1;
                      end
                      if (t1~=0)
                      ts=get(handles.edit32,'string');
                      ts=strvcat(ts,'T1 ROOT');
                      set(handles.edit32,'string',ts);no_final=1;
                      end
          

            end
           if no_final==0
              if (c7~=0)
               ts=get(handles.edit32,'string');
               ts=strvcat(ts,' C7 ROOT  ');
               set(handles.edit32,'string',ts);
                          disp('            C7 ROOT      ');
              end
              if (c8~=0)
               ts=get(handles.edit32,'string');
               ts=strvcat(ts,' C8 ROOT  ');
               set(handles.edit32,'string',ts);
                          disp('            C8 ROOT      ');
              end
              if (t1~=0)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,' T1 ROOT  ');
              set(handles.edit32,'string',ts);
                          disp('            T1 ROOT      ');
              end
              if (mt~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' MIDDLE TRUNK  ');
               set(handles.edit32,'string',ts);
               end
               if (lt~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' LOWER TRUNK  ');
               set(handles.edit32,'string',ts);
               end
               if pc~=0                                            
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' POSTERIOR CORD  ');
               set(handles.edit32,'string',ts);
               end    
               if (mc~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' MEDIAL CORD  ');
               set(handles.edit32,'string',ts);
               end
               if (lc~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' LATERAL CORD  ');
               set(handles.edit32,'string',ts);
              end
          end           
      end
 end
 %-----------final conclusion--------------
if (nnz(cord_only)~=0)               
         root_all_sum=sum(root_sum(1,:));
         trunk_all_sum=sum(trunk_sum(1,:));
    if (trunk_only(1)~=0)&&((nnz(c8_sens)~=0)||(nnz(c8_moto)~=0))
                 disp(' TRUNK      ');
           
     if cord_only(1)==1;
     ts=get(handles.edit32,'string');
     ts=strvcat(ts,'LATERAL CORD/  ');
     set(handles.edit32,'string',ts);
                 end
     if cord_only(2)==1;
     ts=get(handles.edit32,'string');
     ts=strvcat(ts,'POSTERIOR CORD/  ');
     set(handles.edit32,'string',ts);
                 end
     if cord_only(3)==1;
     ts=get(handles.edit32,'string');
     ts=strvcat(ts,'MEDIAL CORD/  ');
     set(handles.edit32,'string',ts);
     end
                        if nnz(check_comp_c)~=0
                            if check_comp_c(1)==0
                             ts=get(handles.edit32,'string');
                             ts=strvcat(ts,'MEDIAL CORD  ');
                             set(handles.edit32,'string',ts);
                            end
                            if check_comp_c(2)==0
                             ts=get(handles.edit32,'string');
                             ts=strvcat(ts,'POSTERIOR CORD/  ');
                             set(handles.edit32,'string',ts);
                            end
                            if check_comp_c(3)==0
                             ts=get(handles.edit32,'string');
                             ts=strvcat(ts,'LATERAL CORD/  ');
                             set(handles.edit32,'string',ts);
                            end
                        end  
           elseif (cords_61(1)~=0)&&((nnz(c8_sens)~=0)||(nnz(c8_moto)~=0))

                        if cords_61(1)==1
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'LATERAL CORD');
                     set(handles.edit32,'string',ts);
                            sm=1;no_final=1;
                         end
                        if cords_61(2)==1
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'POSTERIOR CORD');
                     set(handles.edit32,'string',ts);
                      sm=1;no_final=1;
                         end
                        if cords_61(3)==1
                     ts=get(handles.edit32,'string');
                     ts=strvcat(ts,'MEDIAL CORD');
                     set(handles.edit32,'string',ts);
                     sm=1;no_final=1;
                        end                           
            else
                      if (c7~=0)
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,'C7 ROOT');
                                         set(handles.edit32,'string',ts);
                      end
                      if (c8~=0)
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,'C8 ROOT');
                                         set(handles.edit32,'string',ts);
                      end
                      if (t1~=0)
                                         ts=get(handles.edit32,'string');
                                         ts=strvcat(ts,'T1 ROOT');
                                         set(handles.edit32,'string',ts);
                      end
             end
         if sm==0
            if (c7~=0)
              ts=get(handles.edit32,'string');
              ts=strvcat(ts,' C7 ROOT  ');
             set(handles.edit32,'string',ts);
                      end
                      if (c8~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' C8 ROOT  ');
               set(handles.edit32,'string',ts);
                      end
                      if (t1~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' T1 ROOT  ');
               set(handles.edit32,'string',ts);
                      end
                      if (mt~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' MIDDLE TRUNK  ');
               set(handles.edit32,'string',ts);
                      end
                      if (lt~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' LOWER TRUNK  ');
               set(handles.edit32,'string',ts);
                      end
                      if pc~=0                                            
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' POSTERIOR CORD  ');
               set(handles.edit32,'string',ts);
                      end    
                      if (mc~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' MEDIAL CORD  ');
               set(handles.edit32,'string',ts);
                      end
                      if (lc~=0)
              ts=get(handles.edit32,'string');
               ts=strvcat(ts,' LATERAL CORD  ');
               set(handles.edit32,'string',ts);
                      end
          end         
                      
         end
   if left_side==1
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      LEFT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    else
          ts=get(handles.edit32,'string');
          ts=strvcat(ts,'      RIGHT SIDE AFFECTATION   ');
          set(handles.edit32,'string',ts);
    end

         
        if ((left==1) && (right>1))||((left>1) && (right==1))
         ts=get(handles.edit32,'string');
         ts=strvcat(ts,'WITH ADDITIONAL MONO NEUROPATHY IN OPPOSITE  SIDE');
         set(handles.edit32,'string',ts);
       
        end
         
         
         
         
        end
end





%---------------------------------------------------------------------------------------------------
function edit_moto_results_Callback(hObject, eventdata, handles)
% hObject    handle to edit_moto_results (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_moto_results as text
%        str2double(get(hObject,'String')) returns contents of edit_moto_results as a double


function edit_disp_result_Callback(hObject, eventdata, handles)
% hObject    handle to edit_disp_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_disp_result as text
%        str2double(get(hObject,'String')) returns contents of edit_disp_result as a double



function edit32_Callback(hObject, eventdata, handles)
%final result is here
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double

%-----------------------------------------------------------------------------------------------


% --- Executes on button press in pb_start.
function pb_start_Callback(hObject, eventdata, handles)
med_data()
% hObject    handle to pb_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
