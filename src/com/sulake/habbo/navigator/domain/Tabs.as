package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_394:int = 1;
      
      public static const const_242:int = 2;
      
      public static const const_329:int = 3;
      
      public static const const_411:int = 4;
      
      public static const const_270:int = 5;
      
      public static const const_442:int = 1;
      
      public static const const_941:int = 2;
      
      public static const const_729:int = 3;
      
      public static const const_833:int = 4;
      
      public static const const_238:int = 5;
      
      public static const const_938:int = 6;
      
      public static const const_828:int = 7;
      
      public static const const_293:int = 8;
      
      public static const const_439:int = 9;
      
      public static const const_2072:int = 10;
      
      public static const const_911:int = 11;
      
      public static const const_579:int = 12;
       
      
      private var var_423:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_423 = new Array();
         this.var_423.push(new Tab(this._navigator,const_394,const_579,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_498));
         this.var_423.push(new Tab(this._navigator,const_242,const_442,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_498));
         this.var_423.push(new Tab(this._navigator,const_411,const_911,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1099));
         this.var_423.push(new Tab(this._navigator,const_329,const_238,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_498));
         this.var_423.push(new Tab(this._navigator,const_270,const_293,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_720));
         this.setSelectedTab(const_394);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_411;
      }
      
      public function get tabs() : Array
      {
         return this.var_423;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_423)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_423)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_423)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
