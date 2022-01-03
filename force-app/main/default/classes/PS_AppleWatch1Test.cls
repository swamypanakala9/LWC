@isTest
public class PS_AppleWatch1Test {

    @isTest static void createOpportunity(){
        opportunity opp = new opportunity();
        opp.Name        = 'Swift Deal';
        opp.StageName   = 'Prospecting';
        opp.CloseDate   = Date.today();
        insert opp;
        
    }
}