package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2238:String;
      
      private var var_2237:Array;
      
      private var var_2236:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2238 = param1;
         this.var_2237 = param2;
         this.var_2236 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2238;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2237;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2236;
      }
   }
}
