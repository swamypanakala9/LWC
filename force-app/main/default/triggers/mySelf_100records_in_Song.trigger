trigger mySelf_100records_in_Song on Tollywood__c (before update) {
    List<Song__c> sList = new List<Song__c>();
    for(Tollywood__c t : trigger.new){
     /*   for(integer i=0;i<=11249;i++){ //mySelf_100records_in_Song: System.LimitException: Too many DML rows: 10001
        Song__c s = new Song__c();
        s.Name    = 'Dml_List '+i;
        s.Rating__c= 7;
            system.debug('record number : '+i);
            sList.add(s);
        } 
        insert sList;
      */
        
    /*    sList = [SELECT Id FROM Song__c ];
        Delete sList;  */
    }  

}