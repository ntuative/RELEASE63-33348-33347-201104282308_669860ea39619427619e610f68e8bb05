package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2961:uint;
      
      private var var_146:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_263:IWindowContext;
      
      private var var_1292:IMouseDraggingService;
      
      private var var_1295:IMouseScalingService;
      
      private var var_1294:IMouseListenerService;
      
      private var var_1293:IFocusManagerService;
      
      private var var_1291:IToolTipAgentService;
      
      private var var_1296:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2961 = 0;
         this.var_146 = param2;
         this.var_263 = param1;
         this.var_1292 = new WindowMouseDragger(param2);
         this.var_1295 = new WindowMouseScaler(param2);
         this.var_1294 = new WindowMouseListener(param2);
         this.var_1293 = new FocusManager(param2);
         this.var_1291 = new WindowToolTipAgent(param2);
         this.var_1296 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1292 != null)
         {
            this.var_1292.dispose();
            this.var_1292 = null;
         }
         if(this.var_1295 != null)
         {
            this.var_1295.dispose();
            this.var_1295 = null;
         }
         if(this.var_1294 != null)
         {
            this.var_1294.dispose();
            this.var_1294 = null;
         }
         if(this.var_1293 != null)
         {
            this.var_1293.dispose();
            this.var_1293 = null;
         }
         if(this.var_1291 != null)
         {
            this.var_1291.dispose();
            this.var_1291 = null;
         }
         if(this.var_1296 != null)
         {
            this.var_1296.dispose();
            this.var_1296 = null;
         }
         this.var_146 = null;
         this.var_263 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1292;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1295;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1294;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1293;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1291;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1296;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
