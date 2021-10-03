package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1948:int = 0;
      
      private var var_1947:int = 0;
      
      private var var_1916:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1948;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1947;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1916;
      }
      
      public function flush() : Boolean
      {
         this.var_1948 = 0;
         this.var_1947 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1948 = param1.readInteger();
         this.var_1947 = param1.readInteger();
         this.var_1916 = param1.readInteger();
         return true;
      }
   }
}
