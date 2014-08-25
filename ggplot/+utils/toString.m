function [ str_items ] = toString( items, varargin )
%TOSTRING - returns cell array of strings for many input types
%   TOSTRING should provide data that is ready to input directly into
%   legend and other functions that require special handling for each data
%   type.
%
% SYNTAX:
%   [ str_items ] = toString( items )
%
% Description:
%   [ output_args ] = toString( items ) further description about 
%        the use of the function can be added here.
%
% INPUTS:
%   items - Description   
%
% OUTPUTS:
%   str_items - Description
%
% SEE ALSO: NUM2STR, CELLSTR, CATEGORIES
% 
% Author:       nick roth
% email:        nick.roth@nou-systems.com
% Matlab ver.:  8.3.0.532 (R2014a)
% Date:         20-Aug-2014
% Update:

if isnumeric(items)
    items = num2str(items);
    str_items = strtrim(cellstr(items));
elseif iscategorical(items)
    str_items = categories(items);
end

% Make sure we don't have spaces
% str_items = strrep(str_items, ' ', '_');
end
