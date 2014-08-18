classdef scale_x_discrete < scale
    %SCALE_X_DISCRETE - One line summary of this class goes here
    %   SCALE_X_DISCRETE has a first line of the description of myClass, but
    %   descriptions can include multiple lines of text if needed.
    %
    % SYNTAX:
    %   myObject = scale_x_discrete( 'breaks', [10, 20, 30], 'labels', {'a', 'b', 'c'})
    %
    % Description:
    %   myObject = scale_x_discrete( requiredProp ) further description about the use
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
    properties
        VALID_SCALES = {'name', 'limits', 'labels', ...
            'breaks', 'trans'}
    end
    
    %% Methods
    methods
        % SCALE_X_DISCRETE Constructor
        function self = scale_x_discrete(varargin)
            self@scale();
        end


    end

end
