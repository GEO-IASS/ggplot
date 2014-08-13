classdef theme < handle
    %THEME - One line summary of this class goes here
    %   THEME has a first line of the description of myClass, but
    %   descriptions can include multiple lines of text if needed.
    %
    % SYNTAX:
    %   myObject = theme( requiredProp )
    %   myObject = theme( requiredProp, 'optionalInput1', 'optionalInputValue' )
    %   myObject = theme( requiredInput, 'optionalInput2', 50 )
    %
    % Description:
    %   myObject = theme( requiredProp ) further description about the use
    %       of the function can be added here.
    %
    % PROPERTIES:
    %   requiredProp - Description of requiredProp
    %   complete - Description of complete
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
    
    %% Properties
    properties
        complete
        element_themes = []
        rcParams = containers.Map()
    end
    
    %% Methods
    methods
        % THEME Constructor
        function self = theme(varargin)
            % Setup input parsing
            p = inputParser;
            p.FunctionName = 'theme';
            p.addParameter('complete', false, @islogical);
            p.parse(varargin{:});
            
            % Add inputs to object properties
            self.complete = p.Results.complete;

        end

        function apply_theme(self)
            %TODO: Implement method
        end
        
        function get_rcParams(self)
            %TODO: Implement method
        end
        
        function post_plot_callback(self, ax)
            %TODO: Implement method
        end
        
        function add(self, other)
            %TODO: Implement method
        end
    end
end
