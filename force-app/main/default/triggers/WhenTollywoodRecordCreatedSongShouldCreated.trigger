trigger WhenTollywoodRecordCreatedSongShouldCreated on Tollywood__c (before insert) {
    
    for(Tollywood__c t : Trigger.new){
        Song__c s = new Song__c();
        s.Name='Auto Song2';
        s.Tollywood_Industry__c= 'a0G2v00002ZY31p';
        insert s;
    }

}