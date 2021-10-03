package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2756:Number;
      
      private var var_1930:Number;
      
      private var var_1002:Number;
      
      private var var_467:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2756 = param1;
         this.var_1930 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_1002 = param1;
         this.var_467 = 0;
      }
      
      public function update() : void
      {
         this.var_1002 += this.var_1930;
         this.var_467 += this.var_1002;
         if(this.var_467 > 0)
         {
            this.var_467 = 0;
            this.var_1002 = this.var_2756 * -1 * this.var_1002;
         }
      }
      
      public function get location() : Number
      {
         return this.var_467;
      }
   }
}
