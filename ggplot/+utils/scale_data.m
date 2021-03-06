function [ dataout ] = scale_data( datain, minval, maxval )
%SCALE_DATA - One line description of what the function or script performs (H1 line)
%   SCALE_DATA has a second line of description that can go on to additional
%   lines if needed, for a more detailed description
%
% SYNTAX:
%   [ output1 ] = scale_data( requiredInput )
%   scale_data( requiredInput, 'optionalInput1', 'optionalInputValue' )
%   scale_data( requiredInput, 'optionalInput2', 50 )
%
% Description:
%   [ output_args ] = scale_data( requiredInput ) further description about 
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
% Date:         19-Aug-2014
% Update:

import utils.*

if iscategorical(datain)
    cats = categories(datain);
    diff_val = maxval - minval;
    scale = minval:diff_val/(length(cats)-1):maxval;
    dataout = ones(length(datain), 1);
    for i = 1:length(cats)
        idx = datain == cats(i);
        dataout(idx) = scale(i); 
    end
else
    dataout = datain - min(datain(:));
    dataout = (dataout/range(dataout(:)))*(maxval-minval);
    dataout = dataout + minval;
end
end
