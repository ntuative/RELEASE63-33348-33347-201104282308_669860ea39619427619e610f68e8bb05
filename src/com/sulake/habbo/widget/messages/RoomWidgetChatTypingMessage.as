package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_765:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_588:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_765);
         this.var_588 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_588;
      }
   }
}
