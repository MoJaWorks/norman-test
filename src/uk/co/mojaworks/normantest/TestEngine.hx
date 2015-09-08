package uk.co.mojaworks.normantest;
import motion.Actuate;
import motion.easing.Linear;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.debug.FPS;
import uk.co.mojaworks.norman.display.FillSprite;
import uk.co.mojaworks.norman.display.ImageSprite;
import uk.co.mojaworks.norman.display.MaskedSprite;
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
	public function new() {
		
		var config : NormanConfigData = new NormanConfigData();
		config.targetScreenWidth = 720;
		config.targetScreenHeight = 1280;
		
		super( config );
	}
	
	override function onStartupComplete() 
	{
		super.onStartupComplete();
				
		var m : MaskedSprite = new MaskedSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ), "zhead.png" );
		m.x = 50;
		Systems.view.root.addChild( m );

		
		var b : ImageSprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ), "barrel.png" );
		m.addChild( b );
		
				
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
	}
		
}