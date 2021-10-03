package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_842:TileHeightMap = null;
      
      private var var_1276:LegacyWallGeometry = null;
      
      private var var_1275:RoomCamera = null;
      
      private var var_843:SelectedRoomObjectData = null;
      
      private var var_841:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_555:Map;
      
      private var var_556:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_555 = new Map();
         this.var_556 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1276 = new LegacyWallGeometry();
         this.var_1275 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_842;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_842 != null)
         {
            this.var_842.dispose();
         }
         this.var_842 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1276;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1275;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_843;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_843 != null)
         {
            this.var_843.dispose();
         }
         this.var_843 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_841;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_841 != null)
         {
            this.var_841.dispose();
         }
         this.var_841 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_842 != null)
         {
            this.var_842.dispose();
            this.var_842 = null;
         }
         if(this.var_1276 != null)
         {
            this.var_1276.dispose();
            this.var_1276 = null;
         }
         if(this.var_1275 != null)
         {
            this.var_1275.dispose();
            this.var_1275 = null;
         }
         if(this.var_843 != null)
         {
            this.var_843.dispose();
            this.var_843 = null;
         }
         if(this.var_841 != null)
         {
            this.var_841.dispose();
            this.var_841 = null;
         }
         if(this.var_555 != null)
         {
            this.var_555.dispose();
            this.var_555 = null;
         }
         if(this.var_556 != null)
         {
            this.var_556.dispose();
            this.var_556 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_555.remove(param1.id);
            this.var_555.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_555.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_555.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_555.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_556.remove(param1.id);
            this.var_556.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_556.length > 0)
         {
            return this.getWallItemDataWithId(this.var_556.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_556.remove(param1);
      }
   }
}
