function tests = test_themes
%TEST_themes Summary of this function goes here
%   Detailed explanation goes here
tests = functiontests(localfunctions);
end

%% Test Functions
function test_theme_class_init(testCase)
import themes.*
tm = theme();
end

function test_theme_gray_class_init(testCase)
import themes.*
tm = theme_gray();
end

%% Optional file fixtures  
function setupOnce(testCase)  % do not change function name
% set a new path, for example
end

function teardownOnce(testCase)  % do not change function name
% change back to original path, for example
end

%% Optional fresh fixtures  
function setup(testCase)  % do not change function name
% open a figure, for example
end

function teardown(testCase)  % do not change function name
% close figure, for example
end