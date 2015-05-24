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
		
		var b : FillSprite = new FillSprite( Color.RED, Systems.viewport.stageWidth, Systems.viewport.stageHeight );
		Systems.view.root.addChild( b );
		trace("b = ", b.id );
		
		var o : ImageSprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png"), "barrel.png" );
		o.color.a = 0.5;
		o.transform.x = 300;
		o.transform.y = 20;
		o.transform.scaleX = 2;
		o.transform.scaleY = 2;
		//f.transform.rotationDegrees = 45;
		Systems.view.root.addChild( o );
		trace("o = ", o.id );
		
		var s : RenderSprite = new RenderSprite( 200, 200 );
		//s.alpha = 0.5;
		s.transform.x = 0;
		s.transform.y = 0;
		//s.transform.rotationDegrees = 45;
		Systems.view.root.addChild( s );
		trace("s = ", s.id );
		
		var f : ImageSprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png"), "barrel.png" );
		//f.color.a = 0.5;
		//f.color.r = 0;
		f.alpha = 0.5;
		f.transform.x = 20;
		f.transform.y = 20;
		f.transform.scaleX = 2;
		f.transform.scaleY = 2;
		//f.transform.rotationDegrees = 45;
		s.addChild( f );
		trace("f = ", f.id );
		
	}
		
}