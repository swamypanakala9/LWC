public class UpdateMainObjectRecords {
    
    public static void UpdateMain(){
        integer i=1; 
        List<Child_Object__c> m = [Select id from Child_Object__c];
        for(Child_Object__c c : m){
           c.name = 'C56 '+i;
            i++;            
        }
        update m;
   }
}