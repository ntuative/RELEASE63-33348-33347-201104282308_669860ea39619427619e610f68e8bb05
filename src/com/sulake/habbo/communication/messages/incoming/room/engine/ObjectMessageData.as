package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_469:int = 0;
      
      private var var_507:int = 0;
      
      private var var_627:int = 0;
      
      private var _type:int = 0;
      
      private var var_2971:String = "";
      
      private var var_1528:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2342:int = 0;
      
      private var var_2341:String = null;
      
      private var var_186:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_186 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_186)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_469;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_469 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_507;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_507 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_627;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_627 = param1;
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
      
      public function get staticClass() : String
      {
         return this.var_2341;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2341 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1528;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_1528 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2342;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2342 = param1;
         }
      }
   }
}
