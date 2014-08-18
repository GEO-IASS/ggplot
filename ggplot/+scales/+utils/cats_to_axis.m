function [ limits, ticks, labels ] = cats_to_axis( cat_array, varargin )
%CATS_TO_AXIS - helper for getting axis info for categorical data
%
% SYNTAX:
%   [ limits, labels ] = cats_to_axis( cat_array )
%
% Description:
%   [ limits, labels ] = cats_to_axis( cat_array ) ...
%
% INPUTS:
%   cat_array - categorical array  
%
% OUTPUTS:
%   limits - 
%   labels -
%
% EXAMPLES:
%
% SEE ALSO: 
% 
% Author:       nick roth
% email:        nick.roth@nou-systems.com
% Matlab ver.:  8.3.0.532 (R2014a)
% Date:         17-Aug-2014
    
    %% Input Parsing
    % Setup input parsing
    p = inputParser;
    p.FunctionName = 'cats_to_axis';
    p.addRequired('cat_array');
    p.parse(cat_array, varargin{:});

    % Assign function variables
    cat_array = p.Results.cat_array;

    %% Primary function logic begins here
    cats = categories(cat_array);
    labels = repmat({''}, 1, length(cats)+2);

    for i = 1:length(cats)
        labels{i+1} = cats{i};
    end

    limits = [0 length(labels)-1];
    ticks = 0:length(labels)-1;
end
