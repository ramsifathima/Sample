public with sharing class SearchObject {
    @AuraEnabled
    Public Static List<AggregateResult> getObjList(string searchKey){
        string searchKeyword = '%' + searchKey + '%';
        List<AggregateResult> sortedNames = [SELECT SObjectType FROM ObjectPermissions GROUP BY SObjectType ORDER BY SObjectType ASC ];
        return sortedNames;
    }
}