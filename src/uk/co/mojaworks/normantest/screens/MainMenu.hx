package uk.co.mojaworks.normantest.screens;

import openfl.geom.Rectangle;
import uk.co.mojaworks.norman.components.director.View;
import uk.co.mojaworks.norman.components.display.Display;
import uk.co.mojaworks.norman.components.display.Fill;
import uk.co.mojaworks.norman.components.display.Image;
import uk.co.mojaworks.norman.core.GameObject;

/**
 * ...
 * @author Simon
 */
class MainMenu extends View
{

	public static function construct() : GameObject {
		
		var object : GameObject = new GameObject();
		var menu : MainMenu = new MainMenu();
		
		// Set up the menu object here - should have access to privates as in same class
		
		object.add( menu );
		object.add( new Fill( 0xFF0000, 0.2, 1000, 600 ) );
		
		var child : GameObject = new GameObject().add( new Image( "img/zombie.png" ) );
		child.transform.x = 100;
		child.transform.y = 0;
		child.display.clipRect = new Rectangle( 0, 0, 100, 100 );
		object.addChild( child );
		
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