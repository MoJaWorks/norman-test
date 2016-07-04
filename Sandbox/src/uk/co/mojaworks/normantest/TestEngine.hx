package uk.co.mojaworks.normantest;
import geoff.App;
import geoff.assets.Assets;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.components.ui.UIDelegate;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.factory.GameObject;
import uk.co.mojaworks.norman.factory.SpriteFactory;
import uk.co.mojaworks.norman.systems.ui.PointerEvent;

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
		
		core.audio.loadAsset( "scream", Assets.getPath( "audio/test.ogg" ) );
		core.audio.loadAsset( "loop", Assets.getPath( "audio/loop.ogg" ) );
		core.audio.playMusic( "loop" );
		
		var image2 : GameObject = SpriteFactory.createImageSpriteFromAsset( Assets.getPath( "img/BlueBtn.png" ) );
		var uiListener : UIDelegate = cast image2.add( new UIDelegate() );
		uiListener.clicked.add( onImageClicked );
		image2.transform.y = 700;
		
		core.view.root.transform.addChild( image2.transform );
		
		var image : GameObject = SpriteFactory.createImageSpriteFromAsset( Assets.getPath( "img/zombie.png::barrel.png" ) );
		core.view.root.transform.addChild( image.transform );
		
	}
	
	function onImageClicked( e : PointerEvent ) 
	{
		core.audio.playMusic( "scream", 1, 3 );
	}
	
	
	public static function main() : Void 
	{
		App.create( new TestEngine() ); 
	}
		
}