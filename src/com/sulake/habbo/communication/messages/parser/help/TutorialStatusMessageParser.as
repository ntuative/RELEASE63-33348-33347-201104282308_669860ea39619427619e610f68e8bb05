package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1282:Boolean;
      
      private var var_1281:Boolean;
      
      private var var_1568:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1282;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1281;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1568;
      }
      
      public function flush() : Boolean
      {
         this.var_1282 = false;
         this.var_1281 = false;
         this.var_1568 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1282 = param1.readBoolean();
         this.var_1281 = param1.readBoolean();
         this.var_1568 = param1.readBoolean();
         return true;
      }
   }
}
