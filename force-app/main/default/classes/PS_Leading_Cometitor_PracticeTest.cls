@isTest
public class PS_Leading_Cometitor_PracticeTest {
    @isTest static void LeadingCompetitor(){
    Opportunity opp = new Opportunity();
        opp.Name='opp1';
        opp.CloseDate=date.today();
        opp.StageName='Prospecting';
        insert opp;
        opp.Name='Opp2';
        update opp;
        
    }
}