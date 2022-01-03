trigger TekSlate on Main_Object__c (before insert,before update) {
    //Scenario 1 : Duplicate Records shold not allowed
    List<String> L = new List<String>();
    for(Main_Object__c m1 : trigger.new){
        L.add(m1.Name);
    }
        List<Main_Object__c> ListM = [Select Name from Main_Object__c where Name IN : L];
    for(Main_Object__c m2 : trigger.new){
        if(ListM.size()>0){
            m2.Name.addError('Duplicate not allowed');
        }}
        
//Scenario 2 : Add Mr. Infront of Name Automatically.
// TekSlateClass t = new TekSlateClass();
  //  t.AddMr(trigger.new);
 //Scenario Own : Display No of Child Object records.
 
}