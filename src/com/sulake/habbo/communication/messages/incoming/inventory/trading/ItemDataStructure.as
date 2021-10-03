package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2347:int;
      
      private var var_1447:String;
      
      private var var_2349:int;
      
      private var var_2351:int;
      
      private var _category:int;
      
      private var var_2132:String;
      
      private var var_1528:int;
      
      private var var_2353:int;
      
      private var var_2350:int;
      
      private var var_2348:int;
      
      private var var_2352:int;
      
      private var var_2354:Boolean;
      
      private var var_2979:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2347 = param1;
         this.var_1447 = param2;
         this.var_2349 = param3;
         this.var_2351 = param4;
         this._category = param5;
         this.var_2132 = param6;
         this.var_1528 = param7;
         this.var_2353 = param8;
         this.var_2350 = param9;
         this.var_2348 = param10;
         this.var_2352 = param11;
         this.var_2354 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2347;
      }
      
      public function get itemType() : String
      {
         return this.var_1447;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2349;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2351;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get extra() : int
      {
         return this.var_1528;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2353;
      }
      
      public function get creationDay() : int
      {
         return this.var_2350;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2348;
      }
      
      public function get creationYear() : int
      {
         return this.var_2352;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2354;
      }
      
      public function get songID() : int
      {
         return this.var_1528;
      }
   }
}
