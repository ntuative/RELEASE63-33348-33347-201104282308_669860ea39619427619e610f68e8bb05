package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2206:int = 0;
      
      private var var_1366:String = "";
      
      private var var_1650:String = "";
      
      private var var_2175:String = "";
      
      private var var_2289:String = "";
      
      private var var_1703:int = 0;
      
      private var var_2291:int = 0;
      
      private var var_2288:int = 0;
      
      private var var_1367:int = 0;
      
      private var var_2290:int = 0;
      
      private var var_1364:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2206 = param1;
         this.var_1366 = param2;
         this.var_1650 = param3;
         this.var_2175 = param4;
         this.var_2289 = param5;
         if(param6)
         {
            this.var_1703 = 1;
         }
         else
         {
            this.var_1703 = 0;
         }
         this.var_2291 = param7;
         this.var_2288 = param8;
         this.var_1367 = param9;
         this.var_2290 = param10;
         this.var_1364 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2206,this.var_1366,this.var_1650,this.var_2175,this.var_2289,this.var_1703,this.var_2291,this.var_2288,this.var_1367,this.var_2290,this.var_1364];
      }
   }
}
