function [ data ] = to_categorical( data, varargin )
%TO_CATEGORICAL - One line description of what the function or script performs (H1 line)
%   TO_CATEGORICAL has a second line of description that can go on to additional
%   lines if needed, for a more detailed description
%
% SYNTAX:
%   [ output1 ] = to_categorical( requiredInput )
%   to_categorical( requiredInput, 'optionalInput1', 'optionalInputValue' )
%   to_categorical( requiredInput, 'optionalInput2', 50 )
%
% Description:
%   [ output_args ] = to_categorical( requiredInput ) further description about 
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

import utils.table.*
import utils.*
    
    %% Input Parsing
    % Setup input parsing
    p = inputParser;
    p.FunctionName = 'to_categorical';
    p.addRequired('data');
    p.parse(data, varargin{:});

    % Assign function variables
    data = p.Results.data;

    %% Primary function logic begins here 
    vars = data.Properties.VariableNames;
    for i = 1:length(vars)
        if is_categorical(data.(vars{i}))
            data.(vars{i}) = categorical(data.(vars{i}));
        end
    end
end
