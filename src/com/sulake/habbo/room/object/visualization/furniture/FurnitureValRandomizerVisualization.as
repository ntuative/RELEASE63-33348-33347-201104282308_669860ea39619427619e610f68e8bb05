package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1028:int = 20;
      
      private static const const_668:int = 10;
      
      private static const const_1411:int = 31;
      
      private static const const_1365:int = 32;
      
      private static const const_667:int = 30;
       
      
      private var var_316:Array;
      
      private var var_789:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_316 = new Array();
         super();
         super.setAnimation(const_667);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_789)
            {
               this.var_789 = true;
               this.var_316 = new Array();
               this.var_316.push(const_1411);
               this.var_316.push(const_1365);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_668)
         {
            if(this.var_789)
            {
               this.var_789 = false;
               this.var_316 = new Array();
               if(direction == 2)
               {
                  this.var_316.push(const_1028 + 5 - param1);
                  this.var_316.push(const_668 + 5 - param1);
               }
               else
               {
                  this.var_316.push(const_1028 + param1);
                  this.var_316.push(const_668 + param1);
               }
               this.var_316.push(const_667);
               return;
            }
            super.setAnimation(const_667);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
