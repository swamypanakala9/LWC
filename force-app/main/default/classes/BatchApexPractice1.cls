public class BatchApexPractice1 implements Database.Batchable <SObject> {
  
    public Database.QueryLocator start(Database.BatchableContext c){
        return Database.getQueryLocator('Select Parent_Object_Number__c from Parent_Object__c');
    }
    public void execute(Database.BatchableContext c, List<Parent_Object__c> PList){
        for(Parent_Object__c p :PList ){
            p.Parent_Object_Number__c = 888;
        }       
        update PList;
    }
    public void finish(Database.BatchableContext c){
        
    }
}