public class VFDmal_Class {
    public Account      acc {get;set;}
    public opportunity  opp {get;set;}
    public VFDmal_Class(){
        acc = new Account();
        opp = new Opportunity();
           
    }
    public PageReference insertRec(){
        insert acc;
        opp.AccountId=acc.id;
        insert opp;
        PageReference p = new PageReference('/'+acc.Id);
        return p;
        
    }

}