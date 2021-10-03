package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import flash.utils.getTimer;
   
   public class AvatarImageActionCache
   {
       
      
      private var var_266:Map;
      
      private var var_2446:int;
      
      public function AvatarImageActionCache()
      {
         super();
         this.var_266 = new Map();
         this.setLastAccessTime(getTimer());
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this.debugInfo("[dispose]");
         if(this.var_266 == null)
         {
            return;
         }
         for each(_loc1_ in this.var_266)
         {
            _loc1_.dispose();
         }
         this.var_266.dispose();
      }
      
      public function getDirectionCache(param1:int) : AvatarImageDirectionCache
      {
         var _loc2_:String = param1.toString();
         return this.var_266.getValue(_loc2_) as AvatarImageDirectionCache;
      }
      
      public function updateDirectionCache(param1:int, param2:AvatarImageDirectionCache) : void
      {
         var _loc3_:String = param1.toString();
         this.var_266.add(_loc3_,param2);
      }
      
      public function setLastAccessTime(param1:int) : void
      {
         this.var_2446 = param1;
      }
      
      public function getLastAccessTime() : int
      {
         return this.var_2446;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
   }
}
