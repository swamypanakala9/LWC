@isTest
public class IQVIA_Trig1_Test {
    @isTest
    public static void Test_Method(){
         Account a = new Account(Name='Swamy');
        insert a;
        Contact c = new Contact(LastName='Panakala',accountid=a.Id);
        insert c;
       
    }
    

}