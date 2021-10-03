package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_78:String = "s";
      
      public static const const_225:String = "e";
       
      
      private var var_1512:String;
      
      private var var_2552:int;
      
      private var include:String;
      
      private var _productCount:int;
      
      private var var_1953:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1512 = param1.readString();
         this.var_2552 = param1.readInteger();
         this.include = param1.readString();
         this._productCount = param1.readInteger();
         this.var_1953 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1512;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2552;
      }
      
      public function get extraParam() : String
      {
         return this.include;
      }
      
      public function get productCount() : int
      {
         return this._productCount;
      }
      
      public function get expiration() : int
      {
         return this.var_1953;
      }
   }
}
