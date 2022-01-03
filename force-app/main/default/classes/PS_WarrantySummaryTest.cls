@isTest
public class PS_WarrantySummaryTest {
 
    @isTest static void tMethod(){
        case c=new case();
      // For Test class which are variables we are using in Apex trigger those variable values
      // should be inserted(required field values also not required to insert)
        
             c.Product_Purchase_Date__c  = Date.today();
        c.Product_Total_Warrenty_Days__c = 10;
      c.Product_Has_Extended_Warrenty__c = true;
        //  c.Status='new';
       // c.Origin='Phone';
        insert c;
    } 
    
    
}