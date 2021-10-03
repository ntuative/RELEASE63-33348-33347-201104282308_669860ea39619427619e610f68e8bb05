package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_134:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_113:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_707:int = 2;
      
      public static const const_790:int = 3;
      
      public static const const_1734:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1744:String = "";
      
      private var var_2207:int;
      
      private var var_2378:int = 0;
      
      private var var_2379:int = 0;
      
      private var var_623:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_273:Array;
      
      private var var_1459:int = 0;
      
      private var var_2589:String = "";
      
      private var var_2588:int = 0;
      
      private var var_2587:int = 0;
      
      private var var_1636:Boolean = false;
      
      private var var_1745:String = "";
      
      private var var_2599:Boolean = false;
      
      private var var_2598:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2600:Boolean = false;
      
      private var var_2602:Boolean = false;
      
      private var var_2597:Boolean = false;
      
      private var var_2601:Boolean = false;
      
      private var var_2603:Boolean = false;
      
      private var var_2595:Boolean = false;
      
      private var var_2596:int = 0;
      
      private var var_1638:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_273 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1744 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1744;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2207 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2207;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2378 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2378;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2379;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_623 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_273 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_273;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1459 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1459;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2589 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2589;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2599 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2599;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2600 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2600;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2602 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2602;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2597 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2597;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2601 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2601;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2603 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2603;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2595 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2595;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2596 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2596;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2598 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2598;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1638 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1638;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2588 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2588;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2587 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2587;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1636 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1636;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1745 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1745;
      }
   }
}
