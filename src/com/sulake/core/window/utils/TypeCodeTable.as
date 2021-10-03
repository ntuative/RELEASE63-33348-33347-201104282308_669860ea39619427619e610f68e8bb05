package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_705;
         param1["bitmap"] = const_884;
         param1["border"] = const_831;
         param1["border_notify"] = const_1736;
         param1["button"] = const_514;
         param1["button_thick"] = const_757;
         param1["button_icon"] = const_1699;
         param1["button_group_left"] = const_781;
         param1["button_group_center"] = const_890;
         param1["button_group_right"] = const_962;
         param1["canvas"] = const_787;
         param1["checkbox"] = const_854;
         param1["closebutton"] = const_1258;
         param1["container"] = const_407;
         param1["container_button"] = const_715;
         param1["display_object_wrapper"] = const_746;
         param1["dropmenu"] = const_521;
         param1["dropmenu_item"] = const_563;
         param1["frame"] = const_425;
         param1["frame_notify"] = const_1730;
         param1["header"] = const_840;
         param1["html"] = const_1213;
         param1["icon"] = const_1192;
         param1["itemgrid"] = const_1269;
         param1["itemgrid_horizontal"] = const_588;
         param1["itemgrid_vertical"] = const_731;
         param1["itemlist"] = const_1165;
         param1["itemlist_horizontal"] = const_441;
         param1["itemlist_vertical"] = const_379;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1782;
         param1["menu"] = const_1779;
         param1["menu_item"] = const_1691;
         param1["submenu"] = const_1180;
         param1["minimizebox"] = const_1701;
         param1["notify"] = const_1563;
         param1["null"] = const_817;
         param1["password"] = const_953;
         param1["radiobutton"] = const_808;
         param1["region"] = const_497;
         param1["restorebox"] = const_1662;
         param1["scaler"] = const_623;
         param1["scaler_horizontal"] = const_1629;
         param1["scaler_vertical"] = const_1554;
         param1["scrollbar_horizontal"] = const_637;
         param1["scrollbar_vertical"] = const_805;
         param1["scrollbar_slider_button_up"] = const_1285;
         param1["scrollbar_slider_button_down"] = const_1136;
         param1["scrollbar_slider_button_left"] = const_1160;
         param1["scrollbar_slider_button_right"] = const_1254;
         param1["scrollbar_slider_bar_horizontal"] = const_1089;
         param1["scrollbar_slider_bar_vertical"] = const_1237;
         param1["scrollbar_slider_track_horizontal"] = const_1135;
         param1["scrollbar_slider_track_vertical"] = const_1265;
         param1["scrollable_itemlist"] = const_1589;
         param1["scrollable_itemlist_vertical"] = const_485;
         param1["scrollable_itemlist_horizontal"] = const_1245;
         param1["selector"] = const_735;
         param1["selector_list"] = const_756;
         param1["submenu"] = const_1180;
         param1["tab_button"] = const_839;
         param1["tab_container_button"] = const_1249;
         param1["tab_context"] = const_395;
         param1["tab_content"] = const_1125;
         param1["tab_selector"] = const_725;
         param1["text"] = const_590;
         param1["input"] = const_898;
         param1["toolbar"] = const_1591;
         param1["tooltip"] = const_402;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
