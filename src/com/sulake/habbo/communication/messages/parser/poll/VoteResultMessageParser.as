package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1179:String;
      
      private var var_1393:Array;
      
      private var var_1160:Array;
      
      private var var_1726:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1179;
      }
      
      public function get choices() : Array
      {
         return this.var_1393.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1160.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1726;
      }
      
      public function flush() : Boolean
      {
         this.var_1179 = "";
         this.var_1393 = [];
         this.var_1160 = [];
         this.var_1726 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1179 = param1.readString();
         this.var_1393 = [];
         this.var_1160 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1393.push(param1.readString());
            this.var_1160.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1726 = param1.readInteger();
         return true;
      }
   }
}
