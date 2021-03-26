function [hTabPanel,hTabCtrl]=uitkTabPanel(varargin)
%UITKTABPANEL Create an uitk panel with tabs
%
%   HTABPANEL = UITKTABPANEL() Creates a panel with tabs along the
%   top edge to allow selection between the different tabs. The
%   optional outputs are an uitk uipanel object handle HTABPANEL
%   which can be used as a parent container for other nested uitk,
%   uicontrol, and uipanel components.
%
%   HTABCTRL = UITKTABPANEL( OBJ, STR, PARAM, VALUE, ... )
%   Creates a new tab with title STR and returns its handle HTABCTRL and
%   optionally updates the parameter value pairs of object with handle OBJ.
%
%   Accepts the following parameter/value pairs.
%
%       Property      Value/{Default}      Description
%       -----------------------------------------------------------------------------------
%       parent        handle               Handle to parent object
%       tabsize       scalar {14}          Width of tab in pixels
%       tabfontsize   scalar {14}          Font size of tab title
%
%   Example:
%
%     fig = figure();
%     pnl = uitkTabPanel( 'Parent', fig );
%     p1 = uitkTabPanel( pnl, 'tab 1' );
%     p2 = uitkTabPanel( pnl, 'tab 2' );
%     p3 = uitkTabPanel( pnl, 'tab 3' );
%     uicontrol( 'Style', 'frame', 'Parent', p1, 'Background', 'r', ...
%                'Units', 'normalized', 'Position', [0 0 1 1] );
%     uicontrol( 'Style', 'frame', 'Parent', p2, 'Background', 'g', ...
%                'Units', 'normalized', 'Position', [0 0 1 1] );
%     uicontrol( 'Style', 'frame', 'Parent', p3, 'Background', 'b', ...
%                'Units', 'normalized', 'Position', [0 0 1 1] );
%     uitkRedraw( fig )
%
%   See also uitkHBox, uitkVBox, uitkGrid, and uitkBoxPanel

% Copyright 2013-2021 Precise Simulation, Ltd.

