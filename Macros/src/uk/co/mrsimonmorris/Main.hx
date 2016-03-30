package uk.co.mrsimonmorris;

import haxe.macro.Expr;
import lime.Assets;
import lime.app.Application;

/**
 * ...
 * @author Simon
 */
class Main extends Application 
{

	public function new() 
	{
		super();
	}
	
	override public function exec():Int 
	{
		
		trace( add(1) );
		
		trace( Assets.getText( "assets/thing.txt" ) );
		
		return super.exec();
		
		
	}
	
	macro static function add(e:Expr) {
		return macro $e + $e;
	}
	
}
