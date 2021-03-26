function test_hbox_1(uilib)
%TEST_HBOX_1 Horizontal box GUI layout test 1

if( ~nargin )
  uilib = 'uitk';
end

switch( uilib )

  case 'uitk'
    fig = figure('MenuBar','none','ToolBar','none');
    hbox = uitkHBox( 'Parent', fig );
    uicontrol( 'Parent', hbox, 'Background', 'r' )
    uicontrol( 'Parent', hbox, 'Background', 'b' )
    uicontrol( 'Parent', hbox, 'Background', 'g' )
    uitkHBox( hbox, 'Sizes', [-1 100 -2], 'Spacing', 5 );
    uitkRedraw( fig )

  case 'uiextras'
    fig = figure('MenuBar','none','ToolBar','none');
    hbox = uiextras.HBox( 'Parent', fig );
    uicontrol( 'Parent', hbox, 'Background', 'r' )
    uicontrol( 'Parent', hbox, 'Background', 'b' )
    uicontrol( 'Parent', hbox, 'Background', 'g' )
    set( hbox, 'Sizes', [-1 100 -2], 'Spacing', 5 );

  case 'uix'
    fig = figure('MenuBar','none','ToolBar','none');
    hbox = uix.HBox( 'Parent', fig );
    uicontrol( 'Parent', hbox, 'Background', 'r' )
    uicontrol( 'Parent', hbox, 'Background', 'b' )
    uicontrol( 'Parent', hbox, 'Background', 'g' )
    set( hbox, 'Widths', [-1 100 -2], 'Spacing', 5 );

end
