package uk.co.mojaworks.normantest;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.NormanApp;

/**
 * ...
 * @author Simon
 */
class TestEngine extends NormanApp
{
	
	public function new() {
		
		var config : NormanConfigData = new NormanConfigData();
		config.targetScreenWidth = 720;
		config.targetScreenHeight = 1280;
		
		super( config );
	}
	
	//var screen : GameObject;
//
	//public function new(stage) 
	//{
		//super( stage, 1000, 600 );
		//
	//}
		//
	//override function onStartupComplete():Void 
	//{
		//super.onStartupComplete();
		//
		//screen = new GameObject().add( new MainMenu() );
		//root.get(Director).moveToView( screen );
		//
	//}
	//
	//override public function onUpdate(seconds:Float):Void 
	//{
		//super.onUpdate(seconds);
	//}
	
}