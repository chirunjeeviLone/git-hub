@isTest
public with sharing class ContactTriggerHandlerTest {
    @isTest 
    public static void HandleTest()
 {
    Contact  contact=new Contact();
    contact.FirstName='sai';
    contact.LastName='Lone';
    insert contact;
 list<Contact> con=[SELECT id,name FROM Contact ];
System.assertEquals(10, con.size());
 }
}
