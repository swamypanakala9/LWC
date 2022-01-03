@isTest
public class MainObject_BatchClass_Test {
    @isTest
    public static void Testdata(){
        user uname = [select id from user where profile.name ='Event Manager' limit 1];
        Parent_Object__c Pobj = new Parent_Object__c();
        Pobj.name = 'P1';
        Pobj.OwnerId=uname.id;  
     //   Pobj.CreatedById=uname.Id;
        
        Insert Pobj;
        
        Main_Object__c obj = new Main_Object__c();
        obj.Name = 'M33';
        obj.Parent_Object_ID__c=Pobj.Id;
        obj.Main_Object_Number__c=1;
        obj.Long_Test__c='L11';
      //  obj.CreatedById=uname.id;
       
        insert obj;
        system.test.startTest();
        database.executeBatch(new MainObject_BatchClass());
        system.test.stopTest();
    }

}