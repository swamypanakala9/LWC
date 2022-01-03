//Scenario: Display the Budget amount on VF page when we click the button
public class JeethSighn1 {
    Tollywood__c Budget;
    String msg='Hello Visual Force Page';
  //  List<Tollywood__c> Budget = [select Budget__c,name,hero_name__c from Tollywood__c where name='New Record'];//For more than one record
      public pageReference Val(){  //To call the method from VF page button action we should use pageReference
          //After clicking button/calling method only data should be fetch means below line will beexecute.
           Budget = [select Budget__c,name,hero_name__c from Tollywood__c where name='New Record'];
        return null;
    } 

    public String getmsg(){
        return msg;
    }
  //  public List<Tollywood__c> getBudget(){
     public Tollywood__c getBudget(){
        return Budget;
    } 
  
   }