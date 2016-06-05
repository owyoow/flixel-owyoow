package owyoow.mobile;

// this class should be used together with MobileScaleIos.hx 

// this is a simple class with a few functions to make using assets of multiple sizes easier
class ScaleUtils
{
    private static var scale:Float;
    private static var suffix:String;

    // set the scale and suffix for use in the functions below
    // this should not be used as a static extesion method
    public static function setScale (mobileScale:Float, mobileSuffix:String):Void
    {
        scale = mobileScale;
        suffix = mobileSuffix;
    }

    // just multiply the value with the scale to get the correct value depending on the device size
    public static function toScale (value:Float):Float
    {
        return value * scale;
    }

    // add the @2x or @4x type of suffix to the end of the path name to load the correct assets
    public static function addSuffix (path:String):String
    {
        var index:Int = path.lastIndexOf(".");

        var file:String = path.substring(0, index);
        var extension:String = path.substr(index);

        return file + suffix + extension;
    }
}