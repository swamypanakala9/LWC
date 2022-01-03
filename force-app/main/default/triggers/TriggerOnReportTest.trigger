trigger TriggerOnReportTest on RecordTest__c (after update) {
//Trigger Example 1
//Suppose we received a business requirement that we need to create an Invoice Record when 
//Customer's 'Customer Status' field changes to Active from Inactive. For this, we will create
// a trigger on APEX_Customer__c object by following these steps −
    List<Song__c> AllSongs = new List<Song__c>();
/*    for(RecordTest__c r : trigger.new){
        
        if(r.Rating__c == 999){
            Song__c s = new Song__c();
            s.Name = 'RecordTest__c Trigger record 4 ';
            AllSongs.add(s);
        }  }
     insert AllSongs;
  */

//Trigger Example 2
//The above trigger will execute when there is an update operation on the Customer records.
// Suppose, the invoice record needs to be inserted only when the Customer Status changes from Inactive to Active
//  and not every time; for this, we can use another context variable trigger.oldMap which will store 
//  the key as record id and the value as old record values.
 
    for(RecordTest__c r : trigger.new){
        
        if(r.Rating__c == 999 && trigger.oldMap.get(r.Id).Rating__c != 999 ){
            Song__c s = new Song__c();
            s.Name = 'RecordTest__c Trigger record 6 ';
            s.Rating__c= trigger.oldMap.get(r.Id).Rating__c;
            AllSongs.add(s);
        }  }
     insert AllSongs;
    }