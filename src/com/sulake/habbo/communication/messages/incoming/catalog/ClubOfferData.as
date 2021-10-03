package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1639:String;
      
      private var var_1827:int;
      
      private var var_2447:Boolean;
      
      private var var_2453:Boolean;
      
      private var var_2451:int;
      
      private var var_2448:int;
      
      private var var_2452:int;
      
      private var var_2449:int;
      
      private var var_2450:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1639 = param1.readString();
         this.var_1827 = param1.readInteger();
         this.var_2447 = param1.readBoolean();
         this.var_2453 = param1.readBoolean();
         this.var_2451 = param1.readInteger();
         this.var_2448 = param1.readInteger();
         this.var_2452 = param1.readInteger();
         this.var_2449 = param1.readInteger();
         this.var_2450 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1639;
      }
      
      public function get price() : int
      {
         return this.var_1827;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2447;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2453;
      }
      
      public function get periods() : int
      {
         return this.var_2451;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2448;
      }
      
      public function get year() : int
      {
         return this.var_2452;
      }
      
      public function get month() : int
      {
         return this.var_2449;
      }
      
      public function get day() : int
      {
         return this.var_2450;
      }
   }
}
