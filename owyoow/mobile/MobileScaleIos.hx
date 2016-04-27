package owyoow.mobile;

import flash.Lib;
import flixel.math.FlxRect;

class MobileScaleIos
{
    private static inline var AT_1_X_HEIGHT:Int = 480;
    private static inline var AT_2_X_HEIGHT:Int = 720;
    private static inline var AT_4_X_HEIGHT:Int = 1200;

    public static var scale(default, null):Float;
    public static var suffix(default, null):String;

    public static function getGameSize (designWidth:Float, designHeight:Float, isLandscape:Bool, loResTesting:Bool):FlxRect
    {
        var gameRect:FlxRect = FlxRect.get();

        var deviceRect:FlxRect = FlxRect.weak(0, 0, Lib.current.stage.stageWidth, Lib.current.stage.stageHeight);
        //trace("device width: " + Lib.current.stage.stageWidth + ", height: " + Lib.current.stage.stageHeight);

        if (deviceRect.height >= AT_4_X_HEIGHT && !isLandscape || deviceRect.width >= AT_4_X_HEIGHT && isLandscape)
        {
            scale = 4;
            suffix = "@4x";
        }
        else if (deviceRect.height >= AT_2_X_HEIGHT && !isLandscape || deviceRect.width >= AT_2_X_HEIGHT && isLandscape)
        {
            scale = 2;
            suffix = "@2x";
        }
        else
        {
            scale = 1;
            suffix = "";
        }

        // for testing lo-res assets on hi-res devices
        if(loResTesting)
        {
            scale = 1;
            suffix = "";
        }

        var defaultAspect:Float = designWidth / designHeight;
        var deviceAspect:Float = deviceRect.width / deviceRect.height;
        if (deviceAspect > defaultAspect)
        {
            gameRect.height = designHeight * scale;
            gameRect.width = Math.ceil(((gameRect.height * deviceAspect) / 2.0) * 2);
        }
        else
        {
            gameRect.width = designWidth * scale;
            gameRect.height = Math.ceil(((gameRect.width / deviceAspect) / 2.0) * 2);
        }

        return gameRect;
    }
}