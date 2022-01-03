global class BatchApex implements Database.Batchable<Sobject> {
/*   
  //******* This Batch apex is to delete all records hardcore delete from database. ************ 
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT id,Name FROM RecordTest__c';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<RecordTest__c> scope){
        system.debug('Execute log ');
        delete scope;
        Database.emptyRecycleBin(scope);
    }
    global void finish(Database.BatchableContext bc){
       /***Ananymous window code***   BatchApex b = new BatchApex();
                                      Id jobId = Database.executeBatch(b,3);   ********\   
      }
   */ 
     global final String Query;
     global final String Field;
     global final Integer Value;
    {
   //  global BatchApex(String q, String f, Integer v){
   //      Query = q; Field = f; Value = v;
     }
     global Database.QueryLocator start(Database.BatchableContext bc)
     {
     return Database.getQueryLocator('Select id from contact');
     }
     global void execute(Database.BatchableContext bc,List<RecordTest__c> scope)
     {
         try{
       //  for(RecordTest__c r : scope )  {
         //    r.put(Field,Value);
        // }
      //   update scope;
      system.debug('batch executed');
         for(integer i=1; i<=20;i++){
        Account a = new Account();
             system.debug('acc '+a);
        a.Name = 'test';
        insert a;
        }
     }
    catch(exception e){
        system.debug('e '+e);
    }}
     global void finish(Database.BatchableContext bc){
         
     }   /***Ananymous***   String q ='SELECT Rating__c from RecordTest__c';
                            String f = 'Rating__c';
                            Integer v = 555;
                             ID jobID = Database.executeBatch(new BatchApex(q,f,v));  ***************/
     
 
 }