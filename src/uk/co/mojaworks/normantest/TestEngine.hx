package uk.co.mojaworks.normantest;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.display.FillSprite;
import uk.co.mojaworks.norman.display.ImageSprite;
import uk.co.mojaworks.norman.display.RenderSprite;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.systems.Systems;
import uk.co.mojaworks.norman.utils.Color;

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
	
	override function onStartupComplete() 
	{
		super.onStartupComplete();
		
		var b : FillSprite = new FillSprite( Color.GREEN, Systems.viewport.stageWidth, Systems.viewport.stageHeight );
		Systems.view.root.addChild( b );
		
		var s : RenderSprite = new RenderSprite( );
		s.transform.x = 0;
		s.transform.y = 0;
		//s.transform.rotationDegrees = 45;
		Systems.view.root.addChild( s );
		
		var f : FillSprite = new FillSprite( Color.RED, 100, 100 );
		f.transform.x = 0;
		f.transform.y = 0;
		//f.transform.rotationDegrees = 45;
		s.addChild( f );
		
	}
		
}