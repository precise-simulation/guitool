function test_tabpanel_1(uilib)
%TEST_TABPANEL_1 Tab panel GUI layout test

if( ~nargin )
  uilib = 'uitk';
end

switch( uilib )

  case 'uitk'
    fig = figure('MenuBar','none','ToolBar','none');
    pnl = uitkTabPanel( 'Parent', fig );
    p1 = uitkTabPanel( pnl, 'tab 1' );
    p2 = uitkTabPanel( pnl, 'tab 2' );
    p3 = uitkTabPanel( pnl, 'tab 3' );
    uicontrol( 'Style', 'frame', 'Parent', p1, 'Background', 'r', ...
               'Units', 'normalized', 'Position', [0 0 1 1] );
    uicontrol( 'Style', 'frame', 'Parent', p2, 'Background', 'g', ...
               'Units', 'normalized', 'Position', [0 0 1 1] );
    uicontrol( 'Style', 'frame', 'Parent', p3, 'Background', 'b', ...
               'Units', 'normalized', 'Position', [0 0 1 1] );
    uitkRedraw( fig )

  case 'uiextras'
    fig = figure('MenuBar','none','ToolBar','none');
    pnl = uiextras.TabPanel( 'Parent', fig );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'r' );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'g' );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'b' );
    pnl.TabNames = { 'tab 1', 'tab 2', 'tab 3' };

  case 'uix'
    fig = figure('MenuBar','none','ToolBar','none');
    pnl = uix.TabPanel( 'Parent', fig );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'r' );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'g' );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'b' );
    pnl.TabTitles = { 'tab 1', 'tab 2', 'tab 3' };

end
