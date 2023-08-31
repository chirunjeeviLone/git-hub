trigger EmailUpdate on Contact (after Update ) {


   // Map<Id, Email__c> m = new Map<Id, Email__c>();
    list<Email__c> em= new list<Email__c>();
    for(Contact c : Trigger.new){
        if (Trigger.oldMap.get(c.Id).Email != c.Email) {
            Email__c  ev =new Email__c();
             ev.email__c=c.Email;
             ev.EmailType__c='Email';
            ev.ContactId__c=c.Id;
            // tempAccount = m.get(c.ContactId__c);
            em.add(ev); 

            
        }
        if (Trigger.oldMap.get(c.Id).StudentEmail__c != c.StudentEmail__c) {
            Email__c  sv =new Email__c();
             sv.EmailType__c='StudentEmail';
             sv.email__c=c.StudentEmail__c;
            
            sv.ContactId__c=c.Id;

            em.add(sv); 
        }
        
        
    }
    insert em;
    

}














        // Set<Id> accId = new Set<Id>();
        // if(Trigger.isInsert || Trigger.isUpdate){
        //     for(Contact con : Trigger.new){
        //         accId.add(con.Email);
        //     }
        // }
        
        
        // List<Email__c> accList = [SELECT Id,email__c,(Select id From Contact) FROM Email__c where Id IN : accId];
        // for(Email__c acc :accList){
        //     acc.Email__c = acc.Contact;
        // }
        // update accList;
    
