@isTest
public class CalculationTest {
     static testMethod void calcUnitTest(){
         Calculation calc1 = new Calculation();
         system.assertEquals(0, calc1.num1);
         system.assertEquals(0, calc1.num2);
         system.assertEquals(0, calc1.addition());
         system.assertEquals(0, calc1.subtraction());
         system.assertEquals(0, calc1.multiplication());
         system.assertEquals(0, calc1.division());
        
         Calculation calc2 = new Calculation(12,4);
         system.assertEquals(12, calc2.num1);
         system.assertEquals(4, calc2.num2);
        
         system.assertEquals(16, calc2.addition());
         system.assertEquals(8, calc2.subtraction());
         system.assertEquals(48, calc2.multiplication());
         system.assertEquals(3, calc2.division());
         calc2.showResult();
     }
     @isTest
     static void calcUnitTest2(){
         //Logic
     }
}