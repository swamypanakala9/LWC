trigger BatchOperations on RecordTest__c (before insert,after insert) {
    for(RecordTest__c r : trigger.new){
        if(trigger.isinsert){
            if(trigger.isbefore){
                r.Rating__c = 55;
        system.debug('log on  trigger.new (before insert) ');  
            }
        }
      if(trigger.isinsert){
        if(trigger.isafter){
            system.debug('this event due to after insert ');
        }
        
    }
    }
  
     

}