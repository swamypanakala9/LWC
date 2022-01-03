@isTest 
public class PS_CheckSecretInformationTest2 {
    @isTest
    Public static void Testmethod1(){
        Case c = new Case();
        c.Origin='Phone';
        c.Status='Closed';
        c.Description = 'testing desc Credit Card SSN';
        insert c;
        c.Origin='Web';
        update c;
    }

}