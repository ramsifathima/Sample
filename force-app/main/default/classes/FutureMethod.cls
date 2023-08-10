public class FutureMethod{
    public FutureMethod(){
        system.debug('Futuremethod constructor');
        method1();
        method2();
        method3();
        method4();
    }public void method1(){
        system.debug('method1');
    }public void method2(){
        system.debug('method2');
    }
    @future
    public static void method3(){
        system.debug('method3');
    }public static void method4(){
        system.debug('method4');
    }
}