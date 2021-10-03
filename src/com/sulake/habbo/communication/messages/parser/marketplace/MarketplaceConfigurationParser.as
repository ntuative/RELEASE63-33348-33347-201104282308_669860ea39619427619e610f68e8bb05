package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1448:Boolean;
      
      private var var_2360:int;
      
      private var var_1987:int;
      
      private var var_1986:int;
      
      private var var_2356:int;
      
      private var var_2357:int;
      
      private var var_2359:int;
      
      private var var_2358:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1448;
      }
      
      public function get commission() : int
      {
         return this.var_2360;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1987;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1986;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2357;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2356;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2359;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2358;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1448 = param1.readBoolean();
         this.var_2360 = param1.readInteger();
         this.var_1987 = param1.readInteger();
         this.var_1986 = param1.readInteger();
         this.var_2357 = param1.readInteger();
         this.var_2356 = param1.readInteger();
         this.var_2359 = param1.readInteger();
         this.var_2358 = param1.readInteger();
         return true;
      }
   }
}
