package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2235:int;
      
      private var var_1447:String;
      
      private var _objId:int;
      
      private var var_1702:int;
      
      private var _category:int;
      
      private var var_2132:String;
      
      private var var_2799:Boolean;
      
      private var var_2797:Boolean;
      
      private var var_2798:Boolean;
      
      private var var_2680:Boolean;
      
      private var var_2342:int;
      
      private var var_1528:int;
      
      private var var_1806:String = "";
      
      private var var_1894:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2235 = param1;
         this.var_1447 = param2;
         this._objId = param3;
         this.var_1702 = param4;
         this._category = param5;
         this.var_2132 = param6;
         this.var_2799 = param7;
         this.var_2797 = param8;
         this.var_2798 = param9;
         this.var_2680 = param10;
         this.var_2342 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1806 = param1;
         this.var_1528 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2235;
      }
      
      public function get itemType() : String
      {
         return this.var_1447;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1702;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2799;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2797;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2798;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2680;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2342;
      }
      
      public function get slotId() : String
      {
         return this.var_1806;
      }
      
      public function get songId() : int
      {
         return this.var_1894;
      }
      
      public function get extra() : int
      {
         return this.var_1528;
      }
   }
}
