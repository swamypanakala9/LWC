public class FetchingDuplicateRecords {
    
    public static void Fetch(){
        List<Account> acc2 = [SELECT Id,name from Account];
        for(Account a:acc2){
        List<Account> acc = [SELECT Id,name from Account where name=:a.name];
        
        system.debug(acc);
            }
    }

}