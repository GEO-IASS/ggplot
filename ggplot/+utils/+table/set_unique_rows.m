function [ output1 ] = set_unique_rows( data, col_names, varargin )
%set_unique_rows - One line description of what the function or script performs (H1 line)
%   set_unique_rows has a second line of description that can go on to additional
%   lines if needed, for a more detailed description
%
% SYNTAX:
%   [ output1 ] = set_unique_rows( requiredInput )
%   set_unique_rows( requiredInput, 'optionalInput1', 'optionalInputValue' )
%   set_unique_rows( requiredInput, 'optionalInput2', 50 )
%
% Description:
%   [ output_args ] = set_unique_rows( requiredInput ) further description about 
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
    p.FunctionName = 'set_unique_rows';
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
    
    strs = {repmat('', 1, length(data.(col_names{1})))};
    
    for i = 1:length(col_names)
        if iscategorical(data.(col_names{i}))
            strs = strcat(strs, cellstr(data.(col_names{i})));
            
        elseif isnumeric(data.(col_names{i}))
            strs = strcat(strs, cellstr(num2str(data.(col_names{i}))));
        end
        if i ~= length(col_names)
            seps = repmat(':', length(data.(col_names{1})), 1);
            strs = strcat(strs, seps);
        end
    end
        
    items = categorical(strcat(strs));
    data.Properties.RowNames = items;
end
