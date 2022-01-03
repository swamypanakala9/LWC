trigger SCENARIO1 on Account (after insert) { // Whenever New Account record will create same name record will create in Bollywood.
list<Bollywood__c> c=new list<Bollywood__c>();
    for(Account a:trigger.new)
    {
        Bollywood__c b=new Bollywood__c();
        b.Name=a.Name;
        b.Budget__c=200; // here Budget filed mandatory so i added this value otherwise will give error.
        c.add(b);
       
    }
    insert c;
}