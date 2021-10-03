package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1747:int;
      
      private var _name:String;
      
      private var var_1589:int;
      
      private var var_2409:int;
      
      private var var_2215:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_623:String;
      
      private var var_2407:int;
      
      private var var_2406:int;
      
      private var var_2408:int;
      
      private var var_2212:int;
      
      private var var_2210:int;
      
      private var _ownerName:String;
      
      private var var_496:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1747;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1589;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2409;
      }
      
      public function get experience() : int
      {
         return this.var_2215;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2407;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2406;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2408;
      }
      
      public function get respect() : int
      {
         return this.var_2212;
      }
      
      public function get ownerId() : int
      {
         return this.var_2210;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_496;
      }
      
      public function flush() : Boolean
      {
         this.var_1747 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1747 = param1.readInteger();
         this._name = param1.readString();
         this.var_1589 = param1.readInteger();
         this.var_2409 = param1.readInteger();
         this.var_2215 = param1.readInteger();
         this.var_2407 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2406 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2408 = param1.readInteger();
         this.var_623 = param1.readString();
         this.var_2212 = param1.readInteger();
         this.var_2210 = param1.readInteger();
         this.var_496 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
