package uk.co.mojaworks.normantest;
import haxe.Timer;
import lime.graphics.console.TextureFormat;
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
		config.targetScreenWidth = 720;
		config.targetScreenHeight = 1280;
		
		super( config );
	}
	
	override function onStartupComplete() 
	{
		super.onStartupComplete();
		
		Systems.audio.playMusicWithResourceId( "audio/loop.ogg", 1, 0 );
		
		Timer.delay( function() {
			Systems.audio.playLoopingWithResourceId( "audio/test.ogg", 0.25 );
			Systems.audio.playOneShotWithResourceId( "audio/blip.ogg", 2 );
		}, 2000 );
		
		Actuate.tween( Systems.audio, 0.5, { musicVolume: 0 } ).delay(4).onComplete( function() {
			
			Systems.audio.playOneShotWithResourceId( "audio/blip.ogg", 2 );
			Actuate.tween( Systems.audio, 0.5, { sfxVolume: 0 } ).delay(2);
			Actuate.tween( Systems.audio, 0.5, { musicVolume: 1 } ).delay(2).onComplete( function() {
			
				Systems.audio.playOneShotWithResourceId( "audio/blip.ogg", 2 );
				Actuate.tween( Systems.audio, 0.5, { sfxVolume: 1 } ).delay(2);
				Actuate.tween( Systems.audio, 0.5, { masterVolume: 0 } ).delay(4).onComplete( function() {
				
					Systems.audio.playOneShotWithResourceId( "audio/blip.ogg", 2 );
				
				});
			
			});
			
		});
		
	}
	
	override public function updateApp(seconds:Float):Void 
	{
		super.updateApp(seconds);
	}
		
}