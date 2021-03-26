function test_boxpanel_1(uilib)
%TEST_BOXPANEL_1 Box panel GUI layout test

if( ~nargin )
  uilib = 'uitk';
end

switch( uilib )

  case 'uitk'
    fig = figure('MenuBar','none','ToolBar','none');
    pnl = uitkBoxPanel( 'Parent', fig, 'TitleText', 'A BoxPanel' );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'r', ...
               'Units', 'normalized', 'Position', [0 0 1 1] )
    uitkRedraw( fig )

  case 'uiextras'
    fig = figure('MenuBar','none','ToolBar','none');
    pnl = uiextras.BoxPanel( 'Parent', fig, 'Title', 'A BoxPanel' );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'r' )

  case 'uix'
    fig = figure('MenuBar','none','ToolBar','none');
    pnl = uix.BoxPanel( 'Parent', fig, 'Title', 'A BoxPanel' );
    uicontrol( 'Style', 'frame', 'Parent', pnl, 'Background', 'r' )
end
