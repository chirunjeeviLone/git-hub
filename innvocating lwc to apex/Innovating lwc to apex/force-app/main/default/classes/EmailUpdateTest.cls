@isTest
public with sharing class EmailUpdateTest {

    
    @IsTest
    public static  void firstTest()
    {
        Contact cm= new Contact();
        cm.lastName = 'test';
        cm.Email='chiru@gmsil.com';
        cm.StudentEmail__c='raja@gmail.com';
        Email__c  ev =new Email__c();
        
    // ev.ContactId__c=cm.Id;
       // tempAccount = m.get(c.ContactId__c);
        
        
      // add test data for all required fields here
      
        insert cm; 
        test.startTest();
        cm.Email='chiru@gmail.com';
        cm.StudentEmail__c='rani@gmail.com';
        update cm;
        insert ev;
        test.stopTest();

    
        
     }
    }
     

    //  public static  void secondTest()
    //  {}
    //      Contact cm= new Contact();
    //      cm.lastName = 'test';
    //      cm.Email='chiru@gmsil.com';
         
    //      Email__c  ev =new Email__c();
    //      insert cm; 
    //     test.startTest();
    //     cm.Email='chiru@gmail.com';
    //     update cm;
    //     insert ev;
    //     test.stopTest();


    // }
     



   


