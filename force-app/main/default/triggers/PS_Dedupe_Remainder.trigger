trigger PS_Dedupe_Remainder on Account (After insert) {
    for(Account acc : Trigger.new ){
        case c = new case();
        c.Subject   = 'Dedupe this account';
        c.OwnerId   = acc.OwnerId;
        c.AccountId = acc.Id;
        insert c;
        
    }


}