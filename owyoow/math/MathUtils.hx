package owyoow.math;

class MathUtils
{
    // static function to clamp a float value to a min and a max
    public static function Clamp (value:Float, min:Float, max:Float):Float
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