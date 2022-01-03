trigger TriggerToUpdateContactFieldWhenAccountUpdated on Account (after update) {
    List<contact> ContToBeUpdate = new List<Contact>();
    for(Account acc : Trigger.new)
    {
        
        List<Contact> clist = [Select id from Contact where AccountId = : acc.Id limit 1];
        for(contact c : clist){
    //  if(c != null){
        c.Birthdate=Date.today().addDays(6);
        ContToBeUpdate.add(c);
        c.LastName ='test44455';
            update ContToBeUpdate;
      // database.update(ContToBeUpdate);
     // }
    }
    }}