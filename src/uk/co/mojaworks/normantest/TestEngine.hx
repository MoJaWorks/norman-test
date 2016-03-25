package uk.co.mojaworks.normantest;
import haxe.Timer;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.components.Transform;
import uk.co.mojaworks.norman.components.renderer.BaseRenderer;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.factory.GameObject;

/**
 * ...
 * @author Simon
 */
class TestEngine extends NormanApp
{
	var mask:GameObject;
	public function new() {
		
		var config : NormanConfigData = new NormanConfigData();
		config.targetScreenWidth = 480;
		config.targetScreenHeight = 800;
		
		super( config );
	}
	
	override function onStartupComplete() 
	{
		super.onStartupComplete();
		
		var start = Timer.stamp();
		
		for ( i in 0...999 ) {
			var transform : Transform = core.view.root.getThing( Transform );
		}
		
		var elapsed = Timer.stamp() - start;
		trace("Get took " + elapsed + " seconds");
		
		start = Timer.stamp();
		
		for ( i in 0...999 ) {
			var transform : Transform = cast core.view.root.getComponent( Transform.TYPE );
		}
		
		elapsed = Timer.stamp() - start;
		trace("getComponent took " + elapsed + " seconds");
	}
		
}