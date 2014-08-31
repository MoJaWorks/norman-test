package uk.co.mojaworks.normantest.screens.mainmenu ;

import uk.co.mojaworks.norman.components.director.ui.View;
import uk.co.mojaworks.norman.components.display.Text;
import uk.co.mojaworks.norman.core.GameObject;

/**
 * ...
 * @author Simon
 */
class MainMenuView extends View
{
	public var button : GameObject;
	public var text : GameObject;
	
	public function new() 
	{
		super();
	}
	
	override public function onUpdate(seconds:Float):Void 
	{
		super.onUpdate(seconds);
		
		button.get(View).onUpdate( seconds );
		
		text.get(Text).setText( Std.string((Std.parseInt( text.get(Text).text )) + 1) );
	}
	
}