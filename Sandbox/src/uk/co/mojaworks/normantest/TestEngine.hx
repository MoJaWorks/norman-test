package uk.co.mojaworks.normantest;
import geoff.App;
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
		
		var textEntry : GameObject = UIFactory.createTextInput( "Hello", new TextFormat( FontUtils.createFontFromAsset( Assets.getPath( "default/arial.fnt" ) ), 20 ), "text" );
		textEntry.renderer.color = Color.WHITE;
		core.view.root.transform.addChild( textEntry.transform );
		
	}
	
	
	public static function main() : Void 
	{
		App.create( new TestEngine() ); 
	}
		
}