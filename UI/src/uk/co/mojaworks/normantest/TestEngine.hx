package uk.co.mojaworks.normantest;
import lime.math.Rectangle;
import uk.co.mojaworks.norman.NormanApp;
import uk.co.mojaworks.norman.components.delegates.BaseUIDelegate;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.factory.GameObject;
import uk.co.mojaworks.norman.factory.SpriteFactory;
import uk.co.mojaworks.norman.factory.UIFactory;

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
		
		var button = UIFactory.createImageButton( new ButtonUIDelegate(), core.renderer.createTextureFromAsset( "img/BlueBtn.png" ) );
		button.renderer.scaledWidth = 300;
		button.renderer.scaledHeight = 300;
		core.view.root.transform.addChild( button.transform );
		
	}
		
}