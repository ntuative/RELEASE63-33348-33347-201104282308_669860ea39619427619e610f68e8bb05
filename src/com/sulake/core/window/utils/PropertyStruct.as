package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_155:String = "hex";
      
      public static const const_42:String = "int";
      
      public static const const_280:String = "uint";
      
      public static const const_123:String = "Number";
      
      public static const const_39:String = "Boolean";
      
      public static const const_52:String = "String";
      
      public static const const_276:String = "Point";
      
      public static const const_278:String = "Rectangle";
      
      public static const const_154:String = "Array";
      
      public static const const_275:String = "Map";
       
      
      private var var_613:String;
      
      private var var_180:Object;
      
      private var _type:String;
      
      private var var_2411:Boolean;
      
      private var var_2936:Boolean;
      
      private var var_2412:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_613 = param1;
         this.var_180 = param2;
         this._type = param3;
         this.var_2411 = param4;
         this.var_2936 = param3 == const_275 || param3 == const_154 || param3 == const_276 || param3 == const_278;
         this.var_2412 = param5;
      }
      
      public function get key() : String
      {
         return this.var_613;
      }
      
      public function get value() : Object
      {
         return this.var_180;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2411;
      }
      
      public function get range() : Array
      {
         return this.var_2412;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_155:
               return "0x" + uint(this.var_180).toString(16);
            case const_39:
               return Boolean(this.var_180) == true ? "RC4_R27" : "false";
            case const_276:
               return "Point(" + Point(this.var_180).x + ", " + Point(this.var_180).y + ")";
            case const_278:
               return "Rectangle(" + Rectangle(this.var_180).x + ", " + Rectangle(this.var_180).y + ", " + Rectangle(this.var_180).width + ", " + Rectangle(this.var_180).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_275:
               _loc3_ = this.var_180 as Map;
               _loc1_ = "<var key=\"" + this.var_613 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_154:
               _loc4_ = this.var_180 as Array;
               _loc1_ = "<var key=\"" + this.var_613 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_276:
               _loc5_ = this.var_180 as Point;
               _loc1_ = "<var key=\"" + this.var_613 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_278:
               _loc6_ = this.var_180 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_613 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_155:
               _loc1_ = "<var key=\"" + this.var_613 + "\" value=\"" + "0x" + uint(this.var_180).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_613 + "\" value=\"" + this.var_180 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
