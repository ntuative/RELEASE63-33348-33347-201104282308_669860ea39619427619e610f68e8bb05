package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1349:IHabboTracking;
      
      private var var_1625:Boolean = false;
      
      private var var_2576:int = 0;
      
      private var var_1856:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1349 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1349 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1625 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2576 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1625)
         {
            return;
         }
         ++this.var_1856;
         if(this.var_1856 <= this.var_2576)
         {
            this.var_1349.track("toolbar",param1);
         }
      }
   }
}
