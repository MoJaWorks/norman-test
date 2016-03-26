package uk.co.mojaworks.normantest;
import lime.math.Rectangle;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.factory.GameObject;
import uk.co.mojaworks.norman.factory.SpriteFactory;

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
		
		var hello : GameObject = SpriteFactory.createScale9ImageSpriteFromAsset( "img/BlueBtn.png", new Rectangle(10, 10, 46, 46) );
		hello.renderer.scaledWidth = 300;
		hello.renderer.scaledHeight = 300;
		core.view.root.transform.addChild( hello.transform );
		
	}
		
}