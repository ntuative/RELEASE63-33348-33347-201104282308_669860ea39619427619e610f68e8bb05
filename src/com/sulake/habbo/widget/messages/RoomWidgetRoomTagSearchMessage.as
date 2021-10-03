package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_904:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2309:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_904);
         this.var_2309 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2309;
      }
   }
}
