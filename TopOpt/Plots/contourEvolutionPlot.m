%% Elements contour evolution plot
%
% Code developed by Ghislain Raze under the supervision of Prof. Joseph
% Morlier
%
% Initial code by Johannes T. B. Overvelde
%
% <http://www.overvelde.com>
%
% Plots the elements contour at an iteration given by a slider value.

function contourEvolutionPlot(history,distrType)

h = figure;
elementsContour(history.x(:,1),distrType,h,'Material distribution evolution');
iterMax = length(history.C)-1;

sliderContour2 = @(hObject,event) sliderContour(hObject,event,history.x,distrType,h);

slider = uicontrol(h,'style','slider','Min',0,'Max',iterMax,'Value',0,...
    'Units','normalized','Position',[15/16 1/8 1/48 6/8],...
    'SliderStep',[1/(iterMax-1) 10/(iterMax-1)],...
    'Callback',sliderContour2);
txtLimInf = uicontrol(h,'style','text','Units','normalized','Position',...
    [15/16 1/16 1/24 1/24],'String',...
    num2str(0));
txtLimSup = uicontrol(h,'style','text','Units','normalized','Position',...
    [15/16 7/8 1/24 1/24],'String',...
    num2str(iterMax));

end