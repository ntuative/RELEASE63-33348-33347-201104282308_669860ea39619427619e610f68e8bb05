package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2150:Boolean = false;
      
      private var var_2153:int = 0;
      
      private var var_2154:int = 0;
      
      private var var_2152:int = 0;
      
      private var var_2151:int = 0;
      
      private var var_157:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_469:String = "";
      
      private var _type:int = 0;
      
      private var var_2971:String = "";
      
      private var var_1528:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_186:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2150 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_186 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2150;
      }
      
      public function get wallX() : Number
      {
         return this.var_2153;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_2153 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2154;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_2154 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2152;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_2152 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2151;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_2151 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_157;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_157 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_158;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_158 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_469;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_469 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_186)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_186)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_186)
         {
            this._data = param1;
         }
      }
   }
}
