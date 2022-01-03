trigger TriggerWhenRatingLessthan5 on Tollywood__c (before insert,before update) {

 /*   for(Tollywood__c t:Trigger.new){
        if(t.rating__c< 5)
            t.addError('rating lessthan 5'); 
            
            for(Tollywood__c t:Trigger.new){
            if(Trigger.isInsert && t.rating__c< 5)
            t.addError('you cannot create new record with <5 rating');
            else
            t.addError('you cannot save existing record with <5 rating');
            
    }*/
}