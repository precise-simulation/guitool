function obj=uitkVBox(varargin)
%UITKVBOX Create/update uitk GUI container for a vertical single row layout
%
%   OBJ = UITKVBOX() Creates a new vertical box layout with
%   all parameters set to default. The optional output is an uitk
%   uipanel object handle which can be used as a parent container
%   for other nested uitk, uicontrol, and uipanel components.
%
%   OBJ = UITKVBOX( PARAM, VALUE, ... ) Creates a new vertical box layout
%   and sets one or more parameter values.
%
%   OBJ = UITKVBOX( OBJ, PARAM, VALUE, ... ) Updates the parameter value
%   pairs of object uitkVBox object with handle OBJ.
%
%   Accepts the following parameter/value pairs.
%
%       Property      Value/{Default}      Description
%       -----------------------------------------------------------------------------------
%       parent        handle               Handle to parent object
%       padding       scalar/array {0}     (Horizontal/vertical) pixel size of border
%       spacing       scalar/array {0}     (Row/column) pixel spacing between elements
%       sizes         scalar {-1}          Prescribed row pixel sizes (or ratio if <0)
%       minimumsizes  scalar  {0}          Minimum pixel size of rows
%
%   Example 1:
%
%     fig = figure();
%     vbox = uitkVBox( 'Parent', fig );
%     uicontrol( 'Parent', vbox, 'Background', 'r' )
%     uicontrol( 'Parent', vbox, 'Background', 'b' )
%     uicontrol( 'Parent', vbox, 'Background', 'g' )
%     uitkVBox( vbox, 'Sizes', [-1 100 -2], 'Spacing', 5 );
%     uitkRedraw( fig )
%
%   Example 2:
%
%     fig = figure();
%     vbox = uitkVBox( 'Parent', fig );
%     hbox = uitkHBox( 'Parent', vbox );
%     uicontrol( 'Parent', hbox, 'String', 'Button 1' )
%     uicontrol( 'Parent', hbox, 'String', 'Button 2' )
%     uitkHBox( hbox, 'Sizes', [-1 -1] );
%     uicontrol( 'Style', 'frame', 'Parent', vbox, 'Background', 'b' )
%     uitkVBox( vbox, 'Sizes', [100 -1] );
%     uitkRedraw( fig )
%
%   See also uitkHBox, uitkGrid, uitkBoxPanel, and uitkTabPanel

% Copyright 2013-2021 Precise Simulation, Ltd.

