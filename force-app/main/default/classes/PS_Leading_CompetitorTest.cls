@isTest
public class PS_Leading_CompetitorTest {
    @isTest static void LeadCompetitor(){
        // Create an Opportunity and Required fields
        Opportunity opp = new Opportunity();
        opp.Name='Tset methode';
        opp.CloseDate=Date.today();
        opp.StageName='Prospecting';
        // Set 3 competitor fields
        opp.Competitor_1__c='a1';
        opp.Competitor_1__c='a2';
        opp.Competitor_1__c='a3';
        // Set 3 competitor price fields
        opp.Competitor_1_Price__c=100;
        opp.Competitor_1_Price__c=200;
        opp.Competitor_1_Price__c=300;
        insert opp;
        
    } 
}