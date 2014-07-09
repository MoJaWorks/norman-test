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

	public function new(stage) 
	{
		super(stage);
		
	}
		
	override function onStartupComplete():Void 
	{
		super.onStartupComplete();
		
		var screen : GameObject = MainMenu.construct();
		core.root.get(Director).showScreen( screen );
		
	}
	
}