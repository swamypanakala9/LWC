//target is to Select the perticualr name of records and show it in Seperate table
public class VF_DataPractice {
    public List<Account> SelectedAccount{get;set;}
   public List<Account> AccList{get;set;}
    public VF_DataPractice(){
        AccList = [Select Name,id,phone from Account];
        SelectedAccount = new List<Account>(); // We have to define to avod null point
                                               //Otherwise all list added to null
    }
    public void Selected(){
         SelectedAccount = new List<Account>();
        for(Account a : AccList){
           // for(Account b : [Select name,id,phone from Account where name=:a.Name]){
                if(a.Name=='Acc1'){
          //  if(a.Name=='Acc1'){
     //   system.debug('name is '+a.name);
        SelectedAccount.add(a);   
            system.debug('name is AccList records '+AccList);
            system.debug('name is SelectedAccount '+SelectedAccount);
        //    }
        
                }}
            }
}