package uk.co.mojaworks.normantest;
import motion.Actuate;
import motion.easing.Linear;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.display.FillSprite;
import uk.co.mojaworks.norman.display.ImageSprite;
import uk.co.mojaworks.norman.display.RenderSprite;
import uk.co.mojaworks.norman.display.Sprite;
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
		
		var o : Sprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png"), "barrel.png" );
		o.alpha = 0;
		o.transform.x = 300;
		o.transform.y = 20;
		o.transform.scaleX = 2;
		o.transform.scaleY = 2;
		Systems.view.root.addChild( o );
		
		var s : RenderSprite = new RenderSprite( 200, 200 );
		Systems.view.root.addChild( s );
		
		var f : ImageSprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png"), "barrel.png" );
		f.alpha = 0;
		f.transform.x = 20;
		f.transform.y = 20;
		f.transform.scaleX = 2;
		f.transform.scaleY = 2;
		s.addChild( f );
		
		Actuate.tween( f, 3, { alpha: 1 } ).repeat( 200 ).ease( Linear.easeNone );
		Actuate.tween( o, 3, { alpha: 1 } ).repeat( 200 ).ease( Linear.easeNone );
		
	}
		
}