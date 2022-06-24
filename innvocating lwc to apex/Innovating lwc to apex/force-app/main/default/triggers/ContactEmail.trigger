trigger ContactEmail on Contact (after insert) {
    Map<id, Contact> cont = new Map<id, Contact>();
    system.debug('---'+Trigger.new);
    if((Trigger.isInsert ) && Trigger.isAfter)
    {
      
    	for(Contact con : Trigger.new)
        {
            if(con.Email != null  )
            {
                system.debug('--con--'+con);
                //AccID.add(con.AccountId);
                cont.put(con.Email, con);
            }
        }
        List<Email__c> accList = new List<Email__c>();
        for(Email__c a : [SELECT email__c FROM Email__c WHERE id in :cont.keySet()]){
            //String address = ''+ conlist[0].get('Email');
            system.debug('--a--'+a);
            a.Email__c = cont.get(a.Id).Email;
            accList.add(a);
        }
        update accList;

    }
}
        //     Contact conta =new Contact();
        //     conta =cont.get(con.Id);
        //     if(con.Email__c != conta.Email__c)

        //     {
    
        //         con.Email__c.addError(‘Amount cannot be changed’); 
    
        //     }

        



        //     // if(con.Email!= null && con.AccountId != null)
        //     // {
                
        //         //AccID.add(con.AccountId);
        //         // cont.put(con.AccountId, con);
        //     // }
        // }
        // system.debug('--cont--'+cont);
        // //List<Contact> conlist = [ select Email__c from Contact where accountId in :AccID];
        // // List<Email__c> accList = new List<Email__c>();
        // {
        //     //String address = ''+ conlist[0].get('Email');
        //     // system.debug('--a--'+a);
        //     // a.Email__c = cont.get(a.Id).Email;
            // accList.add(a);
        // }
        // update accList;
    


