package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_947:int;
      
      private var var_788:Boolean;
      
      private var var_1743:Boolean;
      
      private var var_623:String;
      
      private var var_1492:int;
      
      private var var_1744:String;
      
      private var var_1746:String;
      
      private var var_1745:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_947 = param1.readInteger();
         this.var_788 = param1.readBoolean();
         this.var_1743 = param1.readBoolean();
         this.var_623 = param1.readString();
         this.var_1492 = param1.readInteger();
         this.var_1744 = param1.readString();
         this.var_1746 = param1.readString();
         this.var_1745 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_947;
      }
      
      public function get online() : Boolean
      {
         return this.var_788;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1743;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get categoryId() : int
      {
         return this.var_1492;
      }
      
      public function get motto() : String
      {
         return this.var_1744;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1746;
      }
      
      public function get realName() : String
      {
         return this.var_1745;
      }
   }
}
