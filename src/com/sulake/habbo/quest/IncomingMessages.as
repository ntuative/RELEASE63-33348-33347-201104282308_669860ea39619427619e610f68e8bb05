package com.sulake.habbo.quest
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestCancelledMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestCompletedMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.engine.RoomEntryInfoMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.session.CloseConnectionMessageEvent;
   import com.sulake.habbo.communication.messages.parser.quest.QuestCompletedMessageParser;
   import com.sulake.habbo.communication.messages.parser.quest.QuestMessageParser;
   import com.sulake.habbo.communication.messages.parser.quest.QuestsMessageParser;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   
   public class IncomingMessages implements IDisposable
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1910:IAlertDialog;
      
      private var var_1082:Boolean = false;
      
      public function IncomingMessages(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this._communication = this._questEngine.communication;
         this._communication.addHabboConnectionMessageEvent(new QuestCompletedMessageEvent(this.onQuestCompleted));
         this._communication.addHabboConnectionMessageEvent(new QuestCancelledMessageEvent(this.onQuestCancelled));
         this._communication.addHabboConnectionMessageEvent(new CloseConnectionMessageEvent(this.onRoomExit));
         this._communication.addHabboConnectionMessageEvent(new RoomEntryInfoMessageEvent(this.onRoomEnter));
         this._communication.addHabboConnectionMessageEvent(new QuestsMessageEvent(this.onQuests));
         this._communication.addHabboConnectionMessageEvent(new QuestMessageEvent(this.onQuest));
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1082;
      }
      
      private function onQuestCompleted(param1:IMessageEvent) : void
      {
         var _loc2_:QuestCompletedMessageParser = (param1 as QuestCompletedMessageEvent).getParser();
         Logger.log("Quest Completed: " + _loc2_.questData.campaignCode + " quest: " + _loc2_.questData.id);
         this._questEngine.controller.onQuestCompleted(_loc2_.questData);
      }
      
      private function onQuestCancelled(param1:IMessageEvent) : void
      {
         Logger.log("Quest Cancelled: ");
         this._questEngine.controller.onQuestCancelled();
      }
      
      private function onQuests(param1:IMessageEvent) : void
      {
         var _loc2_:QuestsMessageParser = (param1 as QuestsMessageEvent).getParser();
         Logger.log("Got Quests: " + _loc2_.quests + ", " + _loc2_.openWindow);
         this._questEngine.controller.onQuests(_loc2_.quests,_loc2_.openWindow);
      }
      
      private function onQuest(param1:IMessageEvent) : void
      {
         var _loc2_:QuestMessageParser = (param1 as QuestMessageEvent).getParser();
         Logger.log("Got Quest: " + _loc2_.quest);
         this._questEngine.controller.onQuest(_loc2_.quest);
      }
      
      public function dispose() : void
      {
         if(this.var_1910)
         {
            this.var_1910.dispose();
            this.var_1910 = null;
         }
         this.var_1082 = true;
      }
      
      private function onCloseAlert(param1:IAlertDialog, param2:WindowEvent) : void
      {
         param1.dispose();
      }
      
      private function getCampaignCode() : String
      {
         var _loc1_:String = this._questEngine.configuration.getKey("questing.defaultCampaign","");
         var _loc2_:String = this._questEngine.configuration.getKey("questing.defaultCampaign.override","");
         var _loc3_:String = this._questEngine.configuration.getKey("questing.excludedCampaignCode","");
         var _loc4_:String = _loc1_ && _loc1_ != "" ? _loc1_ : "";
         return _loc2_ && _loc2_ != "" && _loc2_ != _loc3_ ? _loc2_ : _loc4_;
      }
      
      private function onRoomEnter(param1:IMessageEvent) : void
      {
         this._questEngine.controller.onRoomEnter();
         this._questEngine.toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_131,HabboToolbarIconEnum.QUESTS));
      }
      
      private function onRoomExit(param1:IMessageEvent) : void
      {
         this._questEngine.controller.onRoomExit();
         this._questEngine.toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_182,HabboToolbarIconEnum.QUESTS));
      }
   }
}
