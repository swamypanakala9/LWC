trigger Update_Name on Main_Object__c (before update) {

    for(Main_Object__c m : trigger.new){
        m.Main_Object_Number__c = 33;
       Task t = new Task();
        t.WhatId = m.Id;
        t.Subject = 'Main Object Related Task';
        t.Priority = 'Low';
        insert t;
    }
}