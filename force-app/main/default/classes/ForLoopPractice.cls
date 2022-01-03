//public class ForLoopPractice {
    global class ForLoopPractice implements Database.Batchable<Sobject> {
/*  //    public ForLoopPractice(){
        for(integer i=0;i<10;i++){
            system.debug('Integer value '+i);
        }
    }
//        public static void Loop1(){
        for(integer i=0;i<10;i++){
            system.debug('Second loop Integer value '+i);
        }}
//        public void Loop2(){
        for(integer i=0;i<10;i++){
            system.debug('third loop Integer value '+i);
        }
    }   */
//@future
 global Database.QueryLocator start(Database.BatchableContext bc)
     {
     return Database.getQueryLocator('');
     }
     global void execute(Database.BatchableContext bc,List<RecordTest__c> scope)
     {
         List<RecordTest__c> l = new List<RecordTest__c>();
         for(integer i=0;i<15500;i++){
        RecordTest__c r = new RecordTest__c(name='test 2',rating__c=8);
        l.add(r);
        system.debug('Count :'+i);
    }
        Database.insert(l);
}
     global void finish(Database.BatchableContext bc){
         
     }
 

    }