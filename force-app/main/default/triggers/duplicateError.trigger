trigger duplicateError on Tollywood__c (before insert,before update,before delete) {
    List<Tollywood__c> TList =[Select Name from Tollywood__c];
    for(Tollywood__c t : trigger.new){
      /*
   ***** Code for 1) Duplicate records error and 2) null hero name relace with Default Hero 3) if Hero name exist it will add Mr. in Prifix
             for(Tollywood__c t : trigger.old){          
             for(Tollywood__c z : TList){  
            if(t.Name==z.Name){
                t.addError('Duplicate Record Found');   
            } }
        if(t.Hero_Name__c==null){
            t.Hero_Name__c='Defalt Hero';}
        else{
            t.Hero_Name__c='Mr. '+t.Hero_Name__c;}
    */
    /*
     * ******Code for throgh erro when deleting record
     for(Tollywood__c t : trigger.old){   
        if(trigger.isDelete)
        t.addError('You cannot delete records');
        }
     */  
    }}