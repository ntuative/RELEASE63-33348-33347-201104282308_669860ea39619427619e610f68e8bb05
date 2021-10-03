package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1589:int;
      
      private var var_1937:int;
      
      private var var_2508:int;
      
      private var var_2065:int;
      
      private var var_1588:int;
      
      private var var_2325:String = "";
      
      private var var_2843:String = "";
      
      private var var_2844:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1589 = param1.readInteger();
         this.var_2325 = param1.readString();
         this.var_1937 = param1.readInteger();
         this.var_2508 = param1.readInteger();
         this.var_2065 = param1.readInteger();
         this.var_1588 = param1.readInteger();
         this.var_2844 = param1.readInteger();
         this.var_2843 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1589;
      }
      
      public function get points() : int
      {
         return this.var_1937;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2508;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2065;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1588;
      }
      
      public function get badgeID() : String
      {
         return this.var_2325;
      }
      
      public function get achievementID() : int
      {
         return this.var_2844;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2843;
      }
   }
}
