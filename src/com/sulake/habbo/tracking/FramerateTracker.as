package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1646:int;
      
      private var var_2172:int;
      
      private var var_810:int;
      
      private var var_485:Number;
      
      private var var_2171:Boolean;
      
      private var var_2173:int;
      
      private var var_1645:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_485);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2172 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2173 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2171 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_810;
         if(this.var_810 == 1)
         {
            this.var_485 = param1;
            this.var_1646 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_810);
            this.var_485 = this.var_485 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2171 && param3 - this.var_1646 >= this.var_2172)
         {
            this.var_810 = 0;
            if(this.var_1645 < this.var_2173)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1645;
               this.var_1646 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
