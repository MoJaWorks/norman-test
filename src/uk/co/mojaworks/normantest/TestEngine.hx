package uk.co.mojaworks.normantest;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.display.FillSprite;
import uk.co.mojaworks.norman.display.ImageSprite;
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
		
		Systems.view.root.addChild( new FillSprite( Color.GREEN, Systems.viewport.stageWidth, Systems.viewport.stageHeight ) );
		
		var s : ImageSprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ) );
		s.transform.x = 100;
		s.transform.y = 100;
		//s.transform.rotationDegrees = 45;
		Systems.view.root.addChild( s );
		
		var f : FillSprite = new FillSprite( Color.RED, 100, 100 );
		f.transform.x = 300;
		f.transform.y = 100;
		//f.transform.rotationDegrees = 45;
		s.addChild( f );
		
	}
		
}