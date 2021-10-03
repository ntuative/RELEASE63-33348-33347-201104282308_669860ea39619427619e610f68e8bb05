package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_197:int = 0;
       
      
      private var var_1683:int = 0;
      
      private var var_1460:Dictionary;
      
      private var var_1824:int = 0;
      
      private var var_1825:int = 0;
      
      private var var_2525:Boolean = false;
      
      private var var_2524:int = 0;
      
      private var var_2526:int = 0;
      
      public function Purse()
      {
         this.var_1460 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1683;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1683 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1824;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1824 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1825;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1825 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1824 > 0 || this.var_1825 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2525;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2525 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2524;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2524 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2526;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2526 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1460;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1460 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1460[param1];
      }
   }
}
