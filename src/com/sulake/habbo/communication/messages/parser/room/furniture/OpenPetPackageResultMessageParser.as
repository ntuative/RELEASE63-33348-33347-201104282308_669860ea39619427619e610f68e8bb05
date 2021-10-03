package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_195:int = 0;
      
      private var var_1623:int = 0;
      
      private var var_1622:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_195;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1623;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1622;
      }
      
      public function flush() : Boolean
      {
         this.var_195 = 0;
         this.var_1623 = 0;
         this.var_1622 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_195 = param1.readInteger();
         this.var_1623 = param1.readInteger();
         this.var_1622 = param1.readString();
         return true;
      }
   }
}
