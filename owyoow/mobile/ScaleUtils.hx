package owyoow.mobile;

class ScaleUtils
{
    private static var scale:Float;
    private static var suffix:String;

    public static function setScale (mobileScale:Float, mobileSuffix:String):Void
    {
        scale = mobileScale;
        suffix = mobileSuffix;
    }

    public static function toScale (value:Float):Float
    {
        return value * scale;
    }

    public static function addSuffix (path:String):String
    {
        var index:Int = path.lastIndexOf(".");

        var file:String = path.substring(0, index);
        var extension:String = path.substr(index);

        return file + suffix + extension;
    }
}