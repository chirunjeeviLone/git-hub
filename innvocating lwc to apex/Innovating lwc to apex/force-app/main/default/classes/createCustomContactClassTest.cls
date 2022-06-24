@isTest
public with sharing class createCustomContactClassTest {
    
     @testSetup static void setup(){
         Contact con=new Contact(FirstName='chiru',LastName='lone',Email='chiru@gmail.com');
        insert con;
        
  
      }
//   this method run the test on Apex Test class for Contact Form @method getDetails()
    @isTest
   public static void  getContactRecordMethod()
   {
    Contact conList=new Contact(FirstName='shiva',LastName='lone',Email='shiva@gmail.com');
    // insert conList;
            Test.startTest();
            createCustomContactClassTest.getContactRecordMethod(conList);
            Test.stopTest();
   }
}
	
										
																																			


    
 

