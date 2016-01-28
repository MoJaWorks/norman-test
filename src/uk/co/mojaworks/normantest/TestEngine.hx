package uk.co.mojaworks.normantest;
import haxe.Timer;
import lime.graphics.console.TextureFormat;
import lime.math.Rectangle;
import lime.ui.KeyModifier;
import motion.Actuate;
import uk.co.mojaworks.norman.components.renderer.MaskedRenderTextureRenderer;
import uk.co.mojaworks.norman.components.renderer.Scale3ImageRenderer.Scale3Type;
import uk.co.mojaworks.norman.components.renderer.ShapeRenderer.FillShape;
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
		
		var scale : Float = 5;
		
		
		mask = SpriteFactory.createMask( 300, 300, "mask" );
		mask.renderer.color = Color.YELLOW;
		mask.transform.x = 100;
		mask.transform.rotation = 0.5;
		Systems.director.rootObject.transform.addChild( mask.transform );
		
		var rect : GameObject = SpriteFactory.createFilledSprite( Color.WHITE, 300, 300 );
		mask.transform.addChild( rect.transform );
		
		var maskmask : GameObject = SpriteFactory.createFilledSprite( Color.WHITE, 100, 100, FillShape.Ellipse, "maskmask" );
		maskmask.transform.x = 250;
		cast(mask.renderer, MaskedRenderTextureRenderer).mask.transform.addChild( maskmask.transform );
		
		Systems.input.keyDown.add( on1KeyDown );
	}
	
	function on1KeyDown( key : Int, modifier : KeyModifier ) : Void
	{
		var mask = MaskedRenderTextureRenderer.getFromObject( mask );
		mask.maskEnabled = !mask.maskEnabled;
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
	}
		
}