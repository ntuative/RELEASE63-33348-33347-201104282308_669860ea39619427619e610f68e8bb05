package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2684:int;
      
      private var var_2685:int;
      
      private var var_2683:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2684 = param1;
         this.var_2685 = param2;
         this.var_2683 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2684,this.var_2685,this.var_2683];
      }
      
      public function dispose() : void
      {
      }
   }
}
