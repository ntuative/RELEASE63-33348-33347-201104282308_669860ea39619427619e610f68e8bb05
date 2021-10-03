package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1926:String;
      
      private var var_2662:int;
      
      private var var_2661:int;
      
      private var var_1916:int;
      
      private var _id:int;
      
      private var var_1925:Boolean;
      
      private var _type:String;
      
      private var var_1928:String;
      
      private var _rewardCurrencyAmount:int;
      
      private var var_1927:String;
      
      private var var_2664:int;
      
      private var var_2663:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1926 = param1.readString();
         this.var_2662 = param1.readInteger();
         this.var_2661 = param1.readInteger();
         this.var_1916 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1925 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1928 = param1.readString();
         this._rewardCurrencyAmount = param1.readInteger();
         this.var_1927 = param1.readString();
         this.var_2664 = param1.readInteger();
         this.var_2663 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1928 = "";
         this._rewardCurrencyAmount = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1926;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1927;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2662;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2661;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1916;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1925;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1928;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this._rewardCurrencyAmount;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2664;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2663;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1926;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1927;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1925 = param1;
      }
   }
}
