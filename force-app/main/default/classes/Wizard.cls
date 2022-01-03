public class Wizard {
    
    Account a=new Account();
    Contact c=new Contact();
    Opportunity o=new opportunity();
    public Account geta(){
        return a;}
    public Contact getc(){
        return c;}
    public Opportunity geto(){
        return o;
    }
    
    public PageReference Account_Page(){
        return Page.W1_Account;
    }
     public PageReference Contact_Page(){
        return Page.W2_Contact;
    }
     public PageReference Opportunity_Page(){
        return Page.W3_Opportunity;
    }
     public PageReference Review_Save_Page(){
        
       return page.W4_Review_Save;
    }
     public PageReference InsertRecords(){
         insert a;
         insert c;
         insert o;
       return null;
    }
}