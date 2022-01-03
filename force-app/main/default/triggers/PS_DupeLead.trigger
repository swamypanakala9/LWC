trigger PS_DupeLead on Lead (before insert) {
    for(Lead myLeads : Trigger.new){
       System.debug( ' Contacts1'); 
        List<Contact> DupeContacts = [SELECT Id FROM Contact
                                               WHERE Email =:myLeads.Email];
        System.debug(DupeContacts.size()+ ' Contacts');
    }

}