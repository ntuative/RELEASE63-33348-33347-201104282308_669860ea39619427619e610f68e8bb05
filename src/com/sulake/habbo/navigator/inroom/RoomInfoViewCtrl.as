package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_183:IWindowContainer;
      
      private var var_2965:int;
      
      private var var_395:RoomEventViewCtrl;
      
      private var var_280:Timer;
      
      private var var_194:RoomSettingsCtrl;
      
      private var var_281:RoomThumbnailCtrl;
      
      private var var_1110:TagRenderer;
      
      private var var_326:IWindowContainer;
      
      private var var_465:IWindowContainer;
      
      private var var_860:IWindowContainer;
      
      private var var_2895:IWindowContainer;
      
      private var var_2894:IWindowContainer;
      
      private var var_1603:IWindowContainer;
      
      private var var_1018:ITextWindow;
      
      private var var_1314:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_1067:ITextWindow;
      
      private var var_1604:ITextWindow;
      
      private var var_1313:ITextWindow;
      
      private var var_1069:ITextWindow;
      
      private var var_2078:ITextWindow;
      
      private var var_279:IWindowContainer;
      
      private var var_1070:IWindowContainer;
      
      private var var_2081:IWindowContainer;
      
      private var var_2653:ITextWindow;
      
      private var var_861:ITextWindow;
      
      private var var_2897:IWindow;
      
      private var var_1605:IContainerButtonWindow;
      
      private var var_1600:IContainerButtonWindow;
      
      private var var_1602:IContainerButtonWindow;
      
      private var var_1601:IContainerButtonWindow;
      
      private var var_1607:IContainerButtonWindow;
      
      private var var_2080:IButtonWindow;
      
      private var var_2082:IButtonWindow;
      
      private var var_2079:IButtonWindow;
      
      private var var_1068:IWindowContainer;
      
      private var var_1606:ITextWindow;
      
      private var var_1316:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_1315:IButtonWindow;
      
      private var var_1066:IButtonWindow;
      
      private var var_2896:String;
      
      private var var_2898:String;
      
      private var var_464:Boolean = true;
      
      private const const_500:int = 75;
      
      private const const_474:int = 3;
      
      private const const_613:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_395 = new RoomEventViewCtrl(this._navigator);
         this.var_194 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_281 = new RoomThumbnailCtrl(this._navigator);
         this.var_1110 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_194);
         this.var_280 = new Timer(6000,1);
         this.var_280.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_105,this.onToolbarIconState);
         }
         if(this.var_280)
         {
            this.var_280.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_280.reset();
            this.var_280 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_280.reset();
         this.var_395.active = true;
         this.var_194.active = false;
         this.var_281.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_280.reset();
         this.var_194.load(param1);
         this.var_194.active = true;
         this.var_395.active = false;
         this.var_281.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_194.active = true;
         this.var_395.active = false;
         this.var_281.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_280.reset();
         this.var_194.active = false;
         this.var_395.active = false;
         this.var_281.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this.var_464)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1142,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_280.reset();
         this.var_395.active = false;
         this.var_194.active = false;
         this.var_281.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.method_1);
         }
         this.refresh();
         this._window.visible = true;
         if(this.var_464)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_56,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_280.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_280.reset();
         this.var_395.active = false;
         this.var_194.active = false;
         this.var_281.active = false;
         this.refresh();
         if(this.var_464)
         {
            if(!this._window.visible)
            {
               this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_56,HabboToolbarIconEnum.ROOMINFO,this._window,false));
               this._window.parent.activate();
            }
            else
            {
               this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_536,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            }
         }
         else
         {
            this._window.visible = !this._window.visible;
            this._window.x = this._window.desktop.width - this._window.width - this.const_474;
            this._window.y = this.const_500;
            if(this._window.visible)
            {
               this._window.activate();
            }
         }
      }
      
      private function refresh() : void
      {
         var _loc1_:int = 0;
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         if(this.var_464)
         {
            Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
            this._window.height = Util.getLowestPoint(this._window);
            this._window.y = this._window.desktop.height - this._window.height - 5;
            Logger.log("MAIN: " + this.var_326.rectangle + ", " + this.var_279.rectangle + ", " + this._window.rectangle);
         }
         else
         {
            Util.moveChildrenToColumn(this.var_183,["room_info","event_info","embed_info","buttons_container"],0,2);
            this.var_183.height = Util.getLowestPoint(this.var_183);
            _loc1_ = this._window.desktop.height - this._window.height - this.const_613;
            if(this._window.y > _loc1_)
            {
               this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
            }
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_326);
         if(this.var_464)
         {
            this.var_326.findChildByName("close").visible = true;
         }
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.method_1 == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_194.refresh(this.var_326);
         this.var_281.refresh(this.var_326);
         Util.moveChildrenToColumn(this.var_326,["room_details","room_buttons"],0,2);
         this.var_326.height = Util.getLowestPoint(this.var_326);
         this.var_326.visible = true;
         Logger.log("XORP: " + this.var_465.visible + ", " + this.var_1603.visible + ", " + this.var_860.visible + ", " + this.var_860.rectangle + ", " + this.var_326.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_279);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_395.refresh(this.var_279);
         if(Util.hasVisibleChildren(this.var_279) && !(this.var_194.active || this.var_281.active))
         {
            Util.moveChildrenToColumn(this.var_279,["event_details","event_buttons"],0,2);
            this.var_279.height = Util.getLowestPoint(this.var_279);
            this.var_279.visible = true;
         }
         else
         {
            this.var_279.visible = false;
         }
         Logger.log("EVENT: " + this.var_279.visible + ", " + this.var_279.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "RC4_R27";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_194.active && !this.var_281.active && !this.var_395.active)
         {
            this.var_1068.visible = true;
            this.var_1316.text = this.getEmbedData();
         }
         else
         {
            this.var_1068.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_194.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_1315)
         {
            if(this.var_2896 == "exit_homeroom")
            {
               this.var_1315.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1315.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_1066)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_1066.visible = _loc1_;
            if(this.var_2898 == "0")
            {
               this.var_1066.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_1066.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_194.active || this.var_281.active)
         {
            return;
         }
         this.var_1018.text = param1.roomName;
         this.var_1018.height = this.var_1018.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_1067.text = param1.description;
         this.var_1110.refreshTags(this.var_465,param1.tags);
         this.var_1067.visible = false;
         if(param1.description != "")
         {
            this.var_1067.height = this.var_1067.textHeight + 5;
            this.var_1067.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1600,"facebook_logo_small",_loc3_,null,0);
         this.var_1600.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1605,"thumb_up",_loc4_,null,0);
         this.var_1605.visible = _loc4_;
         this.var_1069.visible = !_loc4_;
         this.var_2078.visible = !_loc4_;
         this.var_2078.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_465,"home",param2,null,0);
         this._navigator.refreshButton(this.var_465,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_465,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_1018.y,0);
         this.var_465.visible = true;
         this.var_465.height = Util.getLowestPoint(this.var_465);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_465.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_194.active || this.var_281.active)
         {
            return;
         }
         this.var_1314.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1314.height = this.var_1314.textHeight + 5;
         this.var_1604.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1604.height = this.var_1604.textHeight + 5;
         Util.moveChildrenToColumn(this.var_860,["public_space_name","public_space_desc"],this.var_1314.y,0);
         this.var_860.visible = true;
         this.var_860.height = Math.max(86,Util.getLowestPoint(this.var_860));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_395.active)
         {
            return;
         }
         this.var_2653.text = param1.eventName;
         this.var_861.text = param1.eventDescription;
         this.var_1110.refreshTags(this.var_1070,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_861.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_861.height = this.var_861.textHeight + 5;
            this.var_861.y = Util.getLowestPoint(this.var_1070) + 2;
            this.var_861.visible = true;
         }
         this.var_1070.visible = true;
         this.var_1070.height = Util.getLowestPoint(this.var_1070);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_194.active || this.var_281.active)
         {
            return;
         }
         this.var_2080.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1602.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1601.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1607.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1603.visible = Util.hasVisibleChildren(this.var_1603);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_395.active)
         {
            return;
         }
         this.var_2082.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_2079.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_2081.visible = Util.hasVisibleChildren(this.var_2081);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         if(this.var_464)
         {
            this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
            this._window.setParamFlag(HabboWindowParam.const_62,false);
            this._window.setParamFlag(HabboWindowParam.const_1558,true);
         }
         else
         {
            this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
            this.var_183 = this._window.findChildByName("content") as IWindowContainer;
         }
         this._window.visible = false;
         this.var_326 = IWindowContainer(this.find("room_info"));
         this.var_465 = IWindowContainer(this.find("room_details"));
         this.var_860 = IWindowContainer(this.find("public_space_details"));
         this.var_2895 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2894 = IWindowContainer(this.find("rating_cont"));
         this.var_1603 = IWindowContainer(this.find("room_buttons"));
         this.var_1018 = ITextWindow(this.find("room_name"));
         this.var_1314 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_1067 = ITextWindow(this.find("room_desc"));
         this.var_1604 = ITextWindow(this.find("public_space_desc"));
         this.var_1313 = ITextWindow(this.find("owner_caption"));
         this.var_1069 = ITextWindow(this.find("rating_caption"));
         this.var_2078 = ITextWindow(this.find("rating_txt"));
         this.var_279 = IWindowContainer(this.find("event_info"));
         this.var_1070 = IWindowContainer(this.find("event_details"));
         this.var_2081 = IWindowContainer(this.find("event_buttons"));
         this.var_2653 = ITextWindow(this.find("event_name"));
         this.var_861 = ITextWindow(this.find("event_desc"));
         this.var_1600 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1605 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2897 = this.find("staff_pick_button");
         this.var_1602 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1601 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1607 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_2080 = IButtonWindow(this.find("room_settings_button"));
         this.var_2082 = IButtonWindow(this.find("create_event_button"));
         this.var_2079 = IButtonWindow(this.find("edit_event_button"));
         this.var_1068 = IWindowContainer(this.find("embed_info"));
         this.var_1606 = ITextWindow(this.find("embed_info_txt"));
         this.var_1316 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_1315 = IButtonWindow(this.find("exit_room_button"));
         this.var_1066 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1602,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1601,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_2080,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1607,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_2082,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_2079,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1316,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1605,this.onThumbUp);
         Util.setProcDirectly(this.var_2897,this.onStaffPick);
         Util.setProcDirectly(this.var_1600,this.onFacebookLike);
         Util.setProcDirectly(this.var_1066,this.onZoomClick);
         Util.setProcDirectly(this.var_1315,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1602,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1601,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1607,"home",true,null,0);
         if(this.var_464)
         {
            this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         }
         else
         {
            this._window.findChildByTag("close").procedure = this.onCloseButtonClick;
         }
         Util.setProcDirectly(this.var_326,this.onHover);
         Util.setProcDirectly(this.var_279,this.onHover);
         this.var_1313.width = this.var_1313.textWidth;
         Util.moveChildrenToRow(this.var_2895,["owner_caption","owner_name"],this.var_1313.x,this.var_1313.y,3);
         this.var_1069.width = this.var_1069.textWidth;
         Util.moveChildrenToRow(this.var_2894,["rating_caption","rating_txt"],this.var_1069.x,this.var_1069.y,3);
         this.var_1606.height = this.var_1606.textHeight + 5;
         Util.moveChildrenToColumn(this.var_1068,["embed_info_txt","embed_src_txt"],this.var_1606.y,2);
         this.var_1068.height = Util.getLowestPoint(this.var_1068) + 5;
         this.var_2965 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.method_1));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.method_1));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.method_1);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.method_1);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.method_1));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.method_1,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.method_1);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1316.setSelection(0,this.var_1316.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_36);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_36);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_105)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2898 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2896 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_280.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         if(this.var_464)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_536,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         else
         {
            this._window.visible = false;
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.method_1;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_105,this.onToolbarIconState);
         }
      }
      
      public function handleToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type != HabboToolbarEvent.const_36)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.MEMENU:
               if(this.useToolbar)
               {
                  this.close();
               }
               break;
            case HabboToolbarIconEnum.ROOMINFO:
               this.toggle();
         }
      }
      
      public function configure() : void
      {
         if(this._navigator.configuration)
         {
            this.var_464 = this._navigator.configuration.getKey("roominfo.widget.enabled") != "1";
         }
      }
      
      public function get useToolbar() : Boolean
      {
         return this.var_464;
      }
   }
}
