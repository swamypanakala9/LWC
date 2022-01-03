global class MainObject_BatchClass implements database.Batchable<sobject> {

    global database.QueryLocator start(database.BatchableContext bc){
      string query = 'select name,Long_Test__c from Main_Object__c where name like \'%M3%\'' ;//and createdby.profile.name == \'System Administrator\' ';
       system.debug('query '+query);
        return database.getQueryLocator(query);       
    }
     
    global void execute(database.BatchableContext bc, list<Main_Object__c> scope){
       List<Main_Object__c> ListMainObj =new List<Main_Object__c>();
        for(Main_Object__c obj : scope){
            obj.Long_Test__c ='L888';
            system.debug('test');
            //obj.Name = 'LLL4';
            ListMainObj.add(obj);}
           // system.debug(obj);
             system.debug('batch executed');
         for(integer i=1; i<=20;i++){
        Account a = new Account();
             system.debug('acc '+a+' '+i);
        a.Name = 'test'+i;
        insert a;          
        }
        update ListMainObj;
        
    }
    global void finish(database.BatchableContext bc){
        
    }
}