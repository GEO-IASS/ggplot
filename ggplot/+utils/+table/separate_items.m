function [ table_map ] = separate_items( data, col_names, varargin )
%SEPARATE_ITEMS - One line description of what the function or script performs (H1 line)
%   SEPARATE_ITEMS has a second line of description that can go on to additional
%   lines if needed, for a more detailed description
%
% SYNTAX:
%   [ output1 ] = separate_items( requiredInput )
%   separate_items( requiredInput, 'optionalInput1', 'optionalInputValue' )
%   separate_items( requiredInput, 'optionalInput2', 50 )
%
% Description:
%   [ output_args ] = separate_items( requiredInput ) further description about 
%        the use of the function can be added here.
%
% INPUTS:
%   requiredInput - Description
%   optionalInput1 - Description
%   optionalInput2 - Description   
%
% OUTPUTS:
%   output1 - Description
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
% 
% Author:       nick roth
% email:        nick.roth@nou-systems.com
% Matlab ver.:  8.3.0.532 (R2014a)
% Date:         17-Aug-2014
% Update:
    
    %% Input Parsing
    % Setup input parsing
    p = inputParser;
    p.FunctionName = 'separate_items';
    p.addRequired('data');
    p.addRequired('col_names');
    p.parse(data, col_names, varargin{:});

    % Assign function variables
    data = p.Results.data;
    col_names = p.Results.col_names;

    %% Primary function logic begins here 
    
    
    if ~iscellstr(col_names)
        col_names = testdata.Properties.VariableNames{col_names};
    end
    
    table_map = containers.Map();
    
    for i = 1:length(col_names)
        %TODO: handle multiple columns
        
        if iscategorical(data.(col_names{i}))
            cats = categories(data.(col_names{i}));
            data.Properties.RowNames = data.(col_names{i});
            
        elseif isnumeric(data.(col_names{i}))
            data.(col_names{i}) = categorical(data.(col_names{i}));
            cats = categories(data.(col_names{i}));
            data.Properties.RowNames = data.(col_names{i});
        end
    end
    
    for i = 1:length(cats)
        table_map(cats{i}) = data(cats{i},:);
    end
end
