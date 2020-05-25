% Syntax:  monogr
%
% Purpose: Adapts graphics settings for monochrome displays.
%
% Inputs:  none
%
% Outputs: none
%
% See also: resetgr, startup

% Created: Aug 26, 1993       by Bart De Schutter
% Last revised: Sep 11, 2005  by Bart De Schutter

% Note: There are even more combinations possible!
set(0,'DefaultAxesLineStyleOrder','-|--|:|-.|x-|o--|*:|s-.|d-|v--|p:|h-.');
%monogr_str=version;
%if ( monogr_str(1) == '5' )
   set(0,'DefaultAxesColorOrder',[0 0 0]);
   set(0,'DefaultFigureColorMap',[0 0 0]);
%else
%   set(0,'DefaultAxesColorOrder',[1 1 1]);
%   set(0,'DefaultFigureColorMap',[1 1 1]);
%end;
%clear monogr_str;
