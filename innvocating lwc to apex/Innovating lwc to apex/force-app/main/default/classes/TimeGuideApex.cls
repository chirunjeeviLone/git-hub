/* *@author        lone chiranjeevi        <chiranjeevilone@mindful-koala-eo9gsd.com>

* @modifiedBy        lone chiranjeevi     <chiranjeevilone@mindful-koala-eo9gsd.com>
* @maintainedBy      lone chiranjeevi     <chiranjeevilone@mindful-koala-eo9gsd.com>
* @version        52.0
* @created        2021-12-13
* @modified      
* @systemLayer     Apex Class
*/ 


public with sharing class TimeGuideApex {
    
    @AuraEnabled
    public static void saveCaseDetails(Case CaseDetails)
    {
        List<Case> getCase = new List<Case>();
        getCase.add(CaseDetails);
        Insert getCase;        
    }
    @AuraEnabled
    public static void sendMails(String NAME, string EMAIL,string PHONE, string SUBJECT, string DESCRIPTION)
    {
       System.debug('Name : '+NAME);
       String body = 'the name of the person--'+ NAME +'.And his Mail is--'+ EMAIL+'   And his phone number is ='+PHONE+' and he added the subject-- '+SUBJECT+' And description is--' +DESCRIPTION;
       System.debug('tesing the body :' + body);
       Messaging.SingleEmailMessage em =new Messaging.SingleEmailMessage();
       List<User>  adminUserEmail = [SELECT Email FROM user WHERE Profile.Name='System Administrator'];
       List<Messaging.SingleEmailMessage> allEmail = new List<Messaging.SingleEmailMessage>();
      
      for( User userMail : adminUserEmail)
      {
        em.toAddresses = new String[] {userMail.email};
      }
  
       
       em.setSubject('Case Details');
      em.setPlainTextBody(body);
      allEmail.add(em);
        Messaging.sendEmail(allEmail);
     }
   
}



