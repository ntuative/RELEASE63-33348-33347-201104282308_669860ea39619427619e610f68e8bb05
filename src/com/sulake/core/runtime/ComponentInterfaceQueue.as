package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2002:IID;
      
      private var var_1082:Boolean;
      
      private var var_1256:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2002 = param1;
         this.var_1256 = new Array();
         this.var_1082 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2002;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1082;
      }
      
      public function get receivers() : Array
      {
         return this.var_1256;
      }
      
      public function dispose() : void
      {
         if(!this.var_1082)
         {
            this.var_1082 = true;
            this.var_2002 = null;
            while(this.var_1256.length > 0)
            {
               this.var_1256.pop();
            }
            this.var_1256 = null;
         }
      }
   }
}
