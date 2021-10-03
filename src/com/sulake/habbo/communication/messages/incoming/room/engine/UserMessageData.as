package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1088:String = "M";
      
      public static const const_1551:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_469:int = 0;
      
      private var _name:String = "";
      
      private var var_1613:int = 0;
      
      private var var_900:String = "";
      
      private var var_623:String = "";
      
      private var var_2382:String = "";
      
      private var var_2207:int;
      
      private var var_2378:int = 0;
      
      private var var_2381:String = "";
      
      private var var_2380:int = 0;
      
      private var var_2379:int = 0;
      
      private var var_2593:String = "";
      
      private var var_186:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_186)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1613;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_1613 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_900;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_900 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_623 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2382;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2382 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2207;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2207 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2378;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2378 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2381;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2381 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2380;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2380 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2379;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2379 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2593;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2593 = param1;
         }
      }
   }
}
