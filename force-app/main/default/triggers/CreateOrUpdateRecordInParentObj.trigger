trigger CreateOrUpdateRecordInParentObj on Child_Object__c (after insert,after update) {
 // Without Following Governor Limits
    /*   List<Parent_Object__c> p = new List<Parent_Object__c>();
    for(Child_Object__c c : trigger.new){
       p = [Select id,Parent_Object_Number__c from Parent_Object__c
                                    where Parent_Object_Number__c =: c.Child_Object_Number__c limit 1];
        if(p.isEmpty()){
            Parent_Object__c p1 = new Parent_Object__c();
            p1.Name = c.Name;
            insert p1;
}   
        else{
          p.get(0).name = c.Name ;
            update p;}
}
   */
// With Governor Limits
List<Parent_Object__c> PList = [SELECT id,Parent_Object_Number__c from Parent_Object__c];
     system.debug('PList Total list '+PList);
List<Decimal> PNumberList = new List<Decimal>(); 
    List<Child_Object__c> CList = trigger.new ;
    for(Child_Object__c c: trigger.new){
        PNumberList.add(c.Child_Object_Number__c);  
        system.debug('PNumberList existing list '+PNumberList);
    }
  PList = [SELECT id,Parent_Object_Number__c from Parent_Object__c where Parent_Object_Number__c IN : PNumberList];
    system.debug('PList existing list '+PList);
    for(Parent_Object__c p : PList){        
    }
}