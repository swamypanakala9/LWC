public class List_Set_Map_Satish {
    public List_Set_Map_Satish(){
        List<Account> l = [Select name,phone,(select name from contacts) from account limit 3];
        system.debug('l '+l);
    }
    public static void Con(){
        List<Contact> c = [select name from contact limit 4];
        system.debug('c '+c);
    }
}