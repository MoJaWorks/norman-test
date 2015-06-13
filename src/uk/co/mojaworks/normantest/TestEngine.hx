package uk.co.mojaworks.normantest;
import motion.Actuate;
import motion.easing.Linear;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.debug.FPS;
import uk.co.mojaworks.norman.display.FillSprite;
import uk.co.mojaworks.norman.display.ImageSprite;
import uk.co.mojaworks.norman.display.RenderSprite;
import uk.co.mojaworks.norman.display.Sprite;
import uk.co.mojaworks.norman.display.TextSprite;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.systems.Systems;
import uk.co.mojaworks.norman.utils.Color;
import uk.co.mojaworks.norman.utils.FontUtils;

/**
 * ...
 * @author Simon
 */
class TestEngine extends NormanApp
{
	var fps:FPS;
	
	public function new() {
		
		var config : NormanConfigData = new NormanConfigData();
		config.targetScreenWidth = 720;
		config.targetScreenHeight = 1280;
		
		super( config );
	}
	
	override function onStartupComplete() 
	{
		super.onStartupComplete();
		
		var b : FillSprite = new FillSprite( Color.BLUE, Systems.viewport.stageWidth, Systems.viewport.stageHeight );
		Systems.view.root.addChild( b );
		
		var r : Sprite = Systems.view.root;
		
		//var o : Sprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png"), "barrel.png" );
		//o.alpha = 0;
		//o.transform.x = 300;
		//o.transform.y = 20;
		//o.transform.scaleX = 2;
		//o.transform.scaleY = 2;
		//r.addChild( o );
		
		//var s : RenderSprite = new RenderSprite( 300, 300 );
		//r.addChild( s );
		//
		//var g : ImageSprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ), "zhead.png" );
		//s.addChild( g );
				
		fps = new FPS();
		r.addChild( fps );
		
		
		
		
		//Actuate.tween( f, 3, { alpha: 1 } ).repeat( 200 ).ease( Linear.easeNone );
		//Actuate.tween( o, 3, { alpha: 1 } ).repeat( 200 ).ease( Linear.easeNone );
		
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
		
		fps.update( seconds );
	}
		
}