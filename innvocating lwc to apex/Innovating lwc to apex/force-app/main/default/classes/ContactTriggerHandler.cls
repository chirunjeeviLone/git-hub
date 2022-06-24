public with sharing class ContactTriggerHandler {
    
    public static Boolean isFirstTime = true;
    public static void contactHandler(list<Contact> con){
     
    if(isFirstTime)
      { 
            
        isFirstTime = false;
        List<Contact> conList= new List<Contact>();
    
        for(Integer i=0; i<10; i++)
            {
              Contact cont= new Contact();
              cont.FirstName='sai';
              cont.LastName='lone'+i;
              cont.Email='taja@gmail.com';
              conList.add(cont);
              //conObj.AccountId=acctID;
            //   if(conObj.LastName!=null){

                // conList.add(conObj);
            //   }
            System.debug('>>>>conList>'+conList);
            
            }
        
         if(!conList.isEmpty()){
            INSERT conList; 
         }
                
 }        
}      
}  
    

