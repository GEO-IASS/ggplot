classdef ggplot < handle
    %GGPLOT - One line summary of this class goes here
    %   GGPLOT has a first line of the description of myClass, but
    %   descriptions can include multiple lines of text if needed.
    %
    % SYNTAX:
    %   myselfect = ggplot( requiredProp )
    %   myselfect = ggplot( requiredProp, 'optionalInput1', 'optionalInputValue' )
    %   myselfect = ggplot( requiredInput, 'optionalInput2', 50 )
    %
    % Description:
    %   myselfect = ggplot( requiredProp ) further description about the use
    %       of the function can be added here.
    %
    % PROPERTIES:
    %   requiredProp - Description of requiredProp
    %   optionalProp1 - Description of optionalProp1
    %   optionalProp2 - Description of optionalProp2
    %
    % METHODS:
    %   doThis - Description of doThis
    %   doThat - Description of doThat
    %
    % EXAMPLES:
    %   Line 1 of multi-line use case goes here
    %   A class can use this area for further explaining methods.
    %
    % SEE ALSO: OTHER_CLASS1, OTHER_FUNCTION1
    %
    % Author:       nick roth
    % email:        nick.roth@nou-systems.com
    % Matlab ver.:  8.3.0.532 (R2014a)
    % Date:         12-Aug-2014
    % Update:
    
    %% Class properties
    properties
       
        % required
        aesthetics
        data
        
        % defaults
        geoms = {}
        n_rows = 1
        n_columns = 1
        n_dim_x = ''
        n_dim_y = ''
        
        % facets
        facets = {}
        facet_type = ''
        facet_scales = ''
        facet_pairs = {}
        
        % components
        title = ''
        xlab = ''
        ylab = ''
        
        % format for x/y major ticks
        xtick_formatter = {}
        xbreaks = {}
        xtick_labels = {}
        xmajor_locator = {}
        xminor_locator = {}
        ytick_formatter = {}
        xlimits = []
        ylimits = []
        ytick_labels = {}
        scale_y_reverse = {}
        scale_x_reverse = {}
        scale_y_log = {}
        scale_x_log = {}
        legend = {}
        
        % coords
        coord_equal = {}
        
        % default theme is theme_gray
        theme
        
        % continuous color configs
        color_scale = []
        colormap = []
        manual_color_list = []
        
        % Constants
        CONTINUOUS = {'x', 'y', 'size', 'alpha'}
        DISCRETE = {'color', 'shape', 'marker', 'alpha', 'linestyle'}
        
    end
    
    %% Methods
    methods
        % GGPLOT Constructor
        function self = ggplot(data, aesthetics)
            import utils.*
            import themes.*
            
            % Get the correct input order
            [data, aesthetics] = self.findInputs(data, aesthetics);
            
            self.aesthetics = aesthetics;
            self.data = apply_transforms(data, self.aesthetics);
            self.theme = theme_gray();
        end
        
        function display(self)
            %TODO: Implement method
        end
        
        function draw(self)
            %TODO: Implement method
            
            
            if strcmp(self.facet_type, 'grid') || length(self.facets) > 1
                % Draw facet grid
                pass;
            elseif strcmp(self.facet_type, 'wrap') || length(self.facets) == 1
                % Draw facet wrap
                
                % Add subplots
                
                % Store subplots
            else
                % Add the number of configured subplots
            end
            
            % Set the default subplot to the first
            
        end
        
        function make_plot_data(self)
            %TODO: Implement method
        end
        
        function add_to_legend(self, legend_type, legend_dict, scale_type)
        end
        
        function [data, aesthetics] = findInputs(self, possibleData, possibleAes)
            %FINDINPUTS - Allows either order of input
            
            if (istable(possibleData) || isa(possibleData, 'components.aes')) && ...
                (istable(possibleAes) || isa(possibleAes, 'components.aes'))
                if istable(possibleData)
                    data = possibleData;
                    aesthetics = possibleAes;
                else
                    data = possibleAes;
                    aesthetics = possibleData;
                end
            else
                error('Invalid inputs, one must be a Matlab Table, and the other a AES object.')
            end
        end
    end
end
