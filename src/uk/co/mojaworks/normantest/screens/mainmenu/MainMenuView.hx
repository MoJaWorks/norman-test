package uk.co.mojaworks.normantest.screens.mainmenu ;

import uk.co.mojaworks.norman.components.ui.View;
import uk.co.mojaworks.norman.core.GameObject;

/**
 * ...
 * @author Simon
 */
class MainMenuView extends View
{
	public var button : GameObject;
	
	public function new() 
	{
		super();
	}
	
	override public function onUpdate(seconds:Float):Void 
	{
		super.onUpdate(seconds);
		
		button.get(View).onUpdate( seconds );
	}
	
}