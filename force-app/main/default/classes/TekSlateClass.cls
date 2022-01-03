public class TekSlateClass {
    public void AddMr(List<Main_Object__c> l){
        for(Main_Object__c m : l){
            m.Name = 'Mr/Ms.'+m.Name ;
            }
        
    }
}