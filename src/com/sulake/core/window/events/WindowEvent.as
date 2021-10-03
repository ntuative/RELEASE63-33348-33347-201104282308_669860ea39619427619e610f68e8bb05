package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1681:String = "WE_DESTROY";
      
      public static const const_362:String = "WE_DESTROYED";
      
      public static const const_1825:String = "WE_OPEN";
      
      public static const const_1606:String = "WE_OPENED";
      
      public static const const_1566:String = "WE_CLOSE";
      
      public static const const_1625:String = "WE_CLOSED";
      
      public static const const_1709:String = "WE_FOCUS";
      
      public static const const_299:String = "WE_FOCUSED";
      
      public static const const_1593:String = "WE_UNFOCUS";
      
      public static const const_1527:String = "WE_UNFOCUSED";
      
      public static const const_1696:String = "WE_ACTIVATE";
      
      public static const const_555:String = "WE_ACTIVATED";
      
      public static const const_1603:String = "WE_DEACTIVATE";
      
      public static const const_630:String = "WE_DEACTIVATED";
      
      public static const const_341:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_565:String = "WE_UNSELECT";
      
      public static const const_641:String = "WE_UNSELECTED";
      
      public static const const_1557:String = "WE_LOCK";
      
      public static const const_1787:String = "WE_LOCKED";
      
      public static const const_1755:String = "WE_UNLOCK";
      
      public static const const_1742:String = "WE_UNLOCKED";
      
      public static const const_745:String = "WE_ENABLE";
      
      public static const const_245:String = "WE_ENABLED";
      
      public static const const_742:String = "WE_DISABLE";
      
      public static const const_216:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_286:String = "WE_RELOCATED";
      
      public static const const_1168:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1659:String = "WE_MINIMIZE";
      
      public static const const_1822:String = "WE_MINIMIZED";
      
      public static const const_1635:String = "WE_MAXIMIZE";
      
      public static const const_1729:String = "WE_MAXIMIZED";
      
      public static const const_1707:String = "WE_RESTORE";
      
      public static const const_1677:String = "WE_RESTORED";
      
      public static const const_587:String = "WE_CHILD_ADDED";
      
      public static const const_420:String = "WE_CHILD_REMOVED";
      
      public static const const_196:String = "WE_CHILD_RELOCATED";
      
      public static const const_153:String = "WE_CHILD_RESIZED";
      
      public static const const_356:String = "WE_CHILD_ACTIVATED";
      
      public static const const_616:String = "WE_PARENT_ADDED";
      
      public static const const_1595:String = "WE_PARENT_REMOVED";
      
      public static const const_1582:String = "WE_PARENT_RELOCATED";
      
      public static const const_850:String = "WE_PARENT_RESIZED";
      
      public static const const_1082:String = "WE_PARENT_ACTIVATED";
      
      public static const const_178:String = "WE_OK";
      
      public static const const_619:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const const_606:String = "WE_SCROLL";
      
      public static const const_171:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_700:IWindow;
      
      protected var var_1077:Boolean;
      
      protected var var_471:Boolean;
      
      protected var var_475:Boolean;
      
      protected var var_701:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_700 = param3;
         _loc5_.var_471 = param4;
         _loc5_.var_475 = false;
         _loc5_.var_701 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_700;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_471;
      }
      
      public function recycle() : void
      {
         if(this.var_475)
         {
            throw new Error("Event already recycled!");
         }
         this.var_700 = null;
         this._window = null;
         this.var_475 = true;
         this.var_1077 = false;
         this.var_701.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1077;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1077 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1077;
      }
      
      public function stopPropagation() : void
      {
         this.var_1077 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1077 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_471 + " window: " + this._window + " }";
      }
   }
}
