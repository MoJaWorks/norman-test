package uk.co.mojaworks.normantest;

import uk.co.mojaworks.norman.components.delegates.BaseUIDelegate;
import uk.co.mojaworks.norman.systems.ui.PointerEvent;

/**
 * ...
 * @author Simon
 */
class ButtonUIDelegate extends BaseUIDelegate
{

	public function new() 
	{
		super();
		
	}
	
	override public function onMouseOver(e:PointerEvent):Void 
	{
		super.onMouseOver(e);
		trace("MouseOver " + gameObject.name );
	}
	
	override public function onMouseOut(e:PointerEvent):Void 
	{
		super.onMouseOut(e);
		trace("MouseOut " + gameObject.name );
	}
	
	override public function onMouseDown(e:PointerEvent):Void 
	{
		super.onMouseDown(e);
		trace("MouseDown " + gameObject.name );
	}
	
	override public function onMouseUp(e:PointerEvent):Void 
	{
		super.onMouseUp(e);
		trace("MouseUp " + gameObject.name );
	}
	
	override public function onClick(e:PointerEvent):Void 
	{
		super.onClick(e);
		trace("Clicked " + gameObject.name );
	}
	
}