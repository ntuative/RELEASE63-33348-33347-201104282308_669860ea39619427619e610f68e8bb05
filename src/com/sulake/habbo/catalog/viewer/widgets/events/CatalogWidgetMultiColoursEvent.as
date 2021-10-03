package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_971:Array;
      
      private var var_2622:String;
      
      private var var_2623:String;
      
      private var var_2624:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_971 = param1;
         this.var_2622 = param2;
         this.var_2623 = param3;
         this.var_2624 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_971;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2622;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2623;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2624;
      }
   }
}
