public class DMLOperations {
   // @future
        public static void InsertRecords(){
          List<RecordTest__c> ListofRec = new List<RecordTest__c>();
        for(integer i=1;i<99;i++){
              RecordTest__c r = new RecordTest__c();
             r.Name      = 'ABCD'+i;
         //    r.Rating__c = 9 ;
            ListofRec.add(r);
             system.debug('log on batchoperation');
        }
            system.debug('log on batchoperation before insert');
      insert ListofRec;
            system.debug('log on batchoperation after insert');
     }
  // Insert Multiple records into database
    public static void DeleteRecords(){
       List<RecordTest__c> AllRecords = new List<RecordTest__c>();
        AllRecords = [SELECT Name from RecordTest__c ];
        system.debug('Records are '+AllRecords.size());
       // delete AllRecords;
       //  database.delete(AllRecords);
    //  database.delete(AllRecords,true);  // Error will through same as delete operation
     database.delete(AllRecords,false); // Error will not throgh
    } 
    // Delete records, whenever we fetch the Name from data base id also will come automatically thats wye we able to delete the fetched records
 /*   public static void UpdateRecords(){
         try{
             List<RecordTest__c> AllRecords = [SELECT Name from RecordTest__c where Name like '%DML%' ];
             system.debug('1 st AllRecords[3] ' + AllRecords[3]);
             List<RecordTest__c> AllRec = new List<RecordTest__c>();
     //        system.debug('1 st AllRec[3]' + AllRec[3]);
        for(RecordTest__c r : AllRecords){
            r.Rating__c = 577 ;
            AllRec.add(r);
        }
      system.debug('2 nd AllRec[3]' + AllRec[3]);
             system.debug('2 nd  AllRecords[3] ' + AllRecords[3]);
          update AllRec;
        } 
        catch(exception e){
          system.debug('Error is ' + e.getMessage());  
        }
     //   finally{
     //      system.debug('Error is final'); 
     //   }
    }
   */ // Update fetched records by using List
/*    public static void UpsertRecords(){
        List<RecordTest__C> RecList = [SELECT Name from RecordTest__C];
        List<RecordTest__C> Rec = new List<RecordTest__C>();
          for(integer i=1;i<=3;i++){
            RecordTest__C r = new RecordTest__C();
            r.Name = 'Insert record 2';
            r.Rating__c = 55;
            Rec.add(r);
        }
        Database.insert(Rec);
      //  insert Rec;
     
    for(RecordTest__C l : RecList ){
        l.Rating__c =44;
        Rec.add(l);
    }
       // update Rec;
        Database.update(Rec);
        
    }
 */ // UpSert records with same object
  /*    public static void UndeleteRecords(){
        List<RecordTest__c> Rec1 = [SELECT Id, Name, IsDeleted FROM RecordTest__c where IsDeleted = true ALL ROWS];
       // undelete Rec1;
       System.debug('Undeleted Size '+ Rec1.size());
        database.undelete(Rec1);
}
 */ //Undelete       
    public static void DatabaseSave(){
        List<RecordTest__c> rList = new List<RecordTest__c>();
        RecordTest__c r1 = new RecordTest__c();
        r1.Name = 'Data4';
        r1.Rating__c = 11;
        rList.add(r1);
        RecordTest__c r2 = new RecordTest__c();
        r2.Name = 'Dat5';
      //  r2.Rating__c = 22;
        rList.add(r2);
        RecordTest__c r3 = new RecordTest__c();
        r3.Name = 'Data6';
        r3.Rating__c = 33;
        rList.add(r3);
      //  database.insert(rList,false);  // This is shortcut
       Database.SaveResult[] AllResults = Database.insert(rList , false); // AllResults will store List of total data
        for(Database.SaveResult Res : AllResults )   //By using for and if conditions we can fetch required results from List of data. These all steps are optional(to see the output results)
            if(Res.isSuccess()){
                system.debug('Records id and Names '+Res.getId()+'****** '+Res.id);
            }
        else
            system.debug('Errors are : '+ Res.getErrors()); 
    } 
    
    
}