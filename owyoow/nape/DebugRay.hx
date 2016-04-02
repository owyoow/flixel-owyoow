package owyoow.nape;

import flixel.util.FlxDestroyUtil.IFlxDestroyable;
import nape.geom.Vec2;

class DebugRay implements IFlxDestroyable
{
    public var origin(default, null):Vec2;
    public var direction(default, null):Vec2;
    public var length(default, null):Float;
    public var color(default, set):Int;

    public function new (origin:Vec2, direction:Vec2, length:Float, color:Int = 0xFFFFFFFF)
    {
        this.origin = origin;
        this.direction = direction;
        this.length = length;
        this.color = color;
    }

    public function destroy ():Void
    {
        start.dispose();
        end.dispose();
    }
}