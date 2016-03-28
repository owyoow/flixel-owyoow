package owyoow.nape;

import flixel.util.FlxDestroyUtil.IFlxDestroyable;
import nape.geom.Vec2;

class DebugRay implements IFlxDestroyable
{
    public var start(default, set):Vec2;
    public var end(default, set):Vec2;
    public var color(default, set):Int;

    public function new (startX:Float = 0, startY:Float = 0, endX:Float = 0, endY:Float = 0, color:Int = 0xFFFFFFFF)
    {
 
        this.start = Vec2.get(startX, startY);
        this.end = Vec2.get(endX, endY);
        this.color = color;
    }

    public function destroy ():Void
    {
        start.dispose();
        end.dispose();
    }

    private function set_start (value:Vec2):Vec2
    {
        return start = Vec2.get(value.x, value.y, true);
    }

    private function set_end (value:Vec2):Vec2
    {
        return end = Vec2.get(value.x, value.y, true);
    }

    private function set_color (value:Int):Int
    {
        return color = value;
    }
}