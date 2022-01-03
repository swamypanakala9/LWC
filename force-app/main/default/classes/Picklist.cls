public class Picklist {

    public static void m1(){
        Picklist__c p = [select Value__c from Picklist__c order by LastModifiedDate desc limit 1];
        Picklist__c p1=new Picklist__c();
        string[] str=p.Value__c.split(' ');
        for(string s:str)
        {
            p1.Value__c=p1.Value__c+s;
        }
      //  p1.Value__c=p.Value__c.replace(':',',');
            insert p1;
    }
}