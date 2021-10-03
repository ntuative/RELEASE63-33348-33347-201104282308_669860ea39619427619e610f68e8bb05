package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_690:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1086:String = "inventory_effects";
      
      public static const const_1197:String = "inventory_badges";
      
      public static const const_1596:String = "inventory_clothes";
      
      public static const const_1644:String = "inventory_furniture";
       
      
      private var var_2625:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_690);
         this.var_2625 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2625;
      }
   }
}
