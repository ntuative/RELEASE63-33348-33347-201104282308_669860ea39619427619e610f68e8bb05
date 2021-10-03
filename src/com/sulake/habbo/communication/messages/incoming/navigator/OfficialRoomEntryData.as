package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1156:int = 1;
      
      public static const const_856:int = 2;
      
      public static const const_960:int = 3;
      
      public static const const_1813:int = 4;
       
      
      private var _index:int;
      
      private var var_2668:String;
      
      private var var_2667:String;
      
      private var var_2669:Boolean;
      
      private var var_2665:String;
      
      private var var_999:String;
      
      private var var_2666:int;
      
      private var var_2338:int;
      
      private var _type:int;
      
      private var var_2309:String;
      
      private var var_986:GuestRoomData;
      
      private var var_985:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2668 = param1.readString();
         this.var_2667 = param1.readString();
         this.var_2669 = param1.readInteger() == 1;
         this.var_2665 = param1.readString();
         this.var_999 = param1.readString();
         this.var_2666 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1156)
         {
            this.var_2309 = param1.readString();
         }
         else if(this._type == const_960)
         {
            this.var_985 = new PublicRoomData(param1);
         }
         else if(this._type == const_856)
         {
            this.var_986 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_986 != null)
         {
            this.var_986.dispose();
            this.var_986 = null;
         }
         if(this.var_985 != null)
         {
            this.var_985.dispose();
            this.var_985 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2668;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2667;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2669;
      }
      
      public function get picText() : String
      {
         return this.var_2665;
      }
      
      public function get picRef() : String
      {
         return this.var_999;
      }
      
      public function get folderId() : int
      {
         return this.var_2666;
      }
      
      public function get tag() : String
      {
         return this.var_2309;
      }
      
      public function get userCount() : int
      {
         return this.var_2338;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_986;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_985;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1156)
         {
            return 0;
         }
         if(this.type == const_856)
         {
            return this.var_986.maxUserCount;
         }
         if(this.type == const_960)
         {
            return this.var_985.maxUsers;
         }
         return 0;
      }
   }
}
