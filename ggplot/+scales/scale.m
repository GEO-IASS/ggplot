classdef (Abstract) scale < handle & dynamicprops
    %SCALE - One line summary of this class goes here
    %   SCALE has a first line of the description of myClass, but
    %   descriptions can include multiple lines of text if needed.
    %
    % SYNTAX:
    %   myObject = scale( requiredProp )
    %   myObject = scale( requiredProp, 'optionalInput1', 'optionalInputValue' )
    %   myObject = scale( requiredInput, 'optionalInput2', 50 )
    %
    % Description:
    %   myObject = scale( requiredProp ) further description about the use
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
    % Date:         17-Aug-2014
    % Update:
    
    %% Properties
    properties (Abstract)
        VALID_SCALES
        
    end
    
    %% Methods
    methods
        % SCALE Constructor
        function self = scale(varargin)
            % Setup input parsing
            p = inputParser;
            p.FunctionName = 'scale';
            
            % Add keyword parsing based on input properties
            for i = 1:length(self.VALID_SCALES)
                if ~isempty(self.VALID_SCALES) && any(strcmp(self.VALID_SCALES{i},self.VALID_SCALES))
                    p.addParameter(self.VALID_SCALES{i}, []);
                end
            end
            p.parse(varargin{:});
            
            % Save props into class based on input properties
            fns = fieldnames(p.Results);
            fns = intersect(self.VALID_SCALES, fns);
            for i = 1:length(fns)
                self.addprop(fns{i});
                self.(fns{i}) = p.Results.(fns{i});
            end
        end

    end

end
