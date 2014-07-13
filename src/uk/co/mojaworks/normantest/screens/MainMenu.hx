package uk.co.mojaworks.normantest.screens;

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
		object.add( new Image( "img/zombie.png" ) );
		object.get( Image ).blue = 0;
		object.get( Image ).red = 0;
		
		var child : GameObject = new GameObject().add( new Fill( 0xFF0000, 1, 100, 100 ) );
		child.transform.x = 600;
		object.addChild( child );
		
		return object;
		
	}
	
	public function new() 
	{
		super();
		
	}
	
}