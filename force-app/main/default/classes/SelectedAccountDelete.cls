public class SelectedAccountDelete {
    public String SearchVar{get;set;}
   public List<Account> Acc{get;set;}
    public  SelectedAccountDelete(){
        SearchVar='Acc1';
         Acc=[Select id,name,type from Account WHERE name=:SearchVar limit 10];
        }
    List<Account> Selected = new List<Account>();
  
  //  for(Account a : Acc){
        
    }
    
   // public class wrap1 {
    //    public String Name{get;set;}
    //    public String Type{get;set;}