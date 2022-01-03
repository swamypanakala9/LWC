@isTest 
public class PS_WarrentySummary1Test {
    @isTest static void WarrentySummaryDescription(){
        Case c = new Case();
        c.Status='New';
        c.Origin='Phone';
        c.Product_Purchase_Date__c=Date.today();
        c.Product_Total_Warrenty_Days__c=3;
        insert c;
    }
}