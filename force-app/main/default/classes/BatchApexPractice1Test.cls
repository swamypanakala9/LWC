@isTest
public class BatchApexPractice1Test {
   @isTest
    public Static void BatchMethod(){
        Parent_Object__c p = new Parent_Object__c();
        p.Parent_Object_Number__c = 55;
        insert p;
        p.Parent_Object_Number__c =44;
        update p;
 //   test.startTest();
    BatchApexPractice1 pp = new BatchApexPractice1();
            database.executeBatch(pp);
  //  test.stopTest();
    }
  }