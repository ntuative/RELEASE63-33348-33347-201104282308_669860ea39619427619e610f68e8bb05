package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_561:String = "RWUAM_WHISPER_USER";
      
      public static const const_469:String = "RWUAM_IGNORE_USER";
      
      public static const const_609:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_430:String = "RWUAM_KICK_USER";
      
      public static const const_617:String = "RWUAM_BAN_USER";
      
      public static const const_518:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_524:String = "RWUAM_RESPECT_USER";
      
      public static const const_548:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_601:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_584:String = "RWUAM_START_TRADING";
      
      public static const const_973:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_580:String = "RWUAM_KICK_BOT";
      
      public static const const_607:String = "RWUAM_REPORT";
      
      public static const const_549:String = "RWUAM_PICKUP_PET";
      
      public static const const_1752:String = "RWUAM_TRAIN_PET";
      
      public static const const_480:String = " RWUAM_RESPECT_PET";
      
      public static const const_419:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_698:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
