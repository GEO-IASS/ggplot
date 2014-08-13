function [ data, legend ] = assign_visual_mapping( data, aes, gg )
%ASSIGN_VISUAL_MAPPING - Assigns the visual mapping to the given data and adds the right legend
%
% SYNTAX:
%   [ data, legend ] = assign_visual_mapping( data, aes, gg )
%
% Description:
%   [ data, legend ] = assign_visual_mapping( data, aes, gg ) assigns
%   aesthetics to the columns in the data.
%
% INPUTS:
%   data
%   aes
%   gg
%
% OUTPUTS:
%   data -
%   legend
%
% EXAMPLES:
%
% M-FILES required: none
%
% MAT-FILES required: none
%
% SEE ALSO: ggplot
%
% Author:       nick roth
% email:        nick.roth@nou-systems.com
% Matlab ver.:  8.3.0.532 (R2014a)
% Date:         12-Aug-2014

%% Start main function

legend = containers.Map();
[data, legend('color')] = colors.assign_colors(data, aes, gg, 'color');
[data, legend('fill')] = colors.assign_colors(data, aes, gg, 'fill');
[data, legend('size')] = size.assign_sizes(data, aes);
[data, legend('linetype')] = linetypes.assign_linetypes(data, aes);
[data, legend('shape')] = shapes.assign_shapes(data, aes);
[data, legend('alpha')] = alphas.assign_alphas(data, aes);

% Remove all keys that had nothing assigned to them
keys = legend.keys;
for i = 1:length(keys)
    if isempty(legend(keys(i)))
        legend.remove(keys(i));
    end
end

end
