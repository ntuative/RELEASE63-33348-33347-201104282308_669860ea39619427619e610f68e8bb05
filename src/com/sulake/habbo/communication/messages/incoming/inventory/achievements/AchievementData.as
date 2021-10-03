package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1589:int;
      
      private var var_323:String;
      
      private var var_2509:int;
      
      private var var_2508:int;
      
      private var var_2065:int;
      
      private var var_2510:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1589 = param1.readInteger();
         this.var_323 = param1.readString();
         this.var_2509 = param1.readInteger();
         this.var_2508 = param1.readInteger();
         this.var_2065 = param1.readInteger();
         this.var_2510 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_323;
      }
      
      public function get level() : int
      {
         return this.var_1589;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2509;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2508;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2065;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2510;
      }
   }
}
