package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_804:String = "rwcem_change_email";
       
      
      private var var_2660:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_804);
         this.var_2660 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2660;
      }
   }
}
