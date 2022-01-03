/*  public class QueueableSchedulableApex implements Schedulable { // For Schedulable Apex (We can Schedule Apex classes)
  public void execute(SchedulableContext con)  {
     RecordTest__c r = new RecordTest__c();
      r.Name = 'Scheduled Record';
      r.Rating__c = 22 ;
      insert r;
  }  }  
*/ // Schedulable Apex class
// For Schedulable Apex (We can Schedule Apex classes)
public class QueueableSchedulableApex implements Queueable { // For Queueable Apex (We need to call class manually)
    public static void execute(QueueableContext AnyName){        //Queueable apex also tells which future method execute first
      RecordTest__c r = new RecordTest__c();                // Queueable interface makes entire class queueable so all the methods in the class get queue
      r.Name = 'Queueable Record';
      r.Rating__c = 44;
        insert r;   
        //*********ID JobID = system.enqueueJob(new QueueableSchedulableApex());********Ananymous code for execution
    }                                                             
}