trigger ImpPractice1 on Tollywood__c (after insert) {
   List<Song__C> songs = new List<Song__c>();
    for(Tollywood__C t : Trigger.new){
        for(integer i=0;i<t.Rating__c;i++){
        Song__c song = new Song__c();
        
          song.Name='Trigger Song '+i;
                  Songs.add(song);
          // insert Song;
            
       }
        if(!songs.isEmpty())
       insert Songs;
    }
 
}