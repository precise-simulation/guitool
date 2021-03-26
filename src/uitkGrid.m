function obj=uitkGrid(varargin)
%UITKGRID Arrange GUI elements in a grid layout
%
%   OBJ = UITKGRID() Creates a new new grid layout with all
%   properties set to defaults. The number of rows and columns to use
%   is determined from the number of elements in the RowSizes and
%   ColumnSizes properties respectively. Child elements are arranged
%   down column one first, then column two etc. The optional output is
%   an uitk uipanel object handle which can be used as a parent
%   container for other nested uitk, uicontrol, and uipanel components.
%
%   OBJ = UITKGRID( PARAM, VALUE, ... ) Creates a new grid box layout
%   and sets one or more parameter values.
%
%   OBJ = UITKGRID( OBJ, PARAM, VALUE, ... ) Updates the parameter value
%   pairs of object uitkGrid object with handle OBJ.
%
%   Accepts the following parameter/value pairs.
%
%       Property            Value/{Default}   Description
%       -----------------------------------------------------------------------------------
%       parent              handle            Handle to parent object
%       padding             scalar/array {0}  (Horizontal/vertical) pixel size of border
%       spacing             scalar/array {0}  (Row/column) pixel spacing between elements
%       rowsizes            scalar {-1}       Prescribed pixel row sizes (or ratio if <0)
%       minimumrowsizes     scalar  {0}       Minimum pixel size of rows
%       columnsizes         scalar {-1}       Prescribed pixel col sizes (or ratio if <0)
%       minimumcolumnsizes  scalar  {0}       Minimum pixel size of columns
%
%   Example:
%
%     fig = figure();
%     grd = uitkGrid( 'Parent', fig, 'Spacing', 5 );
%     uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'r' )
%     uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'b' )
%     uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'g' )
%     uipanel(   'Parent', grd, 'BorderType', 'none' )   % Empty container.
%     uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'c' )
%     uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'y' )
%     uitkGrid( grd, 'ColumnSizes', [-1 100 -2], 'RowSizes', [-1 100] );
%     uitkRedraw( fig )
%
%   See also uitkHBox, uitkVBox, uitkBoxPanel, and uitkTabPanel

% Copyright 2013-2021 Precise Simulation, Ltd.

