function [ output1 ] = xkcd_rgb( requiredInput, varargin )
%XKCD_RGB - One line description of what the function or script performs (H1 line)
%   XKCD_RGB has a second line of description that can go on to additional
%   lines if needed, for a more detailed description
%
% SYNTAX:
%   [ output1 ] = xkcd_rgb( requiredInput )
%   xkcd_rgb( requiredInput, 'optionalInput1', 'optionalInputValue' )
%   xkcd_rgb( requiredInput, 'optionalInput2', 50 )
%
% Description:
%   [ output_args ] = xkcd_rgb( requiredInput ) further description about 
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
% Date:         12-Aug-2014
% Update:
    
    %% Input Parsing
    % Setup input parsing
    p = inputParser;
    p.FunctionName = 'xkcd_rgb';
    p.addRequired('requiredInput');
    p.addParameter('optionalInput1', 'myDefaultValue', @isstr);
    p.addParameter('optionalInput2', 100, @isscalar);
    p.parse(requiredInput, varargin{:});

    % Assign function variables
    requiredInput = requiredProp;
    optionalInput1 = p.Results.optionalInput1;
    optionalInput2 = p.Results.optionalInput2;

    %% Primary function logic begins here 
      
end
