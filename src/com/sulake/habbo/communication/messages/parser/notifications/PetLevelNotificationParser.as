package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1747:int;
      
      private var var_2504:String;
      
      private var var_1589:int;
      
      private var var_1226:int;
      
      private var var_1864:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1747 = param1.readInteger();
         this.var_2504 = param1.readString();
         this.var_1589 = param1.readInteger();
         this.var_1226 = param1.readInteger();
         this.var_1864 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1747;
      }
      
      public function get petName() : String
      {
         return this.var_2504;
      }
      
      public function get level() : int
      {
         return this.var_1589;
      }
      
      public function get petType() : int
      {
         return this.var_1226;
      }
      
      public function get breed() : int
      {
         return this.var_1864;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
