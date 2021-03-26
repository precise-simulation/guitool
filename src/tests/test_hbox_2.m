function test_hbox_2(uilib)
%TEST_HBOX_2 Horizontal box GUI layout test 2

if( ~nargin )
  uilib = 'uitk';
end

switch( uilib )

  case 'uitk'
    fig = figure('MenuBar','none','ToolBar','none');
    hbox = uitkHBox( 'Parent', fig );
    vbox = uitkVBox( 'Parent', hbox );
    uicontrol( 'Parent', vbox, 'String', 'Button 1' )
    uicontrol( 'Parent', vbox, 'String', 'Button 2' )
    uitkVBox( vbox, 'Sizes', [-1 -1] );
    uicontrol( 'Style', 'frame', 'Parent', hbox, 'Background', 'b' )
    uitkHBox( hbox, 'Sizes', [100 -1] );
    uitkRedraw( fig )

  case 'uiextras'
    fig = figure('MenuBar','none','ToolBar','none');
    hbox = uiextras.HBox( 'Parent', fig );
    vbox = uiextras.VBox( 'Parent', hbox );
    uicontrol( 'Parent', vbox, 'String', 'Button 1' )
    uicontrol( 'Parent', vbox, 'String', 'Button 2' )
    set( vbox, 'Sizes', [-1 -1] );
    uicontrol( 'Style', 'frame', 'Parent', hbox, 'Background', 'b' )
    set( hbox, 'Sizes', [100 -1] );

  case 'uix'
    fig = figure('MenuBar','none','ToolBar','none');
    hbox = uix.HBox( 'Parent', fig );
    vbox = uix.VBox( 'Parent', hbox );
    uicontrol( 'Parent', vbox, 'String', 'Button 1' )
    uicontrol( 'Parent', vbox, 'String', 'Button 2' )
    set( vbox, 'Heights', [-1 -1] );
    uicontrol( 'Style', 'frame', 'Parent', hbox, 'Background', 'b' )
    set( hbox, 'Widths', [100 -1] );

end
