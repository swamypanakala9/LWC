trigger SCENARIO2 on Tollywood__c (before insert,before update) { // Today record count is more than assigned value should throgh error.
integer count=0;
   list<Tollywood__c> a=[select id,name from Tollywood__c where createddate=today or lastmodifieddate=today];
     //    list<Tollywood__c> a=[select id,name from Tollywood__c]; // it will give total record data
    for(Tollywood__c b:trigger.new)
    {
        count=a.size();
        if(count>1)
        {
            b.adderror('reached limit ' +count+'count today');
        }
        
    }
}