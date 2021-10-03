package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2322:int;
      
      private var var_1893:String;
      
      private var var_2486:String;
      
      private var var_2491:Boolean;
      
      private var var_2487:Boolean;
      
      private var var_2490:int;
      
      private var var_2489:String;
      
      private var var_2488:String;
      
      private var var_1745:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2322 = param1.readInteger();
         this.var_1893 = param1.readString();
         this.var_2486 = param1.readString();
         this.var_2491 = param1.readBoolean();
         this.var_2487 = param1.readBoolean();
         param1.readString();
         this.var_2490 = param1.readInteger();
         this.var_2489 = param1.readString();
         this.var_2488 = param1.readString();
         this.var_1745 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2322;
      }
      
      public function get avatarName() : String
      {
         return this.var_1893;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2486;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2491;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2487;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2490;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2489;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2488;
      }
      
      public function get realName() : String
      {
         return this.var_1745;
      }
   }
}
