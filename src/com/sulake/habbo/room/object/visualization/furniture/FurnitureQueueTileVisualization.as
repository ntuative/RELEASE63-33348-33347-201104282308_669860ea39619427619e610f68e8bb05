package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1365:int = 3;
      
      private static const const_1349:int = 2;
      
      private static const const_1348:int = 1;
      
      private static const const_1347:int = 15;
       
      
      private var var_316:Array;
      
      private var var_1129:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_316 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1349)
         {
            this.var_316 = new Array();
            this.var_316.push(const_1348);
            this.var_1129 = const_1347;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1129 > 0)
         {
            --this.var_1129;
         }
         if(this.var_1129 == 0)
         {
            if(this.var_316.length > 0)
            {
               super.setAnimation(this.var_316.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
