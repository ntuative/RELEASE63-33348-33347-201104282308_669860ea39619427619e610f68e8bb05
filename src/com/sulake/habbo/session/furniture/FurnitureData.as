package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_2083:String = "i";
      
      public static const const_1908:String = "s";
      
      public static const const_2064:String = "e";
       
      
      private var _type:String;
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_2870:int;
      
      private var _revision:int;
      
      private var var_2869:int;
      
      private var var_2867:int;
      
      private var var_2866:int;
      
      private var var_971:Array;
      
      private var _title:String;
      
      private var var_1765:String;
      
      private var var_2868:String;
      
      private var var_2316:int;
      
      private var _offerId:int;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String, param13:int, param14:int)
      {
         super();
         this._type = param1;
         this._id = param2;
         this._name = param3;
         this.var_2870 = param4;
         this._revision = param5;
         this.var_2869 = param6;
         this.var_2867 = param7;
         this.var_2866 = param8;
         this.var_971 = param9;
         this._title = param10;
         this.var_1765 = param11;
         this.var_2868 = param12;
         this.var_2316 = param13;
         this._offerId = param14;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get colourIndex() : int
      {
         return this.var_2870;
      }
      
      public function get revision() : int
      {
         return this._revision;
      }
      
      public function get tileSizeX() : int
      {
         return this.var_2869;
      }
      
      public function get tileSizeY() : int
      {
         return this.var_2867;
      }
      
      public function get tileSizeZ() : int
      {
         return this.var_2866;
      }
      
      public function get colours() : Array
      {
         return this.var_971;
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function get description() : String
      {
         return this.var_1765;
      }
      
      public function get adUrl() : String
      {
         return this.var_2868;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2316;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
   }
}
