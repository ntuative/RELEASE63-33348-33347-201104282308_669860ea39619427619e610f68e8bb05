package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSpamWallPostItFinishEditingMessage extends RoomWidgetMessage
   {
      
      public static const const_970:String = "RWSWPFEE_SEND_POSTIT_DATA";
       
      
      private var var_195:int;
      
      private var var_467:String;
      
      private var _text:String;
      
      private var var_328:String;
      
      public function RoomWidgetSpamWallPostItFinishEditingMessage(param1:String, param2:int, param3:String, param4:String, param5:String)
      {
         super(param1);
         this.var_195 = param2;
         this.var_467 = param3;
         this._text = param4;
         this.var_328 = param5;
      }
      
      public function get location() : String
      {
         return this.var_467;
      }
      
      public function get objectId() : int
      {
         return this.var_195;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_328;
      }
   }
}
