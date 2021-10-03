package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_263:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2387:int = 0;
      
      private var var_2383:int = 0;
      
      private var var_2385:int = 0;
      
      private var var_2386:Boolean = false;
      
      private var var_2384:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_263,param6,param7);
         this.var_2387 = param1;
         this.var_2383 = param2;
         this.var_2385 = param3;
         this.var_2386 = param4;
         this.var_2384 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2387;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2383;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2385;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2386;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2384;
      }
   }
}
