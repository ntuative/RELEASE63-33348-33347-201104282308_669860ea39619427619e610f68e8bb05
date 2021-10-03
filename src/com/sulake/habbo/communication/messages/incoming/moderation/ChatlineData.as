package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2193:int;
      
      private var var_2191:int;
      
      private var var_2192:int;
      
      private var var_2190:String;
      
      private var var_1672:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2193 = param1.readInteger();
         this.var_2191 = param1.readInteger();
         this.var_2192 = param1.readInteger();
         this.var_2190 = param1.readString();
         this.var_1672 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2193;
      }
      
      public function get minute() : int
      {
         return this.var_2191;
      }
      
      public function get chatterId() : int
      {
         return this.var_2192;
      }
      
      public function get chatterName() : String
      {
         return this.var_2190;
      }
      
      public function get msg() : String
      {
         return this.var_1672;
      }
   }
}
