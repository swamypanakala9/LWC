public class VFPracticeStandardController {
    String Text='Welcome practice session';
        public String getText(){
            return Text ;}
      List<Tollywood__c> a ;
      public List<Tollywood__c> getAccount(){
          return a;}
          public PageReference FewRecords(){
              a = [select Name,Rating__c,Budget__c from Tollywood__c where Budget__c!= null order by rating__c limit 10];
              return null;}
          public PageReference AllRecords(){
              a = [select Name,Rating__c,Budget__c from Tollywood__c limit 10]; 
                return null;}
  }