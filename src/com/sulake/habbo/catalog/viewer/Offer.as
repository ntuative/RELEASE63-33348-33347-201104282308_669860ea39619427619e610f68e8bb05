package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1766:String = "pricing_model_unknown";
      
      public static const const_401:String = "pricing_model_single";
      
      public static const const_397:String = "pricing_model_multi";
      
      public static const const_551:String = "pricing_model_bundle";
      
      public static const const_1657:String = "price_type_none";
      
      public static const const_942:String = "price_type_credits";
      
      public static const const_1276:String = "price_type_activitypoints";
      
      public static const const_1150:String = "price_type_credits_and_activitypoints";
       
      
      private var var_795:String;
      
      private var var_1218:String;
      
      private var _offerId:int;
      
      private var var_1915:String;
      
      private var var_1217:int;
      
      private var var_1219:int;
      
      private var var_1916:int;
      
      private var var_352:ICatalogPage;
      
      private var var_644:IProductContainer;
      
      private var var_2639:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1915 = param2;
         this.var_1217 = param3;
         this.var_1219 = param4;
         this.var_1916 = param5;
         this.var_352 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_352;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1915;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1217;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1219;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1916;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_644;
      }
      
      public function get pricingModel() : String
      {
         return this.var_795;
      }
      
      public function get priceType() : String
      {
         return this.var_1218;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2639;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2639 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1915 = "";
         this.var_1217 = 0;
         this.var_1219 = 0;
         this.var_1916 = 0;
         this.var_352 = null;
         if(this.var_644 != null)
         {
            this.var_644.dispose();
            this.var_644 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_795)
         {
            case const_401:
               this.var_644 = new SingleProductContainer(this,param1);
               break;
            case const_397:
               this.var_644 = new MultiProductContainer(this,param1);
               break;
            case const_551:
               this.var_644 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_795);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_795 = const_401;
            }
            else
            {
               this.var_795 = const_397;
            }
         }
         else if(param1.length > 1)
         {
            this.var_795 = const_551;
         }
         else
         {
            this.var_795 = const_1766;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1217 > 0 && this.var_1219 > 0)
         {
            this.var_1218 = const_1150;
         }
         else if(this.var_1217 > 0)
         {
            this.var_1218 = const_942;
         }
         else if(this.var_1219 > 0)
         {
            this.var_1218 = const_1276;
         }
         else
         {
            this.var_1218 = const_1657;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_352.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_644.products)
         {
            _loc4_ = this.var_352.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
