function obj=uitkHBox(varargin)
%UITKHBOX Create/update uitk GUI container for a horizontal single row layout
%
%   OBJ = UITKHBOX() Creates a new horizontal box layout with
%   all parameters set to default. The optional output is an uitk
%   uipanel object handle which can be used as a parent container
%   for other nested uitk, uicontrol, and uipanel components.
%
%   OBJ = UITKHBOX( PARAM, VALUE, ... ) Creates a new horizontal box layout
%   and sets one or more parameter values.
%
%   OBJ = UITKHBOX( OBJ, PARAM, VALUE, ... ) Updates the parameter value
%   pairs of object uitkHBox object with handle OBJ.
%
%   Accepts the following parameter/value pairs.
%
%       Property      Value/{Default}      Description
%       -----------------------------------------------------------------------------------
%       parent        handle               Handle to parent object
%       padding       scalar/array {0}     (Horizontal/vertical) pixel size of border
%       spacing       scalar/array {0}     (Row/column) pixel spacing between elements
%       sizes         scalar {-1}          Prescribed pixel col sizes (or ratio if <0)
%       minimumsizes  scalar  {0}          Minimum pixel size of columns
%
%   Example 1:
%
%     fig = figure();
%     hbox = uitkHBox( 'Parent', fig );
%     uicontrol( 'Parent', hbox, 'Background', 'r' )
%     uicontrol( 'Parent', hbox, 'Background', 'b' )
%     uicontrol( 'Parent', hbox, 'Background', 'g' )
%     uitkHBox( hbox, 'Sizes', [-1 100 -2], 'Spacing', 5 );
%     uitkRedraw( fig )
%
%   Example 2:
%
%     fig = figure();
%     hbox = uitkHBox( 'Parent', fig );
%     vbox = uitkVBox( 'Parent', hbox );
%     uicontrol( 'Parent', vbox, 'String', 'Button 1' )
%     uicontrol( 'Parent', vbox, 'String', 'Button 2' )
%     uitkVBox( vbox, 'Sizes', [-1 -1] );
%     uicontrol( 'Style', 'frame', 'Parent', hbox, 'Background', 'b' )
%     uitkHBox( hbox, 'Sizes', [100 -1] );
%     uitkRedraw( fig )
%
%   See also uitkVBox, uitkGrid, uitkBoxPanel, and uitkTabPanel

% Copyright 2013-2021 Precise Simulation, Ltd.

