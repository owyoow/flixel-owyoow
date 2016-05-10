package owyoow.math;

class MathUtils
{
    // static function to clamp a float value to a min and a max
    public static function clampF (value:Float, min:Float, max:Float):Float
    {
        if (value < min)
        {
            return min;
        }
        else if (value > max)
        {
            return max;
        }
        else
        {
            return value;
        }
    }

    public static function clamp (value:Int, min:Int, max:Int):Int
    {
        if (value < min)
        {
            return min;
        }
        else if (value > max)
        {
            return max;
        }
        else
        {
            return value;
        }
    }
}