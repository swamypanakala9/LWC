public class InsertRecords {
    public static void insertRecord(){
    Child_Object__c c = new Child_Object__c();
    c.Main_Object_ID__c=[select id from Main_object__c limit 1].id;
    c.Name = 'c2';
    database.upsert(c,false);
    }
}