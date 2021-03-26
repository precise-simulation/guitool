function test_vbox_2(uilib)
%TEST_VBOX_2 Vertical box GUI layout test 2

if( ~nargin )
  uilib = 'uitk';
end

switch( uilib )

  case 'uitk'
    fig = figure('MenuBar','none','ToolBar','none');
    vbox = uitkVBox( 'Parent', fig );
    hbox = uitkHBox( 'Parent', vbox );
    uicontrol( 'Parent', hbox, 'String', 'Button 1' )
    uicontrol( 'Parent', hbox, 'String', 'Button 2' )
    uitkHBox( hbox, 'Sizes', [-1 -1] );
    uicontrol( 'Style', 'frame', 'Parent', vbox, 'Background', 'b' )
    uitkVBox( vbox, 'Sizes', [100 -1] );
    uitkRedraw( fig )

  case 'uiextras'
    fig = figure('MenuBar','none','ToolBar','none');
    vbox = uiextras.VBox( 'Parent', fig );
    hbox = uiextras.HBox( 'Parent', vbox );
    uicontrol( 'Parent', hbox, 'String', 'Button 1' )
    uicontrol( 'Parent', hbox, 'String', 'Button 2' )
    set( hbox, 'Sizes', [-1 -1] );
    uicontrol( 'Style', 'frame', 'Parent', vbox, 'Background', 'b' )
    set( vbox, 'Sizes', [100 -1] );

  case 'uix'
    fig = figure('MenuBar','none','ToolBar','none');
    vbox = uix.VBox( 'Parent', fig );
    hbox = uix.HBox( 'Parent', vbox );
    uicontrol( 'Parent', hbox, 'String', 'Button 1' )
    uicontrol( 'Parent', hbox, 'String', 'Button 2' )
    set( hbox, 'Widths', [-1 -1] );
    uicontrol( 'Style', 'frame', 'Parent', vbox, 'Background', 'b' )
    set( vbox, 'Heights', [100 -1] );

end
