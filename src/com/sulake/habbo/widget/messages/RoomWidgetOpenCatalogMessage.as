package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_390:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1116:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1198:String = "RWOCM_PIXELS";
      
      public static const const_1210:String = "RWOCM_CREDITS";
       
      
      private var var_2757:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_390);
         this.var_2757 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2757;
      }
   }
}
