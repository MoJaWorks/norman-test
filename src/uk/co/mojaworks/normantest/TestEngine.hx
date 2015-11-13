package uk.co.mojaworks.normantest;
import lime.graphics.console.TextureFormat;
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
		config.targetScreenWidth = 720;
		config.targetScreenHeight = 1280;
		
		super( config );
	}
	
	override function onStartupComplete() 
	{
		super.onStartupComplete();
		
		var font : BitmapFont = FontUtils.createFontFromAsset( "default/arial.fnt" );
		var text : GameObject = SpriteFactory.createTextSprite( "Hello", new TextFormat( font, 30 ), "text" );
		text.renderer.color = Color.WHITE;
		text.addComponent( new TextInputKeyboardDelegate() );
		text.addComponent( new TextInputUIDelegate() );
		text.addComponent( new TextInput() );
		Systems.director.rootObject.transform.addChild( text.transform );
		
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
	}
		
}