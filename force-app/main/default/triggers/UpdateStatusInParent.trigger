trigger UpdateStatusInParent on Custom_Project__c (After update) {
    List<Tollywood__c> t =[Select id,Custom_Project_Status__c from Tollywood__c];
    List<Tollywood__c> NewList =new List<Tollywood__c>();  
    for(Custom_Project__c c : trigger.new){
          //      system.debug('Tollywood record '+t);
         Tollywood__c tt = new Tollywood__c();
       if(c.Status__c=='Active')
        tt.Custom_Project_Status__c=true;
        else if(c.Status__c=='InActive')
            tt.Custom_Project_Status__c=false;
        NewList.add(tt);
    }

}