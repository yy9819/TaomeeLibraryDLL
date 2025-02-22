package gs.plugins
{
   import flash.display.*;
   import gs.*;
   
   public class RoundPropsPlugin extends TweenPlugin
   {
      public static const VERSION:Number = 1;
      
      public static const API:Number = 1;
      
      public function RoundPropsPlugin()
      {
         super();
         this.propName = "roundProps";
         this.overwriteProps = [];
         this.round = true;
      }
      
      public function add($object:Object, $propName:String, $start:Number, $change:Number) : void
      {
         addTween($object,$propName,$start,$start + $change,$propName);
         this.overwriteProps[this.overwriteProps.length] = $propName;
      }
   }
}

