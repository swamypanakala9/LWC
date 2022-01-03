@isTest
public class BatchApex_Test {
  
    private static testMethod void TestMeth111(){
       RecordTest__c r = new RecordTest__c();
        r.Name = 'r1';
        insert r;
        
       system.Test.startTest();
         String q ='SELECT Rating__c from RecordTest__c';
                            String f = 'Rating__c';
                            Integer v = 555;
         ID jobID = Database.executeBatch(new BatchApex(q,f,v));
       system.Test.stopTest();
    }

}