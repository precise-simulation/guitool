function obj=uitkBoxPanel(varargin)
%UITKBOXPANEL Show one element inside a box panel
%
%   OBJ = UITKBOXPANEL() Creates a box-styled panel object with
%   automatic management of the contained widget or layout. The
%   properties available are largely the same as the builtin UIPANEL
%   object. The optional output is an uitk uipanel object handle
%   which can be used as a parent container for other nested uitk,
%   uicontrol, and uipanel components.
%
%   OBJ = UITKBOXPANEL( PARAM, VALUE, ... ) Also sets one or more
%   property values.
%
%   OBJ = UITKBOXPANEL( OBJ, PARAM, VALUE, ... ) Updates the parameter
%   value pairs of object uitkGrid object with handle OBJ.
%
%   Accepts the following parameter/value pairs.
%
%       Property            Value/{Default}      Description
%       -----------------------------------------------------------------------------------
%       parent              handle               Handle to parent object
%       titletext           str {}               Panel title text
%       titlefontname       str {arial}          Panel font
%       titlefontsize       scalar {14}          Panel font size
%       titlefontcolor      array {[.78 .86 1]}  Panel title color
%
%   Example:
%
%     fig = figure();
%     pnl = uitkBoxPanel( 'Parent', fig, 'TitleText', 'A BoxPanel' );
%     uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'r', ...
%                'Units', 'normalized', 'Position', [0 0 1 1] )
%     uitkRedraw( fig )
%
%   See also uitkHBox, uitkVBox, uitkGrid, and uitkTabPanel

% Copyright 2013-2021 Precise Simulation, Ltd.

