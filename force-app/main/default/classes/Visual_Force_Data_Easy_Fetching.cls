public class Visual_Force_Data_Easy_Fetching {
    List<Tollywood__C> Tollywood =[SELECT name,hero_name__c,rating__c from Tollywood__c];// In this we are Fetching data and store it in Tollywood
    List<Tollywood__C> Tollywood2 =[SELECT name,hero_name__c,rating__c from Tollywood__c where hero_name__c='chiru'];
    
   public List<Tollywood__c> getTollywood(){  //***** In visual page we should call method name as a action.****//
        return Tollywood;                     //** We can't take variable data directly so we are defining methods to take varible values 
    }                                         //** Methode name can be anything but return should be variable name
     public List<Tollywood__c> getTollywood5(){
        return Tollywood2;
    }

}