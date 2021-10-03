package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1028:int = 20;
      
      private static const const_668:int = 9;
      
      private static const const_1365:int = -1;
       
      
      private var var_316:Array;
      
      private var var_789:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_316 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_789)
            {
               this.var_789 = true;
               this.var_316 = new Array();
               this.var_316.push(const_1365);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_789)
            {
               this.var_789 = false;
               this.var_316 = new Array();
               this.var_316.push(const_1028);
               this.var_316.push(const_668 + param1);
               this.var_316.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
