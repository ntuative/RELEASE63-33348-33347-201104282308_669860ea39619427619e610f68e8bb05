package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1806:int;
      
      private var var_2284:String;
      
      private var var_947:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1806 = param1.readInteger();
         this.var_2284 = param1.readString();
         this.var_947 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1806;
      }
      
      public function get figureString() : String
      {
         return this.var_2284;
      }
      
      public function get gender() : String
      {
         return this.var_947;
      }
   }
}
