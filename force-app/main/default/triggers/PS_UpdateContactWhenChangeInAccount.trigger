trigger PS_UpdateContactWhenChangeInAccount on Account (before update) {
    
    for(Account a:Trigger.new){
        system.debug('contact 1 ');
        List<contact> c = [SELECT id,	AccountId from Contact where AccountId =: a.Id ];// where 	Name =: a.Name
        for(Contact con : c){
             system.debug('1 '+con);
            con.Phone='999';
            con.HomePhone='666999';
            
            system.debug('2 '+con);
            }
        update c;
        system.debug('contact 2 ');
    }
}