trigger ContactTrigger on Contact (before insert ,before update) 
{

    if(Trigger.isInsert && Trigger.isBefore)
    {
       ContactTriggerHandler.contactHandler(Trigger.new);
    }
    if(Trigger.isUpdate && Trigger.isBefore)
    {
         ContactTriggerHandler.contactHandler(Trigger.new);

    }

}
