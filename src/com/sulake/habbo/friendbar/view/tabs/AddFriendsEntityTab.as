package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   
   public class AddFriendsEntityTab extends Tab
   {
      
      private static const const_1042:String = "icon";
      
      private static const TEXT:String = "text";
      
      private static const const_654:String = "header";
      
      private static const const_1872:String = "title";
      
      private static const BUTTON:String = "button";
      
      private static const const_1448:String = "addFriendsEntityTabXML";
      
      private static const const_1449:String = "add_friends_icon_png";
      
      private static var var_995:int = -1;
      
      private static const POOL:Array = [];
      
      private static const const_454:Array = [];
       
      
      public function AddFriendsEntityTab()
      {
         super();
      }
      
      public static function allocate() : AddFriendsEntityTab
      {
         var _loc1_:AddFriendsEntityTab = false ? POOL.pop() : new AddFriendsEntityTab();
         _loc1_.var_475 = false;
         _loc1_._window = _loc1_.allocateEntityWindow();
         return _loc1_;
      }
      
      public function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_454.pop() : var_1325.buildFromXML(var_869.getAssetByName(const_1448).content as XML) as IWindowContainer;
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.const_472,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseHover);
         _loc1_.findChildByName(const_654).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         if(var_995 < 0)
         {
            var_995 = _loc1_.height;
         }
         _loc1_.height = name_1;
         var _loc2_:IBitmapWrapperWindow = _loc1_.findChildByName(const_1042) as IBitmapWrapperWindow;
         _loc2_.disposesBitmap = false;
         _loc2_.bitmap = var_869.getAssetByName(const_1449).content as BitmapData;
         var _loc3_:IWindow = _loc1_.findChildByName(BUTTON);
         _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
         var _loc4_:IWindow = _loc1_.findChildByName(TEXT);
         _loc4_.visible = false;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.const_472,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseHover);
            param1.findChildByName(const_654).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.findChildByName(BUTTON).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
            param1.findChildByName(TEXT).visible = false;
            param1.width = name_5;
            param1.height = name_1;
            if(const_454.indexOf(param1) == -1)
            {
               const_454.push(param1);
            }
         }
      }
      
      override public function select() : void
      {
         if(!selected)
         {
            _window.height = var_995;
            _window.y = 0 - (0 - name_1);
            _window.findChildByName(TEXT).visible = true;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            _window.y = 0;
            _window.height = name_1;
            _window.findChildByName(TEXT).visible = false;
            super.deselect();
         }
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_475)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               var_475 = true;
               POOL.push(this);
            }
         }
      }
      
      private function onButtonClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            var_1073.findNewFriends();
            this.deselect();
         }
      }
   }
}
