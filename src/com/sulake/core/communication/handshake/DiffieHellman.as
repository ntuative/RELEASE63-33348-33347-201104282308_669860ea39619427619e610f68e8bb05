package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1006:BigInteger;
      
      private var var_2400:BigInteger;
      
      private var var_1742:BigInteger;
      
      private var var_2399:BigInteger;
      
      private var var_1413:BigInteger;
      
      private var var_1741:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1413 = param1;
         this.var_1741 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1413.toString() + ",generator: " + this.var_1741.toString() + ",secret: " + param1);
         this.var_1006 = new BigInteger();
         this.var_1006.fromRadix(param1,param2);
         this.var_2400 = this.var_1741.modPow(this.var_1006,this.var_1413);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1742 = new BigInteger();
         this.var_1742.fromRadix(param1,param2);
         this.var_2399 = this.var_1742.modPow(this.var_1006,this.var_1413);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2400.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2399.toRadix(param1);
      }
   }
}
