public class schedulableApexEx1 implements Schedulable {
 public void execute(SchedulableContext SC){
 Tollywood__c t = new Tollywood__c(Name='Schedulable');
 
 insert t;
 
 
 }
}