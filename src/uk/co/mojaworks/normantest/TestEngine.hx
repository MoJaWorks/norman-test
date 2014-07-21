package uk.co.mojaworks.normantest;

import uk.co.mojaworks.norman.components.director.Director;
import uk.co.mojaworks.norman.components.display.Display;
import uk.co.mojaworks.norman.components.engine.GameEngine;
import uk.co.mojaworks.norman.core.GameObject;
import uk.co.mojaworks.normantest.screens.MainMenu;

/**
 * ...
 * @author Simon
 */
class TestEngine extends GameEngine
{
	var screen:GameObject;

	public function new(stage) 
	{
		super(stage);
		
	}
		
	override function onStartupComplete():Void 
	{
		super.onStartupComplete();
		
		screen = MainMenu.construct();
		core.root.get(Director).showScreen( screen );
		
	}
	
	override public function onUpdate(seconds:Float):Void 
	{
		super.onUpdate(seconds);
		screen.transform.rotation += 0.01;
		
		//trace(screen.display.getBounds( core.root ));
	}
	
}