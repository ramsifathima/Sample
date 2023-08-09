public class MyControllerExtension {
	private final Account acct;
    
    public MyControllerExtension(ApexPages.StandardController stdController){
        this.acct = (Account)stdController.getRecord();
    }
    
    public String getGreeting(){
        return 'Hello' + acct.name +'('+acct.id +')';
    }
}