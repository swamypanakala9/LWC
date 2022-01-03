@isTest 
public class TriggerToUpdateContactTest {
    @isTest static void UpdateContactField(){
        
        contact acc = new contact();
        acc.LastName='Test112';
        
        insert acc;
       
    }
}