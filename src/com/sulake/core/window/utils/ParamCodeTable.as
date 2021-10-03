package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_195;
         param1["bound_to_parent_rect"] = const_103;
         param1["child_window"] = const_1091;
         param1["embedded_controller"] = const_1158;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_687;
         param1["mouse_dragging_target"] = const_282;
         param1["mouse_dragging_trigger"] = const_372;
         param1["mouse_scaling_target"] = const_336;
         param1["mouse_scaling_trigger"] = const_508;
         param1["horizontal_mouse_scaling_trigger"] = const_240;
         param1["vertical_mouse_scaling_trigger"] = const_261;
         param1["observe_parent_input_events"] = const_1104;
         param1["optimize_region_to_layout_size"] = const_537;
         param1["parent_window"] = const_1111;
         param1["relative_horizontal_scale_center"] = const_217;
         param1["relative_horizontal_scale_fixed"] = const_143;
         param1["relative_horizontal_scale_move"] = const_380;
         param1["relative_horizontal_scale_strech"] = const_406;
         param1["relative_scale_center"] = const_1217;
         param1["relative_scale_fixed"] = const_963;
         param1["relative_scale_move"] = const_1228;
         param1["relative_scale_strech"] = const_1184;
         param1["relative_vertical_scale_center"] = const_220;
         param1["relative_vertical_scale_fixed"] = const_167;
         param1["relative_vertical_scale_move"] = const_244;
         param1["relative_vertical_scale_strech"] = const_330;
         param1["on_resize_align_left"] = const_701;
         param1["on_resize_align_right"] = const_566;
         param1["on_resize_align_center"] = const_576;
         param1["on_resize_align_top"] = const_913;
         param1["on_resize_align_bottom"] = const_494;
         param1["on_resize_align_middle"] = const_540;
         param1["on_accommodate_align_left"] = const_1102;
         param1["on_accommodate_align_right"] = const_598;
         param1["on_accommodate_align_center"] = const_685;
         param1["on_accommodate_align_top"] = const_1133;
         param1["on_accommodate_align_bottom"] = const_489;
         param1["on_accommodate_align_middle"] = const_861;
         param1["route_input_events_to_parent"] = const_507;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1299;
         param1["scalable_with_mouse"] = const_1176;
         param1["reflect_horizontal_resize_to_parent"] = const_526;
         param1["reflect_vertical_resize_to_parent"] = const_631;
         param1["reflect_resize_to_parent"] = const_317;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1220;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
