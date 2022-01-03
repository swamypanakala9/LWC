trigger PS_Leading_Cometitor_Practice on Opportunity (before update) {
    
    List<String> Competitors = new List<String>();
    List<Decimal> Competitor_price = new List<Decimal>();
    for(opportunity opp : trigger.new){
        
        Competitors.add(opp.Competitor_1__c);
        Competitors.add(opp.Competitor_2__c);
        Competitors.add(opp.Competitor_3__c);
        
        Competitor_price.add(opp.Competitor_1_Price__c);
        Competitor_price.add(opp.Competitor_2_Price__c);
        Competitor_price.add(opp.Competitor_3_Price__c);
        Decimal LowPrice;
        Integer Position;
   
        for(integer i=0;i<Competitor_price.size();i++){
            
            Decimal CompetitorPrice = Competitor_price.get(i);
            if(LowPrice==null || (CompetitorPrice < LowPrice) ){
                LowPrice = CompetitorPrice;
                Position = i;                               
            }
            
        }
        opp.Leading_Competitor__c=Competitors.get(Position); // Competitor name
        
            system.debug('Lowest price '+LowPrice);
            system.debug('Position '+Position);
            system.debug('Competitor '+opp.Leading_Competitor__c);
            
    }

}