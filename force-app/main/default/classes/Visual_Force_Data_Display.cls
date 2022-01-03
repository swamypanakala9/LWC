public class Visual_Force_Data_Display {
    List<Tollywood__c> Tollywood =new List<Tollywood__c>(); //In this step we defining list of sObject as a Tollywood 
    public List<Tollywood__c> getTollywood(){  // In this we are defining method to call all values throgh Tollywood but there is no data right now
       return Tollywood;
        } 
    public PageReference Type1_Tollywood(){ // In this step we are defining the PageReference methode which can call like action from VF Page
        Tollywood = [SELECT name,rating__c,hero_name__c from Tollywood__c where hero_name__c='chiru' ]; // In this step only we are fetching the data from Database.
            return null;
    }
 public PageReference Type2_Tollywood(){
        Tollywood = [SELECT name,rating__c,hero_name__c from Tollywood__c where hero_name__c!=null ];
            return null;
    }
}