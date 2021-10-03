package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_479:int = 0;
      
      public static const const_210:int = 1;
      
      public static const const_133:int = 2;
      
      public static const const_896:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1765:String;
      
      private var var_2298:int;
      
      private var var_1492:int;
      
      private var var_2295:int;
      
      private var var_2300:int;
      
      private var var_881:Array;
      
      private var var_2301:Array;
      
      private var var_2302:int;
      
      private var var_2296:Boolean;
      
      private var var_2303:Boolean;
      
      private var var_2299:Boolean;
      
      private var var_2297:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2296;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2296 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2303;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2303 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2299;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2299 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2297;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2297 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1765;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1765 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2298;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2298 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1492;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1492 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2295;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2300;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_881;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_881 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2301;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2301 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2302;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2302 = param1;
      }
   }
}
