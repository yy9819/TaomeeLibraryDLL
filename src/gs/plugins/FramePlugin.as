package gs.plugins
{
   import flash.display.MovieClip;
   import gs.TweenLite;
   
   public class FramePlugin extends TweenPlugin
   {
      public static const VERSION:Number = 1.01;
      
      public static const API:Number = 1;
      
      protected var _target:MovieClip;
      
      public var frame:int;
      
      public function FramePlugin()
      {
         super();
         this.propName = "frame";
         this.overwriteProps = ["frame"];
         this.round = true;
      }
      
      override public function onInitTween($target:Object, $value:*, $tween:TweenLite) : Boolean
      {
         if(!($target is MovieClip) || isNaN($value))
         {
            return false;
         }
         _target = $target as MovieClip;
         this.frame = _target.currentFrame;
         addTween(this,"frame",this.frame,$value,"frame");
         return true;
      }
      
      override public function set changeFactor($n:Number) : void
      {
         updateTweens($n);
         _target.gotoAndStop(this.frame);
      }
   }
}

