public class ReturnValues {
    public static void Test1(){
        Set<String> names1 = new Set<String>();
        Set<String> names2 = new Set<String>();
        c1 acc = new c1 ();
        List<Account> Acc1 = acc.ReturnAcc(2,'test');
        system.debug('Acc1 '+Acc1);
        List<Account> Acc2 = acc.ReturnAcc(4,'test1');
        system.debug('Acc2 '+Acc2);
        for(account accs:[select name from account])
        {
            if(!names1.contains(accs.name)){
                names1.add(accs.Name);
            }
            else{
                if(!names2.contains(accs.name))
              names2.add(accs.Name);  
            }
            system.debug('names1 '+names1);
            system.debug('names2 '+names2);
                
        }        
          system.debug('final names1 '+names1);
            system.debug('final names2 '+names2);
    }
    
    public class c1{
        public  List<Account> ReturnAcc(Integer num,string str){
            datetime dt = datetime.now();
            return [select name from account where name =:str and createddate > :dt limit : num];
        }
        
        
    }
    
}