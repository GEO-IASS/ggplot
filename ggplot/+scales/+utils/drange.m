function [ range_out ] = drange(start, stop, step)
%DRANGE - One line description of what the function or script performs (H1 line)
%   DRANGE has a second line of description that can go on to additional
%   lines if needed, for a more detailed description
%
% SYNTAX:
%   [ output1 ] = drange( requiredInput )
%   drange( requiredInput, 'optionalInput1', 'optionalInputValue' )
%   drange( requiredInput, 'optionalInput2', 50 )
%
% Description:
%   [ output_args ] = drange( requiredInput ) further description about 
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
    
r = ((start / step) * step) + step;
i = 1;
range_out(i) = r;
while r < stop
    i = i + 1;
    r = r + step;
    range_out(i) = r;
end

end
