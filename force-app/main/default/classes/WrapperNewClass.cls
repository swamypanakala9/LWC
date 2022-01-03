public class WrapperNewClass {
    public String Text {get;set;}
    public String Name {get;set;}
    public Integer age {get;set;}  
    public List<Account> SelectedAccount {get;set;}
   public List<InnerClass> listIC {get;set;}
    public WrapperNewClass(){
        listIC = new List<InnerClass>();
       List<Account> AccList = [Select Id,Name,phone from Account ];
    for(Account a : AccList ){
        InnerClass IC = new InnerClass(a);
      // IC.Acc = a ;
      system.debug('a '+a);  
        listIC.add(IC);
        system.debug('listIC '+listIC);  }}
    
    public void DeleteSelRecords(){
         SelectedAccount = new List<Account>();
        for(InnerClass i : listIC ){
            if(i.Check == true){
              SelectedAccount.add(i.Acc);
            }
        }
        delete SelectedAccount;
    }
   public class InnerClass{
        public String Name {get;set;}
        public Integer age {get;set;}
        public Account Acc{get;set;}
        public boolean Check{get;set;}
        public InnerClass(Account a11111){
          Acc = a11111;
            Check = false;
        }}}