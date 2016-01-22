package uk.co.mojaworks.normantest;
import haxe.Timer;
import lime.graphics.console.TextureFormat;
import lime.math.Rectangle;
import motion.Actuate;
import uk.co.mojaworks.norman.components.renderer.TextRenderer;
import uk.co.mojaworks.norman.components.renderer.TextRenderer.TextAlign;
import uk.co.mojaworks.norman.components.renderer.TextRenderer.TextFormat;
import uk.co.mojaworks.norman.components.text.TextInput;
import uk.co.mojaworks.norman.components.text.TextInputKeyboardDelegate;
import uk.co.mojaworks.norman.components.text.TextInputUIDelegate;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.factory.GameObject;
import uk.co.mojaworks.norman.factory.SpriteFactory;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.systems.Systems;
import uk.co.mojaworks.norman.text.BitmapFont;
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
		config.targetScreenWidth = 480;
		config.targetScreenHeight = 800;
		
		super( config );
	}
	
	override function onStartupComplete() 
	{
		super.onStartupComplete();
		
		var scale : Float = 5;
		
		var rect : GameObject = SpriteFactory.createScale9ImageSpriteFromAsset("img/BlueBtn.png", new Rectangle( 10, 10, 46, 46 ) );
		rect.transform.scale = scale;
		Systems.director.rootObject.transform.addChild( rect.transform );
		
		var rect2 : GameObject = SpriteFactory.createImageSpriteFromAsset("img/BlueBtn.png" );
		rect2.transform.scale = scale;
		rect2.transform.x = rect.renderer.scaledWidth + 20;
		Systems.director.rootObject.transform.addChild( rect2.transform );
		
		var rect3 : GameObject = SpriteFactory.createImageSpriteFromAsset("img/BlueBtn.png" );
		rect3.transform.scale = scale;
		rect3.transform.y = rect.renderer.scaledHeight + 20;
		Systems.director.rootObject.transform.addChild( rect3.transform );
		
		
		
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
	}
		
}