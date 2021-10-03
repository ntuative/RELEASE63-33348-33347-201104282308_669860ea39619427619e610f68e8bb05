package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1747:int;
      
      private var var_1430:Array;
      
      private var var_1126:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1747;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1430;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1126;
      }
      
      public function flush() : Boolean
      {
         this.var_1747 = -1;
         this.var_1430 = null;
         this.var_1126 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1747 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1430 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1430.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1126 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1126.push(param1.readInteger());
         }
         return true;
      }
   }
}
