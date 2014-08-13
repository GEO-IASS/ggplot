classdef theme_gray < themes.theme
    %THEME_GRAY - Standard theme for ggplot. Gray background w/ white gridlines.
    %
    % SYNTAX:
    %   theme = theme_gray( )
    %
    % Description:
    %
    % PROPERTIES:
    %
    % METHODS:
    %   apply_theme
    %
    % EXAMPLES:
    %   Line 1 of multi-line use case goes here
    %   A class can use this area for further explaining methods.
    %
    % SEE ALSO: OTHER_CLASS1, OTHER_FUNCTION1
    %           https://github.com/hadley/ggplot2/blob/master/R/theme-defaults.r
    %
    % Author:       nick roth
    % email:        nick.roth@nou-systems.com
    % Matlab ver.:  8.3.0.532 (R2014a)
    % Date:         12-Aug-2014
    
    %% Methods
    methods
        % THEME_GRAY Constructor
        function self = theme_gray()
            import themes.*
            
            self@themes.theme('complete', true);
            
            self.rcParams('timezone') = 'UTC';
            self.rcParams('lines.linewidth') = '1.0';
            self.rcParams('lines.antialiased') = 'True';
            self.rcParams('patch.linewidth') = '0.5';
            self.rcParams('patch.facecolor') = '348ABD';
            self.rcParams('patch.edgecolor') = '#E5E5E5';
            self.rcParams('patch.antialiased') = 'True';
            self.rcParams('font.family') = 'sans-serif';
            self.rcParams('font.size') = '12.0';
            self.rcParams('font.serif') = {'Times', 'Palatino', ...
                'New Century Schoolbook', ...
                'Bookman', 'Computer Modern Roman', ...
                'Times New Roman'};
            self.rcParams('font.sans-serif') = {'Helvetica', 'Avant Garde', ...
                'Computer Modern Sans serif', ...
                'Arial'};
            self.rcParams('axes.facecolor') = '#E5E5E5';
            self.rcParams('axes.edgecolor') = 'bcbcbc';
            self.rcParams('axes.linewidth') = '1';
            self.rcParams('axes.grid') = 'True';
            self.rcParams('axes.titlesize') = 'x-large';
            self.rcParams('axes.labelsize') = 'large';
            self.rcParams('axes.labelcolor') = 'black';
            self.rcParams('axes.axisbelow') = 'True';
            self.rcParams('axes.color_cycle') = {'#333333', '348ABD', '7A68A6', ...
                'A60628', ...
                '467821', 'CF4457', '188487', ...
                'E24A33'};
            self.rcParams('grid.color') = 'white';
            self.rcParams('grid.linewidth') = '1.4';
            self.rcParams('grid.linestyle') = 'solid';
            self.rcParams('xtick.major.size') = '0';
            self.rcParams('xtick.minor.size') = '0';
            self.rcParams('xtick.major.pad') = '6';
            self.rcParams('xtick.minor.pad') = '6';
            self.rcParams('xtick.color') = '#7F7F7F';
            self.rcParams('xtick.direction') = 'out';  % pointing out of axis
            self.rcParams('ytick.major.size') = '0';
            self.rcParams('ytick.minor.size') = '0';
            self.rcParams('ytick.major.pad') = '6';
            self.rcParams('ytick.minor.pad') = '6';
            self.rcParams('ytick.color') = '#7F7F7F';
            self.rcParams('ytick.direction') = 'out';  % pointing out of axis
            self.rcParams('legend.fancybox') = 'True';
            self.rcParams('figure.figsize') = [11 8];
            self.rcParams('figure.facecolor') = '1.0';
            self.rcParams('figure.edgecolor') = '0.50';
            self.rcParams('figure.subplot.hspace') = '0.5';
        end
        
        function apply_theme(self)
            %TODO: Implement method
            
        end
    end
end
