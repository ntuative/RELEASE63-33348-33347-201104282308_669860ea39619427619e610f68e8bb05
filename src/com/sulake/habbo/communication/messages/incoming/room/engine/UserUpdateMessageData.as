package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_2275:Number = 0;
      
      private var var_2272:Number = 0;
      
      private var var_2276:Number = 0;
      
      private var var_2277:Number = 0;
      
      private var var_469:int = 0;
      
      private var var_2273:int = 0;
      
      private var var_330:Array;
      
      private var var_2274:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_330 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_157 = param3;
         this.var_158 = param4;
         this.var_2275 = param5;
         this.var_469 = param6;
         this.var_2273 = param7;
         this.var_2272 = param8;
         this.var_2276 = param9;
         this.var_2277 = param10;
         this.var_2274 = param11;
         this.var_330 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_157;
      }
      
      public function get z() : Number
      {
         return this.var_158;
      }
      
      public function get localZ() : Number
      {
         return this.var_2275;
      }
      
      public function get targetX() : Number
      {
         return this.var_2272;
      }
      
      public function get targetY() : Number
      {
         return this.var_2276;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2277;
      }
      
      public function get dir() : int
      {
         return this.var_469;
      }
      
      public function get dirHead() : int
      {
         return this.var_2273;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2274;
      }
      
      public function get actions() : Array
      {
         return this.var_330.slice();
      }
   }
}
