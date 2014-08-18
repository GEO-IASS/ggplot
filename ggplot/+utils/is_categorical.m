function [ bool ] = is_categorical( col, varargin )
%IS_CATEGORICAL - returns boolean if the data could be categorical
%
% SYNTAX:
%   [ bool ] = is_categorical( col )
%
% Description:
%   [ bool ] = is_categorical( col ) returns boolean on if we should use
%   this as a categorical array.
%
% INPUTS:
%   col - array-like structure of values   
%
% OUTPUTS:
%   bool - boolean value
%
% EXAMPLES:
%
% SEE ALSO: 
% 
% Author:       nick roth
% email:        nick.roth@nou-systems.com
% Matlab ver.:  8.3.0.532 (R2014a)
% Date:         17-Aug-2014

bool = false;

% cell array of strings
if iscellstr(col)
    bool = true;
end
   
if islogical(col)
    bool = true;
end

if iscategorical(col)
    bool = true;
end

end
