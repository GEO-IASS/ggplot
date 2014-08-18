function [ labs, limits ] = calc_axis_breaks_and_limits( minval, maxval, varargin )
%CALC_AXIS_BREAKS_AND_LIMITS - One line description of what the function or script performs (H1 line)
%   CALC_AXIS_BREAKS_AND_LIMITS has a second line of description that can go on to additional
%   lines if needed, for a more detailed description
%
% SYNTAX:
%   [ labs, min_val, max_val ] = calc_axis_breaks_and_limits( minval, maxval, varargin )
%
% Description:
%   [ labs, min_val, max_val ] = calc_axis_breaks_and_limits( minval, maxval, varargin ) further description about
%        the use of the function can be added here.
%
% INPUTS:
%   minval - 
%   maxval - 
%   nlabs (optional) -
%
% OUTPUTS:
%   labs - 
%   min_val - 
%   max_val -
%
% EXAMPLES:
%   Line 1 of multi-line use case goes here
%   Line 2...
%
% M-FILES required: none
%
% MAT-FILES required: none
%
% SEE ALSO: OTHER_FUNCTION1, OTHER_FUNCTION2
%           https://github.com/yhat/ggplot/blob/ca5ff58fcd6b5dc85654033c124455950a093e56/ggplot/scales/utils.py
%
% Author:       nick roth
% email:        nick.roth@nou-systems.com
% Matlab ver.:  8.3.0.532 (R2014a)
% Date:         17-Aug-2014

%% Input Parsing
% Setup input parsing
p = inputParser;
p.FunctionName = 'calc_axis_breaks_and_limits';
p.addRequired('minval');
p.addRequired('maxval');
p.addOptional('nlabs', []);
p.parse(minval, maxval, varargin{:});

% Assign function variables
minval = p.Results.minval;
maxval = p.Results.maxval;
nlabs = p.Results.nlabs;

%% Primary function logic begins here
if isempty(nlabs)
    diff = maxval - minval;
    base10 = log10(diff);
    power = floor(base10);
    base_unit = 10^power;
    step = base_unit / 2;
else
    diff = maxval - minval;
    tick_range = diff / nlabs;
    % make the tick range nice looking
    power = ceil(log10(tick_range));
    step = roundn(tick_range / (10^power), -1) * 10^power;
end

labs = scales.utils.drange(minval-(step/3), maxval+(step/3), step);
min_val = minval-(step/3);
max_val = maxval+(step/3);
limits = [min_val max_val];


end
