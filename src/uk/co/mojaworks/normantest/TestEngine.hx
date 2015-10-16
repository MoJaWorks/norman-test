package uk.co.mojaworks.normantest;
import uk.co.mojaworks.norman.components.renderer.ShapeRenderer.FillShape;
import uk.co.mojaworks.norman.components.Transform;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.display.MaskedSprite;
import uk.co.mojaworks.norman.factory.GameObject;
import uk.co.mojaworks.norman.factory.SpriteFactory;
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
		
		var mask : GameObject = SpriteFactory.createMask( Systems.renderer.createTextureFromAsset("img/zombie.png"), "barrel.png" );
		Systems.director.rootObject.transform.addChild( mask.transform );
		
		var image : GameObject = SpriteFactory.createImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ), "zhead.png" );
		Systems.director.rootObject.transform.addChild( image.transform );
			
		var fill : GameObject = SpriteFactory.createFilledSprite( Color.BLUE, 200, 200, FillShape.Ellipse );
		mask.transform.addChild( fill.transform );
		
		var render : GameObject = SpriteFactory.createRenderTexture( 200, 200 );
		render.transform.scale = 2;
		fill.transform.addChild( render.transform );
		
		var text : GameObject = SpriteFactory.createTextSprite( "Hello", FontUtils.createFontFromAsset("default/arial.fnt") );
		render.transform.addChild( text.transform );
		
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
	}
		
}