package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_345:int;
      
      private var var_1775:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_345 = param1.readInteger();
         this.var_1775 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_345 = 0;
         this.var_1775 = 0;
         return true;
      }
      
      public function get method_1() : int
      {
         return this.var_345;
      }
      
      public function get nodeId() : int
      {
         return this.var_1775;
      }
   }
}
