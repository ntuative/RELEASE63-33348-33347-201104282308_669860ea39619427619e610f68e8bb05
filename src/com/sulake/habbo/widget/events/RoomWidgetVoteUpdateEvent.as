package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_139:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_164:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1179:String;
      
      private var var_1393:Array;
      
      private var var_1160:Array;
      
      private var var_1726:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1179 = param2;
         this.var_1393 = param3;
         this.var_1160 = param4;
         if(this.var_1160 == null)
         {
            this.var_1160 = [];
         }
         this.var_1726 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1179;
      }
      
      public function get choices() : Array
      {
         return this.var_1393.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1160.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1726;
      }
   }
}
