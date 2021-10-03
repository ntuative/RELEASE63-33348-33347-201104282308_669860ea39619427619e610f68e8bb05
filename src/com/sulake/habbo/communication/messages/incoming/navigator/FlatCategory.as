package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1775:int;
      
      private var var_2708:String;
      
      private var var_325:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1775 = param1.readInteger();
         this.var_2708 = param1.readString();
         this.var_325 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1775;
      }
      
      public function get nodeName() : String
      {
         return this.var_2708;
      }
      
      public function get visible() : Boolean
      {
         return this.var_325;
      }
   }
}
