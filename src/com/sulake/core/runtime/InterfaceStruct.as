package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1551:IID;
      
      private var var_2024:String;
      
      private var var_104:IUnknown;
      
      private var var_827:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1551 = param1;
         this.var_2024 = getQualifiedClassName(this.var_1551);
         this.var_104 = param2;
         this.var_827 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1551;
      }
      
      public function get iis() : String
      {
         return this.var_2024;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_104;
      }
      
      public function get references() : uint
      {
         return this.var_827;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_104 == null;
      }
      
      public function dispose() : void
      {
         this.var_1551 = null;
         this.var_2024 = null;
         this.var_104 = null;
         this.var_827 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_827;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_827) : uint(0);
      }
   }
}
