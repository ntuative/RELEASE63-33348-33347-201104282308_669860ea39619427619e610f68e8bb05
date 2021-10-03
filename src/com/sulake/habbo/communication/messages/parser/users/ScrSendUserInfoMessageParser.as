package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2090:int = 1;
      
      public static const const_1739:int = 2;
       
      
      private var var_996:String;
      
      private var var_2671:int;
      
      private var var_2676:int;
      
      private var var_2675:int;
      
      private var var_2672:int;
      
      private var var_2673:Boolean;
      
      private var var_2525:Boolean;
      
      private var var_2524:int;
      
      private var var_2526:int;
      
      private var var_2674:Boolean;
      
      private var var_2678:int;
      
      private var var_2677:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_996 = param1.readString();
         this.var_2671 = param1.readInteger();
         this.var_2676 = param1.readInteger();
         this.var_2675 = param1.readInteger();
         this.var_2672 = param1.readInteger();
         this.var_2673 = param1.readBoolean();
         this.var_2525 = param1.readBoolean();
         this.var_2524 = param1.readInteger();
         this.var_2526 = param1.readInteger();
         this.var_2674 = param1.readBoolean();
         this.var_2678 = param1.readInteger();
         this.var_2677 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_996;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2671;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2676;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2675;
      }
      
      public function get responseType() : int
      {
         return this.var_2672;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2673;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2525;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2524;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2526;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2674;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2678;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2677;
      }
   }
}
