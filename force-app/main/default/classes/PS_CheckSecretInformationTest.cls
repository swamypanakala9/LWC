@isTest
public class PS_CheckSecretInformationTest {
    @isTest static void SecurityInfoTest(){
        Case c = new Case();
        c.Subject='Help!!!';
        c.Description='My bodywight is 60kg';
        insert c;
        System.debug('Case' + c.Id + 'created with description');
        
    }
}