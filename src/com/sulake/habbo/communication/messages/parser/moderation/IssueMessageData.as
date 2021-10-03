package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_181:int = 1;
      
      public static const const_375:int = 2;
      
      public static const const_1818:int = 3;
       
      
      private var var_2253:int;
      
      private var _state:int;
      
      private var var_1492:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1687:int;
      
      private var _priority:int;
      
      private var var_2249:int = 0;
      
      private var var_2248:int;
      
      private var var_2247:String;
      
      private var var_1500:int;
      
      private var var_1929:String;
      
      private var var_2246:int;
      
      private var var_2254:String;
      
      private var _message:String;
      
      private var var_2251:int;
      
      private var var_1018:String;
      
      private var var_1750:int;
      
      private var var_2252:String;
      
      private var var_345:int;
      
      private var var_2255:String;
      
      private var var_2162:String;
      
      private var var_2245:int;
      
      private var var_2250:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2253 = param1;
         this._state = param2;
         this.var_1492 = param3;
         this._reportedCategoryId = param4;
         this.var_1687 = param5;
         this._priority = param6;
         this.var_2248 = param7;
         this.var_2247 = param8;
         this.var_1500 = param9;
         this.var_1929 = param10;
         this.var_2246 = param11;
         this.var_2254 = param12;
         this._message = param13;
         this.var_2251 = param14;
         this.var_1018 = param15;
         this.var_1750 = param16;
         this.var_2252 = param17;
         this.var_345 = param18;
         this.var_2255 = param19;
         this.var_2162 = param20;
         this.var_2245 = param21;
         this.var_2250 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2253;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1492;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1687;
      }
      
      public function get priority() : int
      {
         return this._priority + this.var_2249;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2248;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2247;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1500;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1929;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2246;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2254;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2251;
      }
      
      public function get roomName() : String
      {
         return this.var_1018;
      }
      
      public function get roomType() : int
      {
         return this.var_1750;
      }
      
      public function get flatType() : String
      {
         return this.var_2252;
      }
      
      public function get method_1() : int
      {
         return this.var_345;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2255;
      }
      
      public function get roomResources() : String
      {
         return this.var_2162;
      }
      
      public function get unitPort() : int
      {
         return this.var_2245;
      }
      
      public function get worldId() : int
      {
         return this.var_2250;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2249 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1687) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
