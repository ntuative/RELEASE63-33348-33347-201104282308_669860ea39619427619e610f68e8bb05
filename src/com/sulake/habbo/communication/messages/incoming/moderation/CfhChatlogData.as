package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1973:int;
      
      private var var_2746:int;
      
      private var var_1500:int;
      
      private var var_2251:int;
      
      private var var_119:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1973 = param1.readInteger();
         this.var_2746 = param1.readInteger();
         this.var_1500 = param1.readInteger();
         this.var_2251 = param1.readInteger();
         this.var_119 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1973);
      }
      
      public function get callId() : int
      {
         return this.var_1973;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2746;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1500;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2251;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_119;
      }
   }
}
