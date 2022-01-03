@isTest 
public class PS_Leading_CompetitorTest2 {
    @isTest
    public static void LeadCompetitor(){
        Opportunity opp = new Opportunity();
        opp.Name = 'test1';
        opp.CloseDate=date.today();
        opp.StageName='Prospecting';
        insert opp;
        opp.StageName='close won';
        update opp;
        
    }

}