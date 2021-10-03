package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_345:int;
      
      private var var_781:Boolean;
      
      private var var_1018:String;
      
      private var _ownerName:String;
      
      private var var_2298:int;
      
      private var var_2338:int;
      
      private var var_2838:int;
      
      private var var_1765:String;
      
      private var var_2841:int;
      
      private var var_2497:Boolean;
      
      private var var_727:int;
      
      private var var_1492:int;
      
      private var var_2839:String;
      
      private var var_881:Array;
      
      private var var_2840:RoomThumbnailData;
      
      private var var_2296:Boolean;
      
      private var var_2837:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_881 = new Array();
         super();
         this.var_345 = param1.readInteger();
         this.var_781 = param1.readBoolean();
         this.var_1018 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2298 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_2838 = param1.readInteger();
         this.var_1765 = param1.readString();
         this.var_2841 = param1.readInteger();
         this.var_2497 = param1.readBoolean();
         this.var_727 = param1.readInteger();
         this.var_1492 = param1.readInteger();
         this.var_2839 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_881.push(_loc4_);
            _loc3_++;
         }
         this.var_2840 = new RoomThumbnailData(param1);
         this.var_2296 = param1.readBoolean();
         this.var_2837 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_881 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get method_1() : int
      {
         return this.var_345;
      }
      
      public function get event() : Boolean
      {
         return this.var_781;
      }
      
      public function get roomName() : String
      {
         return this.var_1018;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2298;
      }
      
      public function get userCount() : int
      {
         return this.var_2338;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2838;
      }
      
      public function get description() : String
      {
         return this.var_1765;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2841;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2497;
      }
      
      public function get score() : int
      {
         return this.var_727;
      }
      
      public function get categoryId() : int
      {
         return this.var_1492;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2839;
      }
      
      public function get tags() : Array
      {
         return this.var_881;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2840;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2296;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2837;
      }
   }
}
