public with sharing class SearchRecordApex {
    @AuraEnabled(cacheable=true)
    public static list<Listing__c> getContactList(string searchKey) {
        string searchKeyword = '%' + searchKey + '%';
        list<Listing__c> listOfRecords = new list<Listing__c>();

        for(Listing__c listObj : [Select id,Name,Country__c,Status__c
        From Listing__c
        WHERE name LIKE : searchKeyword]){
        listOfRecords.add(listObj);
}
return listOfRecords;

    }
}
