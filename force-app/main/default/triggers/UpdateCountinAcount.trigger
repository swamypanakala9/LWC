trigger UpdateCountinAcount on Contact (after insert) {
    
    List<Contact> ListContacts = new List<Contact>();
    for(Contact con : Trigger.new){
        
    }
}