function test_grid_1(uilib)
%TEST_GRID_1 Grid GUI layout test

if( ~nargin )
  uilib = 'uitk';
end

switch( uilib )

  case 'uitk'
    fig = figure('MenuBar','none','ToolBar','none');
    grd = uitkGrid( 'Parent', fig, 'Spacing', 5 );
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'r' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'b' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'g' )
    uipanel(   'Parent', grd, 'BorderType', 'none' )   % Empty container.
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'c' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'y' )
    uitkGrid( grd, 'ColumnSizes', [-1 100 -2], 'RowSizes', [-1 100] );
    uitkRedraw( fig )

  case 'uiextras'
    fig = figure('MenuBar','none','ToolBar','none');
    grd = uiextras.Grid( 'Parent', fig, 'Spacing', 5 );
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'r' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'b' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'g' )
    uipanel(   'Parent', grd, 'BorderType', 'none' )   % Empty container.
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'c' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'y' )
    set( grd, 'ColumnSizes', [-1 100 -2], 'RowSizes', [-1 100] );

  case 'uix'
    fig = figure('MenuBar','none','ToolBar','none');
    grd = uix.Grid( 'Parent', fig, 'Spacing', 5 );
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'r' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'b' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'g' )
    uipanel(   'Parent', grd, 'BorderType', 'none' )   % Empty container.
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'c' )
    uicontrol( 'Style', 'frame', 'Parent', grd, 'Background', 'y' )
    set( grd, 'Widths', [-1 100 -2], 'Heights', [-1 100] );

end
