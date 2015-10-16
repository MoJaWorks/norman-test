package uk.co.mojaworks.normantest;
import uk.co.mojaworks.norman.components.Transform;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.factory.GameObject;
import uk.co.mojaworks.norman.factory.SpriteFactory;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.systems.Systems;

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
		
		var image : GameObject = SpriteFactory.createImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ), "zhead.png" );
		Systems.director.rootObject.transform.addChild( image.transform );
				
		//var m : MaskedSprite = new MaskedSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ), "zhead.png" );
		//m.x = 50;
		//Systems.director.root.addChild( m );

		
		//var b : ImageSprite = new ImageSprite( Systems.renderer.createTextureFromAsset( "img/zombie.png" ), "barrel.png" );
		//m.addChild( b );
		
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
	}
		
}