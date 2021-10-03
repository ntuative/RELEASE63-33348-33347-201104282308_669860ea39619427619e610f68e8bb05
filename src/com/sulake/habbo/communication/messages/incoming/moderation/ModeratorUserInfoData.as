package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2231:int;
      
      private var var_2229:int;
      
      private var var_788:Boolean;
      
      private var var_2232:int;
      
      private var var_2230:int;
      
      private var var_2234:int;
      
      private var var_2233:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2231 = param1.readInteger();
         this.var_2229 = param1.readInteger();
         this.var_788 = param1.readBoolean();
         this.var_2232 = param1.readInteger();
         this.var_2230 = param1.readInteger();
         this.var_2234 = param1.readInteger();
         this.var_2233 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2231;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2229;
      }
      
      public function get online() : Boolean
      {
         return this.var_788;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2232;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2230;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2234;
      }
      
      public function get banCount() : int
      {
         return this.var_2233;
      }
   }
}
