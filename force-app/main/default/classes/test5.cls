public class test5 {
    public static string s ;
    public List<SelectOption> Options {set;get;}
    public String Selected {set;get;}
    public static string p;
    public List<test> l {get;set;}
    public List<Account> lDelAcc {get;set;}
    public test5(){
        Selected = 'test string';
        Options = new List<SelectOption>();
        SelectOption so1 = new SelectOption('None','-none-');
        Options.add(so1);
         List<String> Ls = new List<String>{'A','B','C'};
            for(String s : Ls){
                SelectOption So = new SelectOption('s','s');
                Options.add(So);
                Options.add(new SelectOption('Z','z'));
            }
        lDelAcc = new List<Account>();
       l = new List<test>();
    List<Account> lAcc = [SELECT NAME,PHONE FROM ACCOUNT];
        for(Account a : lAcc){
          test t = new test();
            t.Acc = a;
            t.flag =false;
            l.add(t);
        }
        system.debug('lAcc '+lAcc);
        system.debug('l  '+l);
}
    public void DeleteRec(){
        for(test t : l){
            if(t.flag == true){
                lDelAcc.add(t.acc);}
        } 
        delete lDelAcc;
    }
    public pageReference DummyAction()
    { 
        return null;
            }
            public pageReference DummyActionCall()
    { 
    Selected = 'abcd';
        return null;
            }
}