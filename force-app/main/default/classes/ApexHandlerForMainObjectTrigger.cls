public class ApexHandlerForMainObjectTrigger {
    public static void CreateRecordWhenInsert(List<Main_Object__c> InsertedTriggerList){
        List<Child_Object__c> LChild = new List<Child_Object__c>();
        for(Main_Object__c m : InsertedTriggerList ){
            Child_Object__c c = new Child_Object__c();
            c.Name = 'Inserted '+m.Name+' Record';
            c.Main_Object_ID__c = m.Id;
            LChild.add(c);
        }insert LChild;
    }
    public static void CreateRecordWhenUpdate(Map<id,Main_Object__c> oldRecord,Map<id,Main_Object__c> newRecord){
        List<Child_Object__c> LChild = new List<Child_Object__c>();
        for(Main_Object__c m : newRecord.values()) {
            if(oldRecord.get(m.Id).Main_Object_Number__c != newRecord.get(m.Id).Main_Object_Number__c){
               Child_Object__c c = new Child_Object__c();
                system.debug('oldRecord.get(m.Id).Main_Object_Number__c'+oldRecord.get(m.Id).Main_Object_Number__c);
                system.debug('newRecord.get(m.Id).Main_Object_Number__c'+newRecord.get(m.Id).Main_Object_Number__c);
             c.Name = 'Updated '+m.Name+' Record';
            c.Main_Object_ID__c = m.Id;
            LChild.add(c);
        }
            }  insert LChild; 
        }
}