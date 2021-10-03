package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1865:String;
      
      private var var_2533:String;
      
      private var var_444:BitmapDataAsset;
      
      private var var_1429:Boolean;
      
      private var var_1428:Boolean;
      
      private var var_2534:Boolean;
      
      private var _offsetX:int;
      
      private var var_1260:int;
      
      private var var_249:int;
      
      private var _height:int;
      
      private var var_859:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1865 = param1;
         this.var_2533 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_444 = _loc9_;
            this.var_859 = false;
         }
         else
         {
            this.var_444 = null;
            this.var_859 = true;
         }
         this.var_1429 = param4;
         this.var_1428 = param5;
         this._offsetX = param6;
         this.var_1260 = param7;
         this.var_2534 = param8;
      }
      
      public function dispose() : void
      {
         this.var_444 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_859 && this.var_444 != null)
         {
            _loc1_ = this.var_444.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_249 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_859 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1428;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1429;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_249;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1865;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2533;
      }
      
      public function get asset() : IAsset
      {
         return this.var_444;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2534;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1429)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1428)
         {
            return this.var_1260;
         }
         return -(this.height + this.var_1260);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1260;
      }
   }
}
