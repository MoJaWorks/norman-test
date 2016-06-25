package uk.co.mojaworks.normantest;
import geoff.App;
import geoff.assets.Assets;
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
		
		App.current.platform.audio.loadAsset( "loop", Assets.getPath( "audio/loop.ogg" ) );
		App.current.platform.audio.playLooping( "loop" );
		
		App.current.platform.audio.loadAsset( "scream", Assets.getPath( "audio/test.ogg" ) );
		App.current.platform.audio.playLooping( "scream" );
		
		var image : GameObject = SpriteFactory.createImageSpriteFromAsset( Assets.getPath( "img/zombie.png" ) );
		core.view.root.transform.addChild( image.transform );
		
	}
	
	
	public static function main() : Void 
	{
		App.create( new TestEngine() ); 
	}
		
}