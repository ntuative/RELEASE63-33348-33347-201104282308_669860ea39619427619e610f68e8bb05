package com.sulake.habbo.widget.poll
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   
   public class PollSession implements IDisposable
   {
       
      
      private var _id:int = -1;
      
      private var _disposed:Boolean = false;
      
      private var var_1553:int = 0;
      
      private var var_1552:Array;
      
      private var var_1230:PollWidget;
      
      private var var_259:IPollDialog;
      
      private var var_2025:String = "";
      
      public function PollSession(param1:int, param2:PollWidget)
      {
         super();
         this._id = param1;
         this.var_1230 = param2;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1553;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1553 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1552;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1552 = param1;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_259)
            {
               this.var_259.dispose();
               this.var_259 = null;
            }
            this.var_1230 = null;
            this._disposed = true;
         }
      }
      
      public function showOffer(param1:String) : void
      {
         this.hideOffer();
         this.var_259 = new PollOfferDialog(this._id,param1,this.var_1230);
      }
      
      public function hideOffer() : void
      {
         if(this.var_259 is PollOfferDialog)
         {
            if(!this.var_259.disposed)
            {
               this.var_259.dispose();
            }
            this.var_259 = null;
         }
      }
      
      public function showContent(param1:String, param2:String, param3:Array) : void
      {
         this.hideOffer();
         this.hideContent();
         this.var_2025 = param2;
         this.var_259 = new PollContentDialog(this._id,param1,param3,this.var_1230);
      }
      
      public function hideContent() : void
      {
         if(this.var_259 is PollContentDialog)
         {
            if(!this.var_259.disposed)
            {
               this.var_259.dispose();
            }
            this.var_259 = null;
         }
      }
      
      public function showThanks() : void
      {
         this.var_1230.windowManager.alert("${poll_thanks_title}",this.var_2025,0,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         });
      }
   }
}
