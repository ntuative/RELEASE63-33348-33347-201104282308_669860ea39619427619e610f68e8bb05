package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1194:Boolean;
      
      private var var_2650:int;
      
      private var var_2651:String;
      
      private var var_345:int;
      
      private var var_2649:int;
      
      private var var_2653:String;
      
      private var var_2648:String;
      
      private var var_2652:String;
      
      private var var_881:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_881 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1194 = false;
            return;
         }
         this.var_1194 = true;
         this.var_2650 = int(_loc2_);
         this.var_2651 = param1.readString();
         this.var_345 = int(param1.readString());
         this.var_2649 = param1.readInteger();
         this.var_2653 = param1.readString();
         this.var_2648 = param1.readString();
         this.var_2652 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_881.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2650;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2651;
      }
      
      public function get method_1() : int
      {
         return this.var_345;
      }
      
      public function get eventType() : int
      {
         return this.var_2649;
      }
      
      public function get eventName() : String
      {
         return this.var_2653;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2648;
      }
      
      public function get creationTime() : String
      {
         return this.var_2652;
      }
      
      public function get tags() : Array
      {
         return this.var_881;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1194;
      }
   }
}
