package uk.co.mojaworks.normantest;
import geoff.App;
import geoff.audio.AudioChannel;
import geoff.audio.AudioSource;
import geoff.utils.Assets;
import geoff.utils.Color;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.components.renderer.TextRenderer.TextFormat;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.factory.GameObject;
import uk.co.mojaworks.norman.factory.UIFactory;
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
		
		var source : AudioSource = App.current.platform.audio.player.loadAsset( "drumloop", Assets.getPath( "audio/loop.ogg" ) );
		var source2 : AudioSource = App.current.platform.audio.player.loadAsset( "scream", Assets.getPath( "audio/test.ogg" ) );
		
		var channel : AudioChannel = App.current.platform.audio.player.playLooping( "drumloop", 1 );
		var channel : AudioChannel = App.current.platform.audio.player.playLooping( "scream", 1 );
		
	}
	
	
	public static function main() : Void 
	{
		App.create( new TestEngine() ); 
	}
		
}