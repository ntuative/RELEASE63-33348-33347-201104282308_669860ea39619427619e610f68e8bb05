package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1639:String;
      
      private var var_1827:int;
      
      private var var_2447:Boolean;
      
      private var var_2453:Boolean;
      
      private var var_2451:int;
      
      private var var_2448:int;
      
      private var var_352:ICatalogPage;
      
      private var var_2452:int;
      
      private var var_2449:int;
      
      private var var_2450:int;
      
      private var var_1510:String;
      
      private var var_2776:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1639 = param2;
         this.var_1827 = param3;
         this.var_2447 = param4;
         this.var_2453 = param5;
         this.var_2451 = param6;
         this.var_2448 = param7;
         this.var_2452 = param8;
         this.var_2449 = param9;
         this.var_2450 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1510;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1510 = param1;
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_197;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1827;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_352;
      }
      
      public function get priceType() : String
      {
         return Offer.const_942;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1639;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_352 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2776;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2776 = param1;
      }
   }
}
