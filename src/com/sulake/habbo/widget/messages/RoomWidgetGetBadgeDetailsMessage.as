package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_915:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1459:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_915);
         this.var_1459 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1459;
      }
   }
}
