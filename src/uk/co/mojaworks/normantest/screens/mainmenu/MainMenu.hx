package uk.co.mojaworks.normantest.screens.mainmenu;

import openfl.text.TextFormat;
import uk.co.mojaworks.norman.components.display.Display;
import uk.co.mojaworks.norman.components.display.Fill;
import uk.co.mojaworks.norman.components.display.Image;
import uk.co.mojaworks.norman.components.display.Text;
import uk.co.mojaworks.norman.components.input.TouchListener;
import uk.co.mojaworks.norman.components.Prefab;
import uk.co.mojaworks.norman.components.ui.Button;
import uk.co.mojaworks.norman.core.GameObject;

/**
 * ...
 * @author Simon
 */
class MainMenu extends Prefab
{

	public function new() 
	{
		super();
	}
	
	override function construct() : Void 
	{
		super.construct();
		
		var menu : MainMenuView = new MainMenuView();
		
		// Set up the menu object here - should have access to privates as in same class
		gameObject.add( menu );
		gameObject.add( new Fill( 0x0000FF, 1, 1000, 600 ) );
		
		menu.button = new GameObject().add( new Display() ).add( new TouchListener() );
		var button : Button = new Button();
		button.setup( new Fill( 0xFF0000, 1, 100, 100 ), new Fill( 0x00FF00, 1, 100, 100 ) );
		menu.button.add( button );
		gameObject.addChild( menu.button );
		
		var text : Text = new Text( "Hello World" );
		var cover : GameObject = new GameObject().add( text );
		cover.add( new TouchListener() );
		cover.transform.setPosition( 50, 50 );
		gameObject.addChild( cover );
		
	}
	
}