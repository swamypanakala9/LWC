@isTest(SeeAllData=true)

public class Update_NameTest {
    @isTest 
    Public static void Methode1(){
        Main_Object__c m = new Main_Object__c();
        m.Name = 'tset';
        m.Parent_Object_ID__c = 'a0W2v00001B1pDOEAZ';
        m.Main_Object_Number__c = 441;
        insert m;
        m.Main_Object_Number__c = 44;
        m.Parent_Object_ID__c = 'a0W2v00001B1pDOEAZ';
        update m;
    }

}