public with sharing class ContactController {
    @AuraEnabled(Cacheable = true)
    //this method is to be used in the ApexImperativeMethod LWC only
    public static List<Contact> getContactList(){
        return [select Id, Name, FirstName, LastName, Title, Phone, Email FROM Contact LIMIT 10];
    }
}