package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_703:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_323:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_703);
         this.var_323 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_323;
      }
   }
}
