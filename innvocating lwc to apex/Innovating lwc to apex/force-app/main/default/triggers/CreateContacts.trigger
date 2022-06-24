trigger CreateContacts on Contact (before insert) {
    Set <Id> Ids = new Set<Id>();
    List<Contact> conTemp = Trigger.new;
    System.debug('number ' + conTemp.size());
    System.debug(conTemp[0].AccountId);

    list<Email__c> conList = new list<Email__c>([Select id,name From Email__c Where Email__c = :conTemp[0].AccountId] );
    list<Email__c> conList1= new list<Email__c>();
    System.debug('David' + conList.size());
    System.debug('lineitem1: ' + conList[0] );
    System.debug('lineitem2: ' + conList[1] );
    System.debug('lineitem3: ' + conList[2] );

    integer index = 0;

    for(Email__c temp : conList){

        Email__c productQ2 = new Email__c();
        productQ2.Name = temp.Name;

        productQ2.email__c= conTemp[0].Id;
        conList1.add(productQ2); 
    
    }
    insert conlist1;

}


