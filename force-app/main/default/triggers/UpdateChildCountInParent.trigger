trigger UpdateChildCountInParent on Child_Object__c (after insert,after update,after delete,after undelete) {
    List<id> ParentIdList = new List<id>();
   
    if(trigger.isInsert || trigger.isundelete){
        for(Child_Object__c c : trigger.new){
            if(c.Main_Object_ID__c != null){
             ParentIdList.add(c.Main_Object_ID__c) ;
            }}
    }
    if(trigger.isUpdate){
        for(Child_Object__c c: trigger.new){
           ParentIdList.add(c.Main_Object_ID__c) ; 
        }
    }
    if(trigger.isDelete){
        for(Child_Object__c c: trigger.old){
           ParentIdList.add(c.Main_Object_ID__c) ; 
        }
    }
    List<Main_Object__c> t = new List<Main_Object__c>();
    List<Main_Object__c> tobeUpdatedParentRec = [SELECT Id,NumberofChilds__c,(select id,Number__c from Child_Object__r )
                                         from Main_Object__c WHERE Id IN : ParentIdList];
    
    for(Main_Object__c p : tobeUpdatedParentRec){    
        Decimal Count=0;
        for(Child_Object__c c : p.Child_Object__r ){
            if(c.Number__c !=null ){
                if(c.Number__c ==10){break;} //It will break total loop from this point
              // if(count == 0 && c.Number__c != 0){Count =  c.Number__c;}
              //  if(c.Number__c < Count ){
               Count = Count + c.Number__c;
             
               }
               
            }
        p.NumberofChilds__c = Count;
        t.add(p);
    }
    update t;
}