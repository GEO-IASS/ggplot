classdef aes < handle
    %AES - ggplot aesthetics class for mapping aes to data attributes
    %
    % SYNTAX:
    %   aes('x', 'x', 'y', 'y')
    %   aes('x', 'weight', 'y', 'height', 'color', 'salary')
    %
    % Description:
    %
    % PROPERTIES (key value pairs):
    %   x
    %   y
    %   color
    %   shape
    %   size
    %   alpha
    %   ymin
    %   ymax
    %   xmin
    %   xmax
    %   slope
    %   intercept
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
    
    %% Properties
    properties
        
        % keyword pairs
        x
        y
        color
        shape
        size
        alpha
        ymin
        ymax
        xmin
        xmax
        slope
        intercept
        
    end
    
    %% Methods
    methods
        % AES Constructor
        function self = aes(varargin)
            % Setup input parsing
            p = inputParser;
            p.FunctionName = 'aes';
            p.addParameter('x', '');
            p.addParameter('y', '');
            p.addParameter('color', '');
            p.addParameter('shape', '');
            p.addParameter('alpha', '');
            p.addParameter('ymin', '');
            p.addParameter('ymax', '');
            p.addParameter('xmin', '');
            p.addParameter('xmax', '');
            p.addParameter('slope', '');
            p.addParameter('intercept', '');
            p.parse(varargin{:});
            
            % Store inputs into object
            self.x = p.Results.x;
            self.y = p.Results.y;
            self.color = p.Results.color;
            self.shape = p.Results.shape;
            self.alpha = p.Results.alpha;
            self.ymin = p.Results.ymin;
            self.ymax = p.Results.ymax;
            self.xmin = p.Results.xmin;
            self.xmax = p.Results.xmax;
            self.slope = p.Results.slope;
            self.intercept = p.Results.intercept;

        end

    end

end
