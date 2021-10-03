package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_878:int = 500;
      
      private static var var_632:Vector3d = new Vector3d();
       
      
      private var var_435:Vector3d;
      
      private var var_94:Vector3d;
      
      private var var_1862:int = 0;
      
      private var var_2579:int;
      
      private var var_1130:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_435 = new Vector3d();
         this.var_94 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1862;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_94 = null;
         this.var_435 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_94.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1130 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_94.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2579 = this.var_1862;
               this.var_435.assign(_loc3_);
               this.var_435.sub(this.var_94);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         if(this.var_435.length > 0 || _loc2_ != null)
         {
            _loc3_ = param1 - this.var_2579;
            if(_loc3_ > this.var_1130)
            {
               _loc3_ = this.var_1130;
            }
            if(this.var_435.length > 0)
            {
               var_632.assign(this.var_435);
               var_632.mul(_loc3_ / Number(this.var_1130));
               var_632.add(this.var_94);
            }
            else
            {
               var_632.assign(this.var_94);
            }
            if(_loc2_ != null)
            {
               var_632.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_632);
            }
            if(_loc3_ == this.var_1130)
            {
               this.var_435.x = 0;
               this.var_435.y = 0;
               this.var_435.z = 0;
            }
         }
         this.var_1862 = param1;
      }
   }
}
