package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PresentOpenedMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1447:String;
      
      private var var_1702:int;
      
      private var var_1639:String;
      
      public function PresentOpenedMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemType() : String
      {
         return this.var_1447;
      }
      
      public function get classId() : int
      {
         return this.var_1702;
      }
      
      public function get productCode() : String
      {
         return this.var_1639;
      }
      
      public function flush() : Boolean
      {
         this.var_1447 = "";
         this.var_1702 = 0;
         this.var_1639 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1447 = param1.readString();
         this.var_1702 = param1.readInteger();
         this.var_1639 = param1.readString();
         return true;
      }
   }
}
