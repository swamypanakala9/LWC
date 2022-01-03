trigger PS_AppleWatch on Opportunity (after insert) {
    for(Opportunity opp : Trigger.New){
        Task t        = new Task();
        t.Subject     = 'Apple Watch2 Promo';
        t.Description = 'Send ASAP!!!';
        t.Priority    = 'High';
        t.WhatId      = opp.Id;
         insert t;     
    }
    
}