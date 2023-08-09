public with sharing class ChooseSample {
    //sample class for testing searchobject class
    
	@AuraEnabled(cacheable=true)
    public static List<AggregateResult> getContactList(string searchKey) {
        string searchKeyword = '%' + searchKey + '%';
		
       // create contact list to store search result 
        List<AggregateResult> sortedNames = new list<AggregateResult>();
     
	   // query contact records
        for(AggregateResult Obj : [SELECT SObjectType FROM ObjectPermissions GROUP BY SObjectType ORDER BY SObjectType ASC]){
           sortedNames.add(Obj);
        }
        
         if(sortedNames.size() == 0){
            throw new AuraHandledException('No Record Found..'); 
         }
         
        return sortedNames;
    }
}