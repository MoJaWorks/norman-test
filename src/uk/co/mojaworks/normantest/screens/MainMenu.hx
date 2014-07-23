package uk.co.mojaworks.normantest.screens;

import openfl.geom.Rectangle;
import uk.co.mojaworks.norman.components.director.View;
import uk.co.mojaworks.norman.components.display.Display;
import uk.co.mojaworks.norman.components.display.Fill;
import uk.co.mojaworks.norman.components.display.Image;
import uk.co.mojaworks.norman.core.Core;
import uk.co.mojaworks.norman.core.GameObject;

/**
 * ...
 * @author Simon
 */
class MainMenu extends View
{
	public var child:GameObject;

	public static function construct() : GameObject {
		
		var object : GameObject = new GameObject();
		var menu : MainMenu = new MainMenu();
		
		// Set up the menu object here - should have access to privates as in same class
		
		object.add( menu );
		object.add( new Fill( 0xFF0000, 1, 1000, 600 ) );
		object.display.clipRect = new Rectangle( 0, 0, 300, 300 );
		object.transform.x = 200;
		object.transform.y = 200;
		//object.transform.rotation = 0.5;
		
		menu.child = new GameObject().add( new Image( "img/zombie.png" ) );
		//child.transform.x = 100;
		//child.transform.y = 0;
		//menu.child.transform.rotation = 0.25;
		menu.child.display.clipRect = new Rectangle( 0, 0, 50, 50 );
		object.addChild( menu.child );
		
		trace(object.display.getBounds( Core.instance.root ));
			
		//var child2 : GameObject = new GameObject().add( new Image( "img/zombie.png", "barrel.png" ) );
		//child2.transform.y = 200;
		//object.addChild( child2 );
				
		return object;
		
	}
	
	public function new() 
	{
		super();
		
	}
	
}