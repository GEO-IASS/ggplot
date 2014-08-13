classdef qplot < handle
    %QPLOT - One line summary of this class goes here
    %   QPLOT has a first line of the description of myClass, but
    %   descriptions can include multiple lines of text if needed.
    %
    % SYNTAX:
    %   myObject = qplot( requiredProp )
    %   myObject = qplot( requiredProp, 'optionalInput1', 'optionalInputValue' )
    %   myObject = qplot( requiredInput, 'optionalInput2', 50 )
    %
    % Description:
    %   myObject = qplot( requiredProp ) further description about the use
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
    
    %% Properties
    properties
        requiredProp                % Required property of qplot
        optionalProp1
        optionalProp2
    end
    
    %% Methods
    methods
        % QPLOT Constructor
        function obj = qplot(requiredProp, varargin)
            % Setup input parsing
            p = inputParser;
            p.FunctionName = 'qplot';
            p.addRequired('requiredProp');
            p.addParameter('optionalProp1', 'myDefaultValue', @isstr);
            p.addParameter('optionalProp2', 100, @isscalar);
            p.parse(requiredProp, varargin{:});
            
            % Add inputs to object properties
            obj.requiredProp = requiredProp;
            obj.optionalProp1 = p.Results.optionalProp1;
            obj.optionalProp2 = p.Results.optionalProp2;

        end

        function doThis(obj)
        % doThis - Do this thing
        %   Here is some help text for the doThis method.
        %
        %   See also DOTHAT.

        end

        function doThat(obj)
        end
    end

    %% Static Methods
    methods (Static)
        % Methods unrelated to a single object
    end

    %% Private Methods
    methods (Access = private)
        % Methods that should not be seen by the user

        % Functions stored in a separate 'm' file listed out
        separateMfileFunction(input1, input2)
        % Now can be used with qplot.separateMfileFunction(input1, input2)
    end

end
