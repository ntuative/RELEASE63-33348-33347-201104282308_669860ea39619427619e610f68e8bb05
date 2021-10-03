package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_799:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1082)
         {
            _structure = null;
            _assets = null;
            var_266 = null;
            var_285 = null;
            var_623 = null;
            var_575 = null;
            var_330 = null;
            if(!var_1338 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_757 = null;
            var_1082 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_799[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_799[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_433:
               switch(_loc3_)
               {
                  case AvatarAction.const_888:
                  case AvatarAction.const_575:
                  case AvatarAction.const_392:
                  case AvatarAction.const_737:
                  case AvatarAction.const_413:
                  case AvatarAction.const_803:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_308:
            case AvatarAction.const_697:
            case AvatarAction.const_243:
            case AvatarAction.const_691:
            case AvatarAction.const_903:
            case AvatarAction.const_802:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
