package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1866:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_202:MsgWithRequestId;
      
      private var var_630:RoomEventData;
      
      private var var_2561:Boolean;
      
      private var var_2571:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2322:int;
      
      private var var_252:GuestRoomData;
      
      private var var_965:PublicRoomShortData;
      
      private var var_2566:int;
      
      private var var_2568:Boolean;
      
      private var var_2565:int;
      
      private var var_2564:Boolean;
      
      private var var_1852:int;
      
      private var var_2563:Boolean;
      
      private var var_1471:Array;
      
      private var var_1472:Array;
      
      private var var_2567:int;
      
      private var var_1470:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1200:Boolean;
      
      private var var_2569:int;
      
      private var var_2570:Boolean;
      
      private var var_2562:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1471 = new Array();
         this.var_1472 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_252 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_252 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_965 = null;
         this.var_252 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_965 = param1.publicSpace;
            this.var_630 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_630 != null)
         {
            this.var_630.dispose();
            this.var_630 = null;
         }
         if(this.var_965 != null)
         {
            this.var_965.dispose();
            this.var_965 = null;
         }
         if(this.var_252 != null)
         {
            this.var_252.dispose();
            this.var_252 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_252 != null)
         {
            this.var_252.dispose();
         }
         this.var_252 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_630 != null)
         {
            this.var_630.dispose();
         }
         this.var_630 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_202 != null && this.var_202 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_202 != null && this.var_202 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_202 != null && this.var_202 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_202 = param1;
         this.var_1200 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_202 = param1;
         this.var_1200 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_202 = param1;
         this.var_1200 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_202 == null)
         {
            return;
         }
         this.var_202.dispose();
         this.var_202 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_202 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_202 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_202 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_630;
      }
      
      public function get avatarId() : int
      {
         return this.var_2322;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2561;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2571;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_252;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_965;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2568;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2565;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1852;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2564;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2569;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2566;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2563;
      }
      
      public function get adIndex() : int
      {
         return this.var_2562;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2570;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2565 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2568 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2561 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2571 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2564 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1852 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2569 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2566 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2563 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2562 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2570 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1471 = param1;
         this.var_1472 = new Array();
         for each(_loc2_ in this.var_1471)
         {
            if(_loc2_.visible)
            {
               this.var_1472.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1471;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1472;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2567 = param1.limit;
         this.var_1470 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1470 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_252.method_1;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_252 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_252.method_1;
         return this.var_1852 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1470 >= this.var_2567;
      }
      
      public function startLoading() : void
      {
         this.var_1200 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1200;
      }
   }
}
