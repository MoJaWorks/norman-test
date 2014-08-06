package uk.co.mojaworks.normantest.screens.mainmenu;

import openfl.geom.Rectangle;
import uk.co.mojaworks.norman.components.director.View;
import uk.co.mojaworks.norman.components.display.Fill;
import uk.co.mojaworks.norman.components.display.Image;
import uk.co.mojaworks.norman.components.input.TouchListener;
import uk.co.mojaworks.norman.components.Prefab;
import uk.co.mojaworks.norman.core.Core;
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
		gameObject.add( new Fill( 0xFF0000, 1, 1000, 600 ) );
		gameObject.display.clipRect = new Rectangle( 50, 50, 150, 150 );
		gameObject.transform.x = 200;
		gameObject.transform.y = 200;
		gameObject.transform.rotation = 0.5;
		gameObject.add( new TouchListener() );		
		
		menu.child = new GameObject().add( new Image( "img/zombie.png" ) );
		menu.child.add( new TouchListener() );
		menu.child.display.clipRect = new Rectangle( 100, 100, 50, 50 );
		gameObject.addChild( menu.child );
		
		
		trace( menu.child.findAncestorThatHas(View) );
	}
	
}