package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_912:String = "";
      
      public static const const_416:int = 0;
      
      public static const const_470:int = 255;
      
      public static const const_702:Boolean = false;
      
      public static const const_539:int = 0;
      
      public static const const_490:int = 0;
      
      public static const const_391:int = 0;
      
      public static const const_1141:int = 1;
      
      public static const const_1263:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2309:String = "";
      
      private var var_1897:int = 0;
      
      private var var_2361:int = 255;
      
      private var var_2363:Boolean = false;
      
      private var var_2364:int = 0;
      
      private var var_2365:int = 0;
      
      private var var_2362:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2309 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2309;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1897 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1897;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2361 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2361;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2363 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2363;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2364 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2364;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2365 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2365;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2362 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2362;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
