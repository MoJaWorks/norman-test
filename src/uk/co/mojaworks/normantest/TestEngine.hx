package uk.co.mojaworks.normantest;

import uk.co.mojaworks.norman.components.director.Director;
import uk.co.mojaworks.norman.core.GameObject;
import uk.co.mojaworks.norman.engine.NormanApp;
import uk.co.mojaworks.normantest.screens.mainmenu.MainMenu;

/**
 * ...
 * @author Simon
 */
class TestEngine extends NormanApp
{
	var screen : GameObject;

	public function new(stage) 
	{
		super( stage, 1000, 600 );
		
	}
		
	override function onStartupComplete():Void 
	{
		super.onStartupComplete();
		
		screen = new GameObject().add( new MainMenu() );
		root.get(Director).moveToView( screen );
		
		//core.root.addChild( new GameObject().add( new Fill( 0x0000FF, 1, 100, 100 ) ) );
		
	}
	
	override public function onUpdate(seconds:Float):Void 
	{
		super.onUpdate(seconds);
		//screen.transform.rotation += 0.01;
		
		//trace(screen.display.getBounds( core.root ));
	}
	
}