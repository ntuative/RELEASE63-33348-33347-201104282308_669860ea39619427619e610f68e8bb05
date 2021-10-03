package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1978:String = "";
      
      private var var_2076:String = "";
      
      private var var_2222:String = "";
      
      private var var_2223:Number = 0;
      
      private var var_2220:Number = 0;
      
      private var var_2152:Number = 0;
      
      private var var_2151:Number = 0;
      
      private var var_2221:Boolean = false;
      
      private var var_2226:Boolean = false;
      
      private var var_2225:Boolean = false;
      
      private var var_2224:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1978 = param2;
         this.var_2076 = param3;
         this.var_2222 = param4;
         this.var_2223 = param5;
         this.var_2220 = param6;
         this.var_2152 = param7;
         this.var_2151 = param8;
         this.var_2221 = param9;
         this.var_2226 = param10;
         this.var_2225 = param11;
         this.var_2224 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1978;
      }
      
      public function get canvasId() : String
      {
         return this.var_2076;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2222;
      }
      
      public function get screenX() : Number
      {
         return this.var_2223;
      }
      
      public function get screenY() : Number
      {
         return this.var_2220;
      }
      
      public function get localX() : Number
      {
         return this.var_2152;
      }
      
      public function get localY() : Number
      {
         return this.var_2151;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2221;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2226;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2225;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2224;
      }
   }
}
