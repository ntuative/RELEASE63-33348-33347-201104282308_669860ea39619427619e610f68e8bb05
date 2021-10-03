package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1450:Number = 12;
       
      
      private var var_2729:int = -1;
      
      private var var_2735:int = -2;
      
      private var var_206:Vector3d = null;
      
      private var var_1244:Number = 0;
      
      private var var_1516:Number = 0;
      
      private var var_1966:Boolean = false;
      
      private var var_187:Vector3d = null;
      
      private var var_1967:Vector3d;
      
      private var var_2733:Boolean = false;
      
      private var var_2731:Boolean = false;
      
      private var var_2728:Boolean = false;
      
      private var var_2727:Boolean = false;
      
      private var var_2732:int = 0;
      
      private var var_2734:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2736:int = 0;
      
      private var var_2730:int = 0;
      
      private var var_1844:int = -1;
      
      private var var_1968:int = 0;
      
      private var var_1969:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1967 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_187;
      }
      
      public function get targetId() : int
      {
         return this.var_2729;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2735;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1967;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2733;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2731;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2728;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2727;
      }
      
      public function get screenWd() : int
      {
         return this.var_2732;
      }
      
      public function get screenHt() : int
      {
         return this.var_2734;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2736;
      }
      
      public function get roomHt() : int
      {
         return this.var_2730;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1844;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_206 != null && this.var_187 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2729 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1967.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2735 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2733 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2731 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2728 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2727 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2732 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2734 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1969 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2736 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2730 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1844 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_206 == null)
         {
            this.var_206 = new Vector3d();
         }
         if(this.var_206.x != param1.x || this.var_206.y != param1.y || this.var_206.z != param1.z)
         {
            this.var_206.assign(param1);
            this.var_1968 = 0;
            _loc2_ = Vector3d.dif(this.var_206,this.var_187);
            this.var_1244 = _loc2_.length;
            this.var_1966 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_206 = null;
         this.var_187 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_187 != null)
         {
            return;
         }
         this.var_187 = new Vector3d();
         this.var_187.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_187 == null)
         {
            this.var_187 = new Vector3d();
         }
         this.var_187.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_206 != null && this.var_187 != null)
         {
            ++this.var_1968;
            if(this.var_1969)
            {
               this.var_1969 = false;
               this.var_187 = this.var_206;
               this.var_206 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_206,this.var_187);
            if(_loc3_.length > this.var_1244)
            {
               this.var_1244 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_187 = this.var_206;
               this.var_206 = null;
               this.var_1516 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1244);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1244 / const_1450;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1966)
               {
                  if(_loc7_ < this.var_1516)
                  {
                     _loc7_ = this.var_1516;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1966 = false;
                  }
               }
               this.var_1516 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_187 = Vector3d.sum(this.var_187,_loc3_);
            }
         }
      }
   }
}
