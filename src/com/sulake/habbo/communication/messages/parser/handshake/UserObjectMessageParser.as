package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_623:String;
      
      private var var_900:String;
      
      private var var_2851:String;
      
      private var var_1745:String;
      
      private var var_2854:int;
      
      private var var_2853:String;
      
      private var var_2852:int;
      
      private var var_2850:int;
      
      private var var_2847:int;
      
      private var _respectLeft:int;
      
      private var var_796:int;
      
      private var var_2659:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_623 = param1.readString();
         this.var_900 = param1.readString();
         this.var_2851 = param1.readString();
         this.var_1745 = param1.readString();
         this.var_2854 = param1.readInteger();
         this.var_2853 = param1.readString();
         this.var_2852 = param1.readInteger();
         this.var_2850 = param1.readInteger();
         this.var_2847 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_796 = param1.readInteger();
         this.var_2659 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get sex() : String
      {
         return this.var_900;
      }
      
      public function get customData() : String
      {
         return this.var_2851;
      }
      
      public function get realName() : String
      {
         return this.var_1745;
      }
      
      public function get tickets() : int
      {
         return this.var_2854;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2853;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2852;
      }
      
      public function get directMail() : int
      {
         return this.var_2850;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2847;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_796;
      }
      
      public function get identityId() : int
      {
         return this.var_2659;
      }
   }
}
