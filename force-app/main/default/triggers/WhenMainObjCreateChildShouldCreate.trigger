trigger WhenMainObjCreateChildShouldCreate on Main_Object__c (after insert,after update) {
    if(trigger.isInsert && trigger.isAfter){
        ApexHandlerForMainObjectTrigger.CreateRecordWhenInsert(trigger.new);}
    if(trigger.isUpdate && trigger.isAfter){
       ApexHandlerForMainObjectTrigger.CreateRecordWhenUpdate(trigger.oldMap,trigger.newMap);
        system.debug('trigger.oldMap'+trigger.oldMap);
        system.debug('trigger.newMap'+trigger.newMap);
       
    }
}