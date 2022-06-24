trigger ContactEmailUpdate on Contact (after insert,after update) {
    if(Trigger.isAfter && Trigger.isUpdate) {
        // Create a list for Account Ids
        List<Id> accIds = new List<Id>();
        // Loop through the Contacts from the trigger
        for(Contact c : Trigger.new) {
        
            accIds.add(c.email);
        }
        Map<Id,Email__c> accMap = new Map<Id,Email__c>([SELECT Id, email__c FROM Email__c WHERE Id IN :accIds]);


    }
}