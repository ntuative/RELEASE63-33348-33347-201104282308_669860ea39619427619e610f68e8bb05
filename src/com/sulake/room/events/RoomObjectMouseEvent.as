package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_147:String = "ROE_MOUSE_CLICK";
      
      public static const const_1971:String = "ROE_MOUSE_ENTER";
      
      public static const const_509:String = "ROE_MOUSE_MOVE";
      
      public static const const_1999:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2102:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1978:String = "";
      
      private var var_2226:Boolean;
      
      private var var_2221:Boolean;
      
      private var var_2225:Boolean;
      
      private var var_2224:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1978 = param2;
         this.var_2226 = param5;
         this.var_2221 = param6;
         this.var_2225 = param7;
         this.var_2224 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1978;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2226;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2221;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2225;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2224;
      }
   }
}
