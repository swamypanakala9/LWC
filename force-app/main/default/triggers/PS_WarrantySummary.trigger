trigger PS_WarrantySummary on Case (before insert,before update) {
    for(Case c : Trigger.new){
        c.Product_Purchase_Date__c=date.today().addDays(5);
        c.Warranty_Summary__c='Product Purchased on '+ c.Product_Purchase_Date__c + 'Case Created On '
                                + c.CreatedDate + 'Warrenty For 5 days ';
    }
   
}