package flixel.system.scaleModes;

import flixel.FlxG;

/**
 * ...
 * @author owyoow
 */
class PixelScaleMode extends BaseScaleMode
{
	private var _baseWidth:Float;
	private var _baseHeight:Float;
	
	public function new(baseWidth:Float, baseHeight:Float) 
	{
		super();
		
		_baseWidth = baseWidth;
		_baseHeight = baseHeight;
	}
	
	override public function updateGameSize(width:Int, height:Int):Void
	{
		var zoom:Int = Std.int(Math.max(Math.floor(width / _baseWidth), Math.floor(height / _baseHeight)));
		if (zoom < 1) zoom = 1;
		trace(zoom);
		gameSize.x = FlxG.width * zoom;
		gameSize.y = FlxG.height * zoom;		
	}
}