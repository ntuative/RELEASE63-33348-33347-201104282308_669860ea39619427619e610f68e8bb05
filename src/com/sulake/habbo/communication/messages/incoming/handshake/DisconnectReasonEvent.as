package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2039:int = 0;
      
      public static const const_1698:int = 1;
      
      public static const const_1708:int = 2;
      
      public static const const_2086:int = 3;
      
      public static const const_2103:int = 4;
      
      public static const const_2055:int = 5;
      
      public static const const_1715:int = 10;
      
      public static const const_2005:int = 11;
      
      public static const const_2044:int = 12;
      
      public static const const_2100:int = 13;
      
      public static const const_2026:int = 16;
      
      public static const const_2107:int = 17;
      
      public static const const_2076:int = 18;
      
      public static const const_2099:int = 19;
      
      public static const const_2097:int = 20;
      
      public static const const_2060:int = 22;
      
      public static const const_1945:int = 23;
      
      public static const const_1960:int = 24;
      
      public static const const_1993:int = 25;
      
      public static const const_2029:int = 26;
      
      public static const const_1947:int = 27;
      
      public static const const_1957:int = 28;
      
      public static const const_2004:int = 29;
      
      public static const const_2081:int = 100;
      
      public static const const_2078:int = 101;
      
      public static const const_2013:int = 102;
      
      public static const const_2062:int = 103;
      
      public static const const_1959:int = 104;
      
      public static const const_1939:int = 105;
      
      public static const const_2093:int = 106;
      
      public static const const_2012:int = 107;
      
      public static const const_1928:int = 108;
      
      public static const const_2094:int = 109;
      
      public static const const_1963:int = 110;
      
      public static const const_1969:int = 111;
      
      public static const const_1938:int = 112;
      
      public static const const_1983:int = 113;
      
      public static const const_1942:int = 114;
      
      public static const const_2052:int = 115;
      
      public static const const_1981:int = 116;
      
      public static const const_2041:int = 117;
      
      public static const const_2024:int = 118;
      
      public static const const_1977:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1698:
            case const_1715:
               return "banned";
            case const_1708:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
