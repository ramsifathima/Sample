@isTest
public class RectangleTest {
    
    static testMethod void rectUnitTest(){
        Rectangle rect1 = new Rectangle();
        system.assertEquals(0, rect1.length);
        system.assertEquals(0, rect1.breadth);
        
        system.assertEquals(0, rect1.area());
        system.assertEquals(200, rect1.area(10,20));
        system.assertEquals(0, rect1.perimeter());
        
        Rectangle rect2 = new Rectangle(10,10);
        system.assertEquals(10, rect2.length);
        system.assertEquals(10, rect2.breadth);
        
        system.assertEquals(100, rect2.area());
        system.assertEquals(40, rect2.perimeter());
        rect2.showResult();
    }
    @isTest
    static void rectUnitTest2(){
        //Logic
    }
}