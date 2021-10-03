package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1894:int;
      
      private var var_1790:Number;
      
      private var var_2493:Number;
      
      private var var_2492:int;
      
      private var var_2495:Number;
      
      private var var_2494:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1894 = param1;
         this.var_1790 = param2;
         this.var_2493 = param3;
         this.var_2495 = param4;
         this.var_2494 = param5;
         this.var_2492 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1894;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1790 < 0)
         {
            return 0;
         }
         return this.var_1790 + (getTimer() - this.var_2492) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2493;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2495;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2494;
      }
   }
}
