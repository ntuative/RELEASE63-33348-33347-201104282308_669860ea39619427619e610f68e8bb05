package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_965:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_554:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1747:int = 0;
      
      private var var_180:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1747 = param2;
         this.var_180 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1747;
      }
      
      public function get value() : String
      {
         return this.var_180;
      }
   }
}
