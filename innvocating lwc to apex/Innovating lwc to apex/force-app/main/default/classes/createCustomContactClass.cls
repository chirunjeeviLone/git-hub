/*
* @author        lone chiranjeevi       <chiranjeevilone@gmail.com>  
* @modifiedBy     lone chiranjeevi        <chiranjeevilone@gmail.com>
* @maintainedBy   lone chiranjeevi      <chiranjeevilone@gmail.com>
* @version        52.0
* @created        2021-12-02
* @modified      
 @systemLayer    Apex Class
*/



public with sharing class createCustomContactClass {
    // public createCustomContactClass() {

    // }
    /*
    @ description apexclass retraving the contacts from the lwc  which are related to accounts 
   @ param String accId
   */  
    @AuraEnabled()

    public static void getContactRecordMethod(Contact accId) 
    {
         insert accId;

    }

}