package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1937:int = 1;
      
      public static const const_2032:int = 2;
      
      public static const const_1907:int = 3;
      
      public static const const_2011:int = 4;
      
      public static const const_1562:int = 5;
      
      public static const const_2091:int = 6;
      
      public static const const_1678:int = 7;
      
      public static const const_1796:int = 8;
      
      public static const const_2008:int = 9;
      
      public static const const_1660:int = 10;
      
      public static const const_1623:int = 11;
      
      public static const const_1735:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1727:int;
      
      private var var_1414:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1727 = param1.readInteger();
         this.var_1414 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1727;
      }
      
      public function get info() : String
      {
         return this.var_1414;
      }
   }
}
