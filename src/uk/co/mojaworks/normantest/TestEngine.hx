package uk.co.mojaworks.normantest;
import uk.co.mojaworks.norman.data.NormanConfigData;
import uk.co.mojaworks.norman.NormanApp;

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
		
}