function test_vbox_1(uilib)
%TEST_VBOX_1 Vertical box GUI layout test 1

if( ~nargin )
  uilib = 'uitk';
end

switch( uilib )

  case 'uitk'
    fig = figure('MenuBar','none','ToolBar','none');
    vbox = uitkVBox( 'Parent', fig );
    uicontrol( 'Parent', vbox, 'Background', 'r' )
    uicontrol( 'Parent', vbox, 'Background', 'b' )
    uicontrol( 'Parent', vbox, 'Background', 'g' )
    uitkVBox( vbox, 'Sizes', [-1 100 -2], 'Spacing', 5 );
    uitkRedraw( fig )

  case 'uiextras'
    fig = figure('MenuBar','none','ToolBar','none');
    vbox = uiextras.VBox( 'Parent', fig );
    uicontrol( 'Parent', vbox, 'Background', 'r' )
    uicontrol( 'Parent', vbox, 'Background', 'b' )
    uicontrol( 'Parent', vbox, 'Background', 'g' )
    set( vbox, 'Sizes', [-1 100 -2], 'Spacing', 5 );

  case 'uix'
    fig = figure('MenuBar','none','ToolBar','none');
    vbox = uix.VBox( 'Parent', fig );
    uicontrol( 'Parent', vbox, 'Background', 'r' )
    uicontrol( 'Parent', vbox, 'Background', 'b' )
    uicontrol( 'Parent', vbox, 'Background', 'g' )
    set( vbox, 'Heights', [-1 100 -2], 'Spacing', 5 );

end
