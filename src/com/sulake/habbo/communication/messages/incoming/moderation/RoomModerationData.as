package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_345:int;
      
      private var var_2338:int;
      
      private var var_2443:Boolean;
      
      private var var_2210:int;
      
      private var _ownerName:String;
      
      private var var_119:RoomData;
      
      private var var_781:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_345 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_2443 = param1.readBoolean();
         this.var_2210 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_119 = new RoomData(param1);
         this.var_781 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_119 != null)
         {
            this.var_119.dispose();
            this.var_119 = null;
         }
         if(this.var_781 != null)
         {
            this.var_781.dispose();
            this.var_781 = null;
         }
      }
      
      public function get method_1() : int
      {
         return this.var_345;
      }
      
      public function get userCount() : int
      {
         return this.var_2338;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2443;
      }
      
      public function get ownerId() : int
      {
         return this.var_2210;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_119;
      }
      
      public function get event() : RoomData
      {
         return this.var_781;
      }
   }
}
